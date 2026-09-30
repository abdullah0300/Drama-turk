import { createClient as createServerSupabase } from '@/lib/supabase/server';
import { catalogRepository as localCatalog } from '@/lib/repository/catalog-repository';
import {
  Drama,
  CatalogCollection,
  EpisodeGroup,
  VideoRecord,
  EditorialDraft
} from '@/types/catalog';
import { siteConfig } from '@/config/site';

export class SupabaseCatalogRepository {
  private static instance: SupabaseCatalogRepository;
  private isSupabaseConfigured = false;

  private constructor() {
    const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
    const key = process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
    this.isSupabaseConfigured = Boolean(url && key && !key.includes('placeholder'));
  }

  public static getInstance(): SupabaseCatalogRepository {
    if (!SupabaseCatalogRepository.instance) {
      SupabaseCatalogRepository.instance = new SupabaseCatalogRepository();
    }
    return SupabaseCatalogRepository.instance;
  }

  public async getAllDramas(): Promise<Drama[]> {
    if (!this.isSupabaseConfigured) {
      return localCatalog.getAllDramas();
    }

    try {
      const supabase = createServerSupabase();
      const { data, error } = await supabase
        .from('dramas')
        .select('*')
        .in('status', ['published', 'preview'])
        .order('is_pilot', { ascending: false })
        .order('display_name', { ascending: true });

      if (error || !data || (data as any[]).length === 0) {
        return localCatalog.getAllDramas();
      }

      return (data as any[]).map(d => ({
        id: d.source_id,
        name: d.display_name,
        source_names: [d.display_name],
        collection_ids: [],
        video_records: d.video_records_count,
        synopsis: d.short_overview || undefined,
        poster_url: d.poster_url || undefined,
        backdrop_url: d.backdrop_url || undefined,
        genres: d.genres || [],
        languages: d.languages || [],
        isPilot: d.is_pilot,
      }));
    } catch (e) {
      console.warn('[SupabaseCatalogRepository] Falling back to local catalog for getAllDramas:', e);
      return localCatalog.getAllDramas();
    }
  }

  public async getDrama(idOrSlug: string): Promise<Drama | undefined> {
    if (!this.isSupabaseConfigured) {
      return localCatalog.getDrama(idOrSlug);
    }

    try {
      const supabase = createServerSupabase();
      const { data, error } = await supabase
        .from('dramas')
        .select('*')
        .or(`source_id.eq.${idOrSlug},slug.eq.${idOrSlug}`)
        .single();

      if (error || !data) {
        return localCatalog.getDrama(idOrSlug);
      }

      const row = data as any;
      return {
        id: row.source_id,
        name: row.display_name,
        source_names: [row.display_name],
        collection_ids: [],
        video_records: row.video_records_count,
        synopsis: row.short_overview || undefined,
        poster_url: row.poster_url || undefined,
        backdrop_url: row.backdrop_url || undefined,
        genres: row.genres || [],
        languages: row.languages || [],
        isPilot: row.is_pilot,
      };
    } catch (e) {
      return localCatalog.getDrama(idOrSlug);
    }
  }

  public async getDramaCollections(dramaSourceId: string): Promise<CatalogCollection[]> {
    if (!this.isSupabaseConfigured) {
      return localCatalog.getDramaCollections(dramaSourceId);
    }

    try {
      const supabase = createServerSupabase();
      const { data: drama } = await supabase
        .from('dramas')
        .select('id')
        .eq('source_id', dramaSourceId)
        .single();

      if (!drama) return localCatalog.getDramaCollections(dramaSourceId);

      const { data: collections, error } = await supabase
        .from('collections')
        .select('*')
        .eq('drama_id', (drama as any).id)
        .order('sort_order', { ascending: true });

      if (error || !collections || (collections as any[]).length === 0) {
        return localCatalog.getDramaCollections(dramaSourceId);
      }

      return (collections as any[]).map(c => ({
        id: c.source_id,
        source_catalog_id: c.source_id.replace('collection-', ''),
        drama_id: dramaSourceId,
        source_heading: c.label,
        source_url: '',
        reported_seasons: c.reported_seasons || [],
        episode_group_ids: [],
        extra_video_ids: [],
        video_records: 0,
        languages: c.languages || [],
        version: c.collection_type as any,
      }));
    } catch (e) {
      return localCatalog.getDramaCollections(dramaSourceId);
    }
  }

  public async getCollectionEpisodeGroups(collectionSourceId: string): Promise<EpisodeGroup[]> {
    if (!this.isSupabaseConfigured) {
      return localCatalog.getCollectionEpisodeGroups(collectionSourceId);
    }

    try {
      const supabase = createServerSupabase();
      const { data: col } = await supabase
        .from('collections')
        .select('id, drama_id')
        .eq('source_id', collectionSourceId)
        .single();

      if (!col) return localCatalog.getCollectionEpisodeGroups(collectionSourceId);

      const { data: groups, error } = await supabase
        .from('episode_groups')
        .select('*')
        .eq('collection_id', (col as any).id)
        .order('order_key', { ascending: true });

      if (error || !groups || (groups as any[]).length === 0) {
        return localCatalog.getCollectionEpisodeGroups(collectionSourceId);
      }

      return (groups as any[]).map(g => ({
        id: g.source_id,
        collection_id: collectionSourceId,
        drama_id: siteConfig.pilotDramaId,
        display_label: g.label,
        episode_number: g.reported_episode_number,
        bolum: g.bolum,
        part: g.part,
        video_ids: [],
        numbering_basis: 'source_episode_number',
        reported_season: null,
      }));
    } catch (e) {
      return localCatalog.getCollectionEpisodeGroups(collectionSourceId);
    }
  }
}

export const supabaseCatalog = SupabaseCatalogRepository.getInstance();
