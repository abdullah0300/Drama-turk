import { selectEditorial, canonicalGroupId, hasReviewedIdentity } from '@/lib/seo/catalog-seo';
import { createClient, SupabaseClient } from '@supabase/supabase-js';
import { Database } from '@/types/database.types';
import { catalogRepository as localCatalog } from '@/lib/repository/catalog-repository';
import {
  Drama,
  CatalogCollection,
  EpisodeGroup,
  VideoRecord,
  compareCollections,
  isDramaPlayable,
  isReleasePublished,
  groupSeasons,
} from '@/types/catalog';
import { episodePath, episodeSlugs, seasonPath } from '@/lib/routes';

/** Published season ids, in natural season order, from an embedded collections(...) select. */
function publishedCollectionIds(cols: any[] | undefined): string[] {
  return (cols || [])
    .filter((c) => c.status === 'published')
    .map((c) => ({
      id: c.source_id as string,
      reported_seasons: c.reported_seasons || [],
      version: c.collection_type,
      source_heading: c.label || '',
    }))
    .sort((a, b) => compareCollections(a as any, b as any))
    .map((c) => c.id);
}

/** Distinct published seasons from an embedded collections(...) select. */
function publishedSeasonCount(cols: any[] | undefined): number {
  const keys = new Set(
    (cols || [])
      .filter((c) => c.status === 'published')
      .map((c) => (c.reported_seasons?.length ? c.reported_seasons.join('-') : `c:${c.source_id}`))
  );
  return keys.size;
}
import { siteConfig } from '@/config/site';

export class SupabaseCatalogRepository {
  private static instance: SupabaseCatalogRepository;
  private client: SupabaseClient<Database> | null = null;
  private isSupabaseConfigured = false;
  private collectionMetaCache = new Map<string, { id: any; dramaSourceId: string; dramaName?: string }>();

  private constructor() {
    this.getClient();
  }

  public static getInstance(): SupabaseCatalogRepository {
    if (!SupabaseCatalogRepository.instance) {
      SupabaseCatalogRepository.instance = new SupabaseCatalogRepository();
    }
    return SupabaseCatalogRepository.instance;
  }

  private getClient(): SupabaseClient<Database> | null {
    if (this.client) return this.client;
    const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
    const key = process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
    if (url && key && !key.includes('placeholder')) {
      this.client = createClient<Database>(url, key, {
        auth: {
          persistSession: false,
          autoRefreshToken: false,
        },
      });
      this.isSupabaseConfigured = true;
    }
    return this.client;
  }

  public isConfigured(): boolean {
    return Boolean(this.getClient());
  }

  public async getAllDramas(): Promise<Drama[]> {
    const supabase = this.getClient();
    if (!supabase) return this.isConfigured() ? [] : localCatalog.getAllDramas();

    try {
      const { data, error } = await supabase
        .from('dramas')
        .select('*, published_editorial(*), collections(source_id, status, reported_seasons, collection_type, label)')
        .in('status', ['published', 'preview'])
        .order('is_pilot', { ascending: false })
        .order('display_name', { ascending: true });

      if (error || !data || (data as any[]).length === 0) {
        return this.isConfigured() ? [] : localCatalog.getAllDramas();
      }

      return (data as any[]).map(d => ({
        id: d.source_id,
        status: d.status, updated_at: d.updated_at,
        name: selectEditorial(d.published_editorial)?.title || d.display_name,
        editorial: selectEditorial(d.published_editorial),
        source_names: d.source_id === 'mehmed-fetihler-sultani' ? [d.display_name, 'Sultan Muhammad Fateh', 'Sultan Muhammad Fatih'] : [d.display_name],
        collection_ids: publishedCollectionIds(d.collections),
        playable: publishedCollectionIds(d.collections).length > 0,
        season_count: publishedSeasonCount(d.collections),
        video_records: d.video_records_count,
        synopsis: selectEditorial(d.published_editorial)?.description || d.short_overview || undefined,
        poster_url: d.poster_url || undefined,
        backdrop_url: d.backdrop_url || undefined,
        genres: d.genres || [],
        languages: d.languages || [],
        isPilot: d.is_pilot,
      }));
    } catch (e) {
      console.warn('[SupabaseCatalogRepository] Falling back to local catalog for getAllDramas:', e);
      return this.isConfigured() ? [] : localCatalog.getAllDramas();
    }
  }

  public async getDrama(idOrSlug: string): Promise<Drama | undefined> {
    const supabase = this.getClient();
    if (!supabase) return this.isConfigured() ? undefined : localCatalog.getDrama(idOrSlug);

    try {
      const { data, error } = await supabase
        .from('dramas')
        .select('*, published_editorial(*), collections(source_id, status, reported_seasons, collection_type, label)')
        .or(`source_id.eq.${idOrSlug},slug.eq.${idOrSlug}`)
        .in('status', ['published', 'preview'])
        .single();

      if (error || !data) {
        return this.isConfigured() ? undefined : localCatalog.getDrama(idOrSlug);
      }

      const row = data as any;
      const editorial = selectEditorial(row.published_editorial);
      const displayName = editorial?.title || row.display_name;
      const synopsis = editorial?.description || row.short_overview || undefined;

      return {
        id: row.source_id,
        name: displayName,
        status: row.status, editorial, updated_at: editorial?.updated_at || row.updated_at,
        source_names: row.source_id === 'mehmed-fetihler-sultani' ? [row.display_name, 'Sultan Muhammad Fateh', 'Sultan Muhammad Fatih'] : [row.display_name],
        collection_ids: publishedCollectionIds(row.collections),
        playable: publishedCollectionIds(row.collections).length > 0,
        season_count: publishedSeasonCount(row.collections),
        video_records: row.video_records_count,
        synopsis,
        poster_url: row.poster_url || undefined,
        backdrop_url: row.backdrop_url || undefined,
        genres: row.genres || [],
        languages: row.languages || [],
        isPilot: row.is_pilot,
      };
    } catch (e) {
      return this.isConfigured() ? undefined : localCatalog.getDrama(idOrSlug);
    }
  }

  public async getHiddenDramaName(idOrSlug: string): Promise<string | undefined> {
    const supabase = this.getClient();
    if (!supabase) return undefined;
    const { data, error } = await supabase.from('dramas')
      .select('display_name').eq('status', 'hidden')
      .or(`source_id.eq.${idOrSlug},slug.eq.${idOrSlug}`).maybeSingle();
    return error ? undefined : (data as { display_name: string } | null)?.display_name;
  }

  public async getPilotDrama(): Promise<Drama | undefined> {
    const settings = await this.getSiteSettings();
    const pilotId = settings?.pilot_drama_source_id || siteConfig.pilotDramaId;
    return this.getDrama(pilotId);
  }

  public async getDramaCollections(dramaSourceId: string): Promise<CatalogCollection[]> {
    const supabase = this.getClient();
    if (!supabase) return this.isConfigured() ? [] : localCatalog.getDramaCollections(dramaSourceId);

    try {
      const { data: drama } = await supabase
        .from('dramas')
        .select('id')
        .eq('source_id', dramaSourceId)
        .single();

      if (!drama) return this.isConfigured() ? [] : localCatalog.getDramaCollections(dramaSourceId);

      const { data: collections, error } = await supabase
        .from('collections')
        .select('*, published_editorial(*), episode_groups(count), video_variants(count)')
        .eq('video_variants.publication_state', 'published')
        .eq('drama_id', (drama as any).id)
        .in('status', ['published', 'preview'])
        .order('sort_order', { ascending: true });

      if (error || !collections || (collections as any[]).length === 0) {
        return this.isConfigured() ? [] : localCatalog.getDramaCollections(dramaSourceId);
      }

      for (const c of collections as any[]) {
        this.collectionMetaCache.set(c.source_id, {
          id: c.id,
          dramaSourceId,
        });
      }

      return (collections as any[]).map(c => ({
        id: c.source_id,
        source_catalog_id: c.source_id.replace('collection-', ''),
        drama_id: dramaSourceId,
        source_heading: c.label,
        editorial: selectEditorial(c.published_editorial), updated_at: c.updated_at,
        source_url: '',
        reported_seasons: c.reported_seasons || [],
        episode_group_ids: new Array(c.episode_groups?.[0]?.count || 0).fill(''),
        extra_video_ids: [],
        video_records: c.video_variants?.[0]?.count || 0,
        languages: c.languages || [],
        version: c.collection_type as any,
        status: c.status,
        poster_url: c.poster_url || undefined,
      } as CatalogCollection)).sort(compareCollections);
    } catch (e) {
      return this.isConfigured() ? [] : localCatalog.getDramaCollections(dramaSourceId);
    }
  }

  public async getCollection(collectionSourceId: string): Promise<CatalogCollection | undefined> {
    const supabase = this.getClient();
    if (!supabase) return this.isConfigured() ? undefined : localCatalog.getCollection(collectionSourceId);

    try {
      const { data: col, error } = await supabase
        .from('collections')
        .select('*, published_editorial(*), dramas(source_id), episode_groups(count), video_variants(count)')
        .eq('video_variants.publication_state', 'published')
        .eq('source_id', collectionSourceId)
        .in('status', ['published', 'preview'])
        .single();

      if (error || !col) {
        return this.isConfigured() ? undefined : localCatalog.getCollection(collectionSourceId);
      }

      const row = col as any;
      const dramaSourceId = row.dramas?.source_id || siteConfig.pilotDramaId;

      return {
        id: row.source_id,
        source_catalog_id: row.source_id.replace('collection-', ''),
        drama_id: dramaSourceId,
        source_heading: row.label,
        editorial: selectEditorial(row.published_editorial), updated_at: row.updated_at,
        source_url: '',
        reported_seasons: row.reported_seasons || [],
        episode_group_ids: new Array(row.episode_groups?.[0]?.count || 0).fill(''),
        extra_video_ids: [],
        video_records: row.video_variants?.[0]?.count || 0,
        languages: row.languages || [],
        version: row.collection_type as any,
        status: row.status,
        poster_url: row.poster_url || undefined,
      };
    } catch (e) {
      return this.isConfigured() ? undefined : localCatalog.getCollection(collectionSourceId);
    }
  }

  public async getPilotCollection(): Promise<CatalogCollection | undefined> {
    const settings = await this.getSiteSettings();
    const pilotColId = settings?.pilot_collection_source_id || siteConfig.pilotCollectionId;
    return this.getCollection(pilotColId);
  }

  public isPilotCollection(collectionSourceId: string): boolean {
    return collectionSourceId === siteConfig.pilotCollectionId;
  }

  public async getCollectionEpisodeGroups(collectionSourceId: string): Promise<EpisodeGroup[]> {
    const supabase = this.getClient();
    if (!supabase) return this.isConfigured() ? [] : localCatalog.getCollectionEpisodeGroups(collectionSourceId);

    try {
      let col = this.collectionMetaCache.get(collectionSourceId);
      if (!col) {
        const { data } = await supabase
          .from('collections')
          .select('id, drama_id, dramas(source_id)')
          .eq('source_id', collectionSourceId)
          .single();

        if (data) {
          col = { id: (data as any).id, dramaSourceId: (data as any).dramas?.source_id || siteConfig.pilotDramaId };
          this.collectionMetaCache.set(collectionSourceId, col);
        }
      }

      if (!col) return this.isConfigured() ? [] : localCatalog.getCollectionEpisodeGroups(collectionSourceId);

      const dramaSourceId = col.dramaSourceId;

      const { data: groups, error } = await supabase
        .from('episode_groups')
        .select('*, published_editorial(*)')
        .eq('collection_id', (col as any).id)
        .in('status', ['published', 'preview'])
        .order('order_key', { ascending: true })
        .order('part', { ascending: true, nullsFirst: true })
        .order('source_id', { ascending: true });

      if (error || !groups || (groups as any[]).length === 0) {
        return this.isConfigured() ? [] : localCatalog.getCollectionEpisodeGroups(collectionSourceId);
      }

      return (groups as any[]).map(g => {
        const editorial = selectEditorial(g.published_editorial);
        return {
          id: g.source_id,
          collection_id: collectionSourceId,
          drama_id: dramaSourceId,
          display_label: editorial?.title || g.label,
          editorial, updated_at: editorial?.updated_at || g.updated_at,
          episode_number: g.reported_episode_number,
          bolum: g.bolum,
          part: g.part,
          video_ids: [],
          numbering_basis: 'source_episode_number',
          reported_season: null,
          status: g.status,
          still_url: g.still_url || undefined,
        };
      });
    } catch (e) {
      return this.isConfigured() ? [] : localCatalog.getCollectionEpisodeGroups(collectionSourceId);
    }
  }

  public async getEpisodeGroup(groupSourceId: string): Promise<EpisodeGroup | undefined> {
    const supabase = this.getClient();
    if (!supabase) return this.isConfigured() ? undefined : localCatalog.getEpisodeGroup(groupSourceId);

    try {
      const { data: group, error } = await supabase
        .from('episode_groups')
        .select('*, collections(source_id, drama_id, dramas(source_id)), published_editorial(*)')
        .eq('source_id', groupSourceId)
        .in('status', ['published', 'preview'])
        .single();

      if (error || !group) {
        return this.isConfigured() ? undefined : localCatalog.getEpisodeGroup(groupSourceId);
      }

      const row = group as any;
      const collectionSourceId = row.collections?.source_id || siteConfig.pilotCollectionId;
      const dramaSourceId = row.collections?.dramas?.source_id || siteConfig.pilotDramaId;
      const editorial = selectEditorial(row.published_editorial);

      return {
        id: row.source_id,
        collection_id: collectionSourceId,
        drama_id: dramaSourceId,
        display_label: editorial?.title || row.label,
        editorial, updated_at: editorial?.updated_at || row.updated_at,
        episode_number: row.reported_episode_number,
        bolum: row.bolum,
        part: row.part,
        video_ids: [],
        numbering_basis: 'source_episode_number',
        reported_season: null,
        status: row.status,
        still_url: row.still_url || undefined,
      };
    } catch (e) {
      return this.isConfigured() ? undefined : localCatalog.getEpisodeGroup(groupSourceId);
    }
  }

  public async getVideosForGroup(groupSourceId: string): Promise<VideoRecord[]> {
    const supabase = this.getClient();
    if (!supabase) return this.isConfigured() ? [] : localCatalog.getVideosForGroup(groupSourceId);

    try {
      const { data: group } = await supabase
        .from('episode_groups')
        .select('id, source_id, still_url, collections(source_id, dramas(source_id, display_name))')
        .eq('source_id', groupSourceId)
        .single();

      if (!group) return this.isConfigured() ? [] : localCatalog.getVideosForGroup(groupSourceId);

      const { data: variants, error } = await supabase
        .from('video_variants')
        .select('*, stream_sources(*)')
        .eq('group_id', (group as any).id)
        .eq('publication_state', 'published');

      if (error || !variants || (variants as any[]).length === 0) {
        return this.isConfigured() ? [] : localCatalog.getVideosForGroup(groupSourceId);
      }

      const grpRow = group as any;
      const dramaName = grpRow.collections?.dramas?.display_name || 'Drama';
      const dramaSourceId = grpRow.collections?.dramas?.source_id || siteConfig.pilotDramaId;
      const colSourceId = grpRow.collections?.source_id || siteConfig.pilotCollectionId;

      return (variants as any[]).map(v => {
        const activeStreams = (v.stream_sources || [])
          .filter((s: any) => s.is_active && ['reachable', 'browser_tested'].includes(s.verification_state))
          .sort((a: any, b: any) => (a.priority || 1) - (b.priority || 1));

        const streams = activeStreams.map((s: any) => s.delivery_url);
        const isVerified = activeStreams.some((s: any) => s.verification_state === 'browser_tested');

        return {
          id: v.source_id,
          record_id: v.source_id,
          drama: dramaName,
          drama_id: dramaSourceId,
          catalog_id: colSourceId.replace('collection-', ''),
          collection_id: colSourceId,
          episode_group_id: groupSourceId,
          content_type: (v.content_type || 'episode') as any,
          heading: v.display_label,
          title: `${dramaName} ${v.display_label}`,
          display_label: v.display_label,
          season: v.reported_season,
          episode: null,
          bolum: null,
          part: null,
          languages: v.languages || [],
          version: v.version || 'subtitled',
          upload_date: v.source_uploaded_at || undefined,
          duration: dramaSourceId === 'mehmed-fetihler-sultani' && v.duration_seconds > 0 ? `PT${v.duration_seconds}S` : undefined,
          stream_urls: streams,
          stream_present: streams.length > 0,
          thumbnail_urls: grpRow.still_url ? [grpRow.still_url] : v.thumbnail_url ? [v.thumbnail_url] : [],
          playback_verified: isVerified,
        };
      });
    } catch (e) {
      return this.isConfigured() ? [] : localCatalog.getVideosForGroup(groupSourceId);
    }
  }

  public async getCollectionVideos(collectionSourceId: string): Promise<VideoRecord[]> {
    const supabase = this.getClient();
    if (!supabase) {
      const groups = localCatalog.getCollectionEpisodeGroups(collectionSourceId);
      return this.isConfigured() ? [] : groups.flatMap(g => localCatalog.getVideosForGroup(g.id));
    }

    try {
      let col = this.collectionMetaCache.get(collectionSourceId);
      let dramaName = col?.dramaName || 'Drama';
      let dramaSourceId = col?.dramaSourceId || siteConfig.pilotDramaId;

      if (!col || !col.dramaName) {
        const { data: colData } = await supabase
          .from('collections')
          .select('id, source_id, dramas(source_id, display_name)')
          .eq('source_id', collectionSourceId)
          .single();

        if (colData) {
          dramaName = (colData as any).dramas?.display_name || 'Drama';
          dramaSourceId = (colData as any).dramas?.source_id || siteConfig.pilotDramaId;
          col = { id: (colData as any).id, dramaSourceId, dramaName };
          this.collectionMetaCache.set(collectionSourceId, col);
        }
      }

      if (!col) return [];

      const { data: variants, error } = await supabase
        .from('video_variants')
        .select('*, stream_sources(*), episode_groups(source_id, still_url)')
        .eq('collection_id', col.id)
        .eq('publication_state', 'published');

      if (error || !variants || (variants as any[]).length === 0) {
        const groups = localCatalog.getCollectionEpisodeGroups(collectionSourceId);
        return this.isConfigured() ? [] : groups.flatMap(g => localCatalog.getVideosForGroup(g.id));
      }

      return (variants as any[]).map(v => {
        const activeStreams = (v.stream_sources || [])
          .filter((s: any) => s.is_active && ['reachable', 'browser_tested'].includes(s.verification_state))
          .sort((a: any, b: any) => (a.priority || 1) - (b.priority || 1));

        const streams = activeStreams.map((s: any) => s.delivery_url);
        const isVerified = activeStreams.some((s: any) => s.verification_state === 'browser_tested');
        const groupSourceId = v.episode_groups?.source_id || null;

        return {
          id: v.source_id,
          record_id: v.source_id,
          drama: dramaName,
          drama_id: dramaSourceId,
          catalog_id: collectionSourceId.replace('collection-', ''),
          collection_id: collectionSourceId,
          episode_group_id: groupSourceId,
          content_type: (v.content_type || 'episode') as any,
          heading: v.display_label,
          title: `${dramaName} ${v.display_label}`,
          display_label: v.display_label,
          season: v.reported_season,
          episode: null,
          bolum: null,
          part: null,
          languages: v.languages || [],
          version: v.version || 'subtitled',
          upload_date: v.source_uploaded_at || undefined,
          duration: dramaSourceId === 'mehmed-fetihler-sultani' && v.duration_seconds > 0 ? `PT${v.duration_seconds}S` : undefined,
          stream_urls: streams,
          stream_present: streams.length > 0,
          thumbnail_urls: v.episode_groups?.still_url ? [v.episode_groups.still_url] : v.thumbnail_url ? [v.thumbnail_url] : [],
          playback_verified: isVerified,
        };
      });
    } catch (e) {
      const groups = localCatalog.getCollectionEpisodeGroups(collectionSourceId);
      return this.isConfigured() ? [] : groups.flatMap(g => localCatalog.getVideosForGroup(g.id));
    }
  }

  public async getAdjacentEpisodeGroups(
    collectionSourceId: string,
    currentGroupId: string
  ): Promise<{ prevGroup?: EpisodeGroup; nextGroup?: EpisodeGroup }> {
    const list = await this.getCollectionEpisodeGroups(collectionSourceId);
    const index = list.findIndex(g => g.id === currentGroupId);
    if (index === -1) return {};
    return {
      prevGroup: index > 0 ? list[index - 1] : undefined,
      nextGroup: index < list.length - 1 ? list[index + 1] : undefined,
    };
  }

  public async getLatestPlayableEpisodes(limit = 6): Promise<Array<{
    group: EpisodeGroup;
    video: VideoRecord;
    collection: CatalogCollection;
    drama: Drama;
  }>> {
    const pilotCol = await this.getPilotCollection();
    if (!pilotCol) return localCatalog.getLatestPlayableEpisodes(limit);

    const drama = await this.getDrama(pilotCol.drama_id);
    if (!drama) return localCatalog.getLatestPlayableEpisodes(limit);

    const groups = await this.getCollectionEpisodeGroups(pilotCol.id);
    const reversed = [...groups].reverse().slice(0, limit);

    const result: Array<{
      group: EpisodeGroup;
      video: VideoRecord;
      collection: CatalogCollection;
      drama: Drama;
    }> = [];

    for (const group of reversed) {
      const videos = await this.getVideosForGroup(group.id);
      if (videos.length > 0) {
        result.push({
          group,
          video: videos[0],
          collection: pilotCol,
          drama,
        });
      }
    }

    return result.length > 0 ? result : localCatalog.getLatestPlayableEpisodes(limit);
  }

  /**
   * One card per drama: the last episode of its newest season (subtitled preferred when a season
   * exists in both editions). Featured drama first, then the getAllDramas order.
   */
  public async getLatestEpisodePerDrama(customPriorityIds?: string[], limit?: number): Promise<Array<{
    group: EpisodeGroup;
    video: VideoRecord;
    collection: CatalogCollection;
    drama: Drama;
    href: string;
  }>> {
    let priorityIds = customPriorityIds;
    if (!priorityIds) {
      try {
        const settings = await this.getSiteSettings();
        priorityIds = (settings?.feature_flags as any)?.latest_episodes_priority_ids || [];
      } catch {
        priorityIds = [];
      }
    }

    const allPlayableDramas = (await this.getAllDramas()).filter(isDramaPlayable);
    let dramas = allPlayableDramas;

    if (priorityIds && priorityIds.length > 0) {
      const validPriorityIds = priorityIds.filter(Boolean);
      if (validPriorityIds.length > 0) {
        const prioritySet = new Set(validPriorityIds);
        const prioritized = validPriorityIds
          .map((id) => allPlayableDramas.find((d) => d.id === id))
          .filter((d): d is Drama => Boolean(d));
        const rest = allPlayableDramas.filter((d) => !prioritySet.has(d.id));
        dramas = [...prioritized, ...rest];
      }
    }

    const pick = async (drama: Drama) => {
      const cols = (await this.getDramaCollections(drama.id))
        .filter(isReleasePublished);
      if (cols.length === 0) return null;

      const newest = Math.max(...cols.map((c) => c.reported_seasons?.[0] ?? 0));
      const top = cols.filter((c) => (c.reported_seasons?.[0] ?? 0) === newest);
      const collection = top.find((c) => c.version !== 'dubbed') ?? top[0];

      const groups = await this.getCollectionEpisodeGroups(collection.id);
      const season = groupSeasons(cols).find((s) => s.editions.some((e) => e.id === collection.id))!;
      const slugs = episodeSlugs(groups);
      // Walk back from the last episode until one has a playable stream
      for (let i = groups.length - 1; i >= Math.max(0, groups.length - 3); i--) {
        const videos = await this.getVideosForGroup(groups[i].id);
        const video = videos.find((v) => v.stream_present);
        if (video) {
          const href = episodePath(seasonPath(drama.id, season, collection), slugs.get(groups[i].id)!);
          return { group: groups[i], video, collection, drama, href };
        }
      }
      return null;
    };
    if (limit !== undefined) {
      const requested = Math.max(0, Math.floor(limit));
      const result: Array<NonNullable<Awaited<ReturnType<typeof pick>>>> = [];
      for (let offset = 0; offset < dramas.length && result.length < requested; offset += requested) {
        const batch = await Promise.all(dramas.slice(offset, offset + requested).map(pick));
        result.push(...batch.filter((p): p is NonNullable<typeof p> => p !== null));
      }
      return result.slice(0, requested);
    }
    const picks = await Promise.all(dramas.map(pick));
    return picks.filter((p): p is NonNullable<typeof p> => p !== null);
  }

  /** Lightweight public inventory, paginated to avoid PostgREST's row limit. */
  public async getViewingChoices(): Promise<Array<{ dramaId: string; collectionId: string; groupId: string; languages: string[]; version: string }>> {
    const client = this.getClient();
    if (!client) return [];
    const rows: Array<{ dramaId: string; collectionId: string; groupId: string; languages: string[]; version: string }> = [];
    for (let offset = 0; ; offset += 1000) {
      const { data, error } = await client.from('video_variants')
        .select('id,languages,version,collections!inner(source_id,status,dramas!inner(source_id,status)),episode_groups!inner(source_id,status),stream_sources!inner(is_active,verification_state)')
        .eq('publication_state', 'published').eq('collections.status', 'published')
        .eq('collections.dramas.status', 'published').eq('episode_groups.status', 'published')
        .eq('episode_groups.content_type', 'episode')
        .eq('stream_sources.is_active', true).in('stream_sources.verification_state', ['reachable', 'browser_tested'])
        .order('id').range(offset, offset + 999);
      if (error) throw new Error(`Public viewing choices unavailable: ${error.message}`);
      for (const v of (data || []) as any[]) {
        // Preserve the same unresolved-identity and duplicate exclusions as episode pages.
        const groupId = v.episode_groups.source_id;
        if (!hasReviewedIdentity({ id: groupId }) || canonicalGroupId(groupId) !== groupId) continue;
        rows.push({ dramaId: v.collections.dramas.source_id, collectionId: v.collections.source_id, groupId, languages: v.languages || [], version: v.version });
      }
      if (!data || data.length < 1000) return rows;
    }
  }

  public async getSiteSettings(): Promise<any> {
    const supabase = this.getClient();
    if (!supabase) return null;
    try {
      const { data } = await supabase
        .from('public_site_settings')
        .select('*')
        .eq('id', 'current')
        .single();
      return data;
    } catch {
      return null;
    }
  }

  public async getReviewFindings(): Promise<any[]> {
    const supabase = this.getClient();
    if (!supabase) return localCatalog.getReviewQueue();
    try {
      const { data } = await supabase
        .from('review_findings')
        .select('*')
        .order('created_at', { ascending: false });
      return data || localCatalog.getReviewQueue();
    } catch {
      return localCatalog.getReviewQueue();
    }
  }

  public async search(params: {
    query?: string;
    language?: string;
    version?: string;
    genre?: string;
    sort?: 'az' | 'za' | 'records';
  }): Promise<Drama[]> {
    const all = await this.getAllDramas();
    let results = [...all];

    if (params.query && params.query.trim().length > 0) {
      const q = params.query.toLowerCase().trim();
      results = results.filter(d =>
        d.name.toLowerCase().includes(q) ||
        d.source_names.some(s => s.toLowerCase().includes(q)) ||
        d.synopsis?.toLowerCase().includes(q)
      );
    }

    if (params.language && params.language !== 'all') {
      results = results.filter(d => d.languages?.includes(params.language!));
    }

    if (params.genre && params.genre !== 'all') {
      results = results.filter(d => d.genres?.includes(params.genre!));
    }

    if (params.sort === 'az') {
      results.sort((a, b) => a.name.localeCompare(b.name));
    } else if (params.sort === 'za') {
      results.sort((a, b) => b.name.localeCompare(a.name));
    } else if (params.sort === 'records') {
      results.sort((a, b) => b.video_records - a.video_records);
    }

    return results;
  }
}

export const supabaseCatalog = SupabaseCatalogRepository.getInstance();
