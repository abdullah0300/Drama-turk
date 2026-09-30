import fs from 'fs';
import path from 'path';
import {
  Drama,
  CatalogCollection,
  EpisodeGroup,
  VideoRecord,
  OrganizationReviewRecord,
  DuplicateStreamGroup,
  CatalogSummary,
  PlaybackCheckLog,
  EditorialDraft
} from '@/types/catalog';
import { siteConfig } from '@/config/site';

interface RawCatalogFile {
  schema_version: number;
  dramas: Array<{
    id: string;
    name: string;
    source_names: string[];
    collection_ids: string[];
    video_records: number;
  }>;
  collections: CatalogCollection[];
  episode_groups: EpisodeGroup[];
}

// In-memory singleton store for high performance server-side reads
class CatalogRepository {
  private static instance: CatalogRepository;
  private initialized = false;

  private dramasMap: Map<string, Drama> = new Map();
  private collectionsMap: Map<string, CatalogCollection> = new Map();
  private collectionsByDrama: Map<string, CatalogCollection[]> = new Map();
  private episodeGroupsMap: Map<string, EpisodeGroup> = new Map();
  private episodeGroupsByCollection: Map<string, EpisodeGroup[]> = new Map();
  private videosMap: Map<string, VideoRecord> = new Map();
  private videosByGroup: Map<string, VideoRecord[]> = new Map();
  private reviewQueue: OrganizationReviewRecord[] = [];
  private duplicateStreams: DuplicateStreamGroup[] = [];
  private summary: CatalogSummary | null = null;
  private playbackChecks: PlaybackCheckLog[] = [];
  private editorialDrafts: Map<string, EditorialDraft> = new Map();

  private constructor() {}

  public static getInstance(): CatalogRepository {
    if (!CatalogRepository.instance) {
      CatalogRepository.instance = new CatalogRepository();
    }
    return CatalogRepository.instance;
  }

  public ensureLoaded(): void {
    if (this.initialized) return;

    try {
      const catalogDir = path.join(process.cwd(), 'catalog_data');
      const catalogPath = path.join(catalogDir, 'catalog.json');
      const videosPath = path.join(catalogDir, 'videos.json');
      const reviewPath = path.join(catalogDir, 'organization_review_results.json');
      const duplicatePath = path.join(catalogDir, 'duplicate_streams.json');
      const summaryPath = path.join(catalogDir, 'summary.json');

      if (!fs.existsSync(catalogPath) || !fs.existsSync(videosPath)) {
        console.warn(`[CatalogRepository] Catalog files not found in ${catalogDir}. Will use empty or fallback dataset.`);
        this.initialized = true;
        return;
      }

      // 1. Read catalog.json
      const rawCatalog = JSON.parse(fs.readFileSync(catalogPath, 'utf8')) as RawCatalogFile;
      
      // 2. Read videos.json
      const rawVideos = JSON.parse(fs.readFileSync(videosPath, 'utf8')) as VideoRecord[];

      // Index videos first
      const dramaArtwork: Record<string, string> = {};
      const dramaGenres: Record<string, Set<string>> = {};
      const dramaLanguages: Record<string, Set<string>> = {};
      const collectionLanguages: Record<string, Set<string>> = {};

      for (const video of rawVideos) {
        this.videosMap.set(video.id, video);

        // Map video to episode group
        const groupId = video.episode_group_id;
        if (groupId) {
          if (!this.videosByGroup.has(groupId)) {
            this.videosByGroup.set(groupId, []);
          }
          this.videosByGroup.get(groupId)!.push(video);
        }

        // Cache first valid thumbnail per drama
        if (!dramaArtwork[video.drama_id] && video.thumbnail_urls && video.thumbnail_urls.length > 0) {
          dramaArtwork[video.drama_id] = video.thumbnail_urls[0];
        }

        // Languages
        if (!dramaLanguages[video.drama_id]) {
          dramaLanguages[video.drama_id] = new Set();
        }
        if (video.languages) {
          video.languages.forEach(l => dramaLanguages[video.drama_id].add(l));
        }

        // Collection languages
        if (video.collection_id) {
          if (!collectionLanguages[video.collection_id]) {
            collectionLanguages[video.collection_id] = new Set();
          }
          if (video.languages) {
            video.languages.forEach(l => collectionLanguages[video.collection_id].add(l));
          }
        }
      }

      // Default genre heuristic based on authentic drama subjects (historical, action, drama, biography)
      const historicalDramas = new Set([
        'mehmed-fetihler-sultani',
        'ertugrul-ghazi',
        'kurulus-osman',
        'kurulus-orhan',
        'alparslan-buyuk-selcuklu',
        'barbaroslar',
        'destan',
        'sultan-abdulhamid',
        'salahuddin-ayyubi',
        'mevlana-celaleddin-rumi',
        'yunus-emre',
        'mendirman-jaloliddin',
        'kosem-sultan',
        'al-hashashin'
      ]);

      // 3. Index collections
      for (const col of rawCatalog.collections) {
        const colLangs = Array.from(collectionLanguages[col.id] || []);
        const enrichedCol: CatalogCollection = {
          ...col,
          languages: colLangs.length > 0 ? colLangs : (col.source_heading.toLowerCase().includes('urdu') ? ['Urdu'] : []),
          version: col.source_heading.toLowerCase().includes('dubbed') 
            ? 'dubbed' 
            : col.source_heading.toLowerCase().includes('subtitle') 
              ? 'subtitled' 
              : 'unresolved'
        };

        this.collectionsMap.set(col.id, enrichedCol);

        if (!this.collectionsByDrama.has(col.drama_id)) {
          this.collectionsByDrama.set(col.drama_id, []);
        }
        this.collectionsByDrama.get(col.drama_id)!.push(enrichedCol);
      }

      // 4. Index episode groups
      for (const eg of rawCatalog.episode_groups) {
        this.episodeGroupsMap.set(eg.id, eg);

        if (!this.episodeGroupsByCollection.has(eg.collection_id)) {
          this.episodeGroupsByCollection.set(eg.collection_id, []);
        }
        this.episodeGroupsByCollection.get(eg.collection_id)!.push(eg);
      }

      // 5. Index Dramas with artwork and synopsis
      for (const d of rawCatalog.dramas) {
        const isPilot = d.id === siteConfig.pilotDramaId;
        const genres = ['Drama'];
        if (historicalDramas.has(d.id)) {
          genres.push('Historical', 'Action');
        } else if (d.id === 'teskilat' || d.id === 'soz' || d.id === 'al-sancak') {
          genres.push('Action', 'Military');
        } else if (d.id === 'the-pit-cukur' || d.id === 'halka') {
          genres.push('Crime', 'Action');
        }

        const langs = Array.from(dramaLanguages[d.id] || ['Urdu']);

        const enrichedDrama: Drama = {
          ...d,
          poster_url: dramaArtwork[d.id] || undefined,
          backdrop_url: dramaArtwork[d.id] || undefined,
          genres,
          languages: langs,
          isPilot,
          synopsis: isPilot 
            ? 'A dramatic historical chronicle capturing the life, intellect, military stratagems, and rise of Sultan Mehmed II towards the conquest of Constantinople.'
            : `Preserved catalog records for ${d.name}, containing ${d.video_records} video entries across ${d.collection_ids.length} collections.`
        };

        this.dramasMap.set(d.id, enrichedDrama);
      }

      // 6. Index Reviews & Duplicates
      if (fs.existsSync(reviewPath)) {
        this.reviewQueue = JSON.parse(fs.readFileSync(reviewPath, 'utf8'));
      }
      if (fs.existsSync(duplicatePath)) {
        this.duplicateStreams = JSON.parse(fs.readFileSync(duplicatePath, 'utf8'));
      }
      if (fs.existsSync(summaryPath)) {
        this.summary = JSON.parse(fs.readFileSync(summaryPath, 'utf8'));
      }

      this.initialized = true;
      console.log(`[CatalogRepository] Successfully indexed ${this.dramasMap.size} dramas, ${this.collectionsMap.size} collections, ${this.episodeGroupsMap.size} episode groups, and ${this.videosMap.size} videos.`);
    } catch (err) {
      console.error('[CatalogRepository] Error indexing catalog:', err);
      this.initialized = true;
    }
  }

  // Drama queries
  public getAllDramas(): Drama[] {
    this.ensureLoaded();
    const all = Array.from(this.dramasMap.values());
    // Sort pilot drama first, then alphabetical
    return all.sort((a, b) => {
      if (a.isPilot && !b.isPilot) return -1;
      if (!a.isPilot && b.isPilot) return 1;
      return a.name.localeCompare(b.name);
    });
  }

  public getDrama(id: string): Drama | undefined {
    this.ensureLoaded();
    return this.dramasMap.get(id);
  }

  public getPilotDrama(): Drama | undefined {
    this.ensureLoaded();
    return this.dramasMap.get(siteConfig.pilotDramaId);
  }

  // Collection queries
  public getCollection(id: string): CatalogCollection | undefined {
    this.ensureLoaded();
    return this.collectionsMap.get(id);
  }

  public getDramaCollections(dramaId: string): CatalogCollection[] {
    this.ensureLoaded();
    return this.collectionsByDrama.get(dramaId) || [];
  }

  public getPilotCollection(): CatalogCollection | undefined {
    this.ensureLoaded();
    return this.collectionsMap.get(siteConfig.pilotCollectionId);
  }

  public isPilotCollection(collectionId: string): boolean {
    return collectionId === siteConfig.pilotCollectionId;
  }

  // Episode Group queries
  public getEpisodeGroup(id: string): EpisodeGroup | undefined {
    this.ensureLoaded();
    return this.episodeGroupsMap.get(id);
  }

  public getCollectionEpisodeGroups(collectionId: string): EpisodeGroup[] {
    this.ensureLoaded();
    const groups = this.episodeGroupsByCollection.get(collectionId) || [];
    // Sort by episode number or bolum
    return [...groups].sort((a, b) => {
      const aNum = a.episode_number ?? a.bolum ?? 9999;
      const bNum = b.episode_number ?? b.bolum ?? 9999;
      return aNum - bNum;
    });
  }

  public getAdjacentEpisodeGroups(collectionId: string, currentGroupId: string): {
    prevGroup?: EpisodeGroup;
    nextGroup?: EpisodeGroup;
  } {
    const list = this.getCollectionEpisodeGroups(collectionId);
    const index = list.findIndex(g => g.id === currentGroupId);
    if (index === -1) return {};
    return {
      prevGroup: index > 0 ? list[index - 1] : undefined,
      nextGroup: index < list.length - 1 ? list[index + 1] : undefined,
    };
  }

  // Video queries
  public getVideo(id: string): VideoRecord | undefined {
    this.ensureLoaded();
    return this.videosMap.get(id);
  }

  public getVideosForGroup(groupId: string): VideoRecord[] {
    this.ensureLoaded();
    return this.videosByGroup.get(groupId) || [];
  }

  // Latest playable episodes (for home screen)
  public getLatestPlayableEpisodes(limit = 6): Array<{
    group: EpisodeGroup;
    video: VideoRecord;
    collection: CatalogCollection;
    drama: Drama;
  }> {
    this.ensureLoaded();
    const pilotCol = this.getPilotCollection();
    if (!pilotCol) return [];

    const drama = this.getDrama(pilotCol.drama_id);
    if (!drama) return [];

    const groups = this.getCollectionEpisodeGroups(pilotCol.id);
    // Reverse to show latest
    const reversed = [...groups].reverse().slice(0, limit);

    const result: Array<{
      group: EpisodeGroup;
      video: VideoRecord;
      collection: CatalogCollection;
      drama: Drama;
    }> = [];

    for (const group of reversed) {
      const videos = this.getVideosForGroup(group.id);
      if (videos.length > 0) {
        result.push({
          group,
          video: videos[0],
          collection: pilotCol,
          drama,
        });
      }
    }

    return result;
  }

  // Search
  public search(params: {
    query?: string;
    language?: string;
    version?: string;
    genre?: string;
    sort?: 'az' | 'za' | 'records';
  }): Drama[] {
    this.ensureLoaded();
    let results = Array.from(this.dramasMap.values());

    // Normalize helper
    const norm = (str: string) => str.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, '');

    if (params.query && params.query.trim().length > 0) {
      const q = norm(params.query.trim());
      results = results.filter(drama => {
        if (norm(drama.name).includes(q)) return true;
        if (drama.source_names.some(sn => norm(sn).includes(q))) return true;
        if (drama.id.includes(q)) return true;
        return false;
      });
    }

    if (params.language && params.language !== 'all') {
      results = results.filter(d => d.languages?.includes(params.language!));
    }

    if (params.genre && params.genre !== 'all') {
      results = results.filter(d => d.genres?.includes(params.genre!));
    }

    // Sort
    if (params.sort === 'az') {
      results.sort((a, b) => a.name.localeCompare(b.name));
    } else if (params.sort === 'za') {
      results.sort((a, b) => b.name.localeCompare(a.name));
    } else if (params.sort === 'records') {
      results.sort((a, b) => b.video_records - a.video_records);
    } else {
      // Default: pilot first, then alphabetical
      results.sort((a, b) => {
        if (a.isPilot && !b.isPilot) return -1;
        if (!a.isPilot && b.isPilot) return 1;
        return a.name.localeCompare(b.name);
      });
    }

    return results;
  }

  // Admin & Diagnostics
  public getSummary(): CatalogSummary | null {
    this.ensureLoaded();
    return this.summary;
  }

  public getReviewQueue(): OrganizationReviewRecord[] {
    this.ensureLoaded();
    return this.reviewQueue;
  }

  public getDuplicateStreams(): DuplicateStreamGroup[] {
    this.ensureLoaded();
    return this.duplicateStreams;
  }

  public recordPlaybackCheck(check: PlaybackCheckLog): void {
    this.playbackChecks.unshift(check);
    if (this.playbackChecks.length > 100) {
      this.playbackChecks.pop();
    }
  }

  public getPlaybackChecks(): PlaybackCheckLog[] {
    return this.playbackChecks;
  }

  // Editorial drafts
  public saveEditorialDraft(draft: EditorialDraft): void {
    this.editorialDrafts.set(draft.id, draft);
  }

  public getEditorialDraft(id: string): EditorialDraft | undefined {
    return this.editorialDrafts.get(id);
  }

  public getAllEditorialDrafts(): EditorialDraft[] {
    return Array.from(this.editorialDrafts.values());
  }
}

export const catalogRepository = CatalogRepository.getInstance();
