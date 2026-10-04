export type ContentType = 'episode' | 'behind_the_scenes' | 'trailer' | 'unavailable_record';

export interface Drama {
  status?: string;
  editorial?: PublishedEditorial;
  updated_at?: string;
  id: string;
  name: string;
  source_names: string[];
  collection_ids: string[];
  video_records: number;
  synopsis?: string;
  poster_url?: string;
  backdrop_url?: string;
  genres?: string[];
  languages?: string[];
  isPilot?: boolean;
  /** True when at least one season of this drama is published for streaming. */
  playable?: boolean;
  /** Distinct seasons (subtitled and dubbed releases of one season count once). */
  season_count?: number;
}

export interface CatalogCollection {
  editorial?: PublishedEditorial;
  updated_at?: string;
  id: string;
  source_catalog_id: string;
  drama_id: string;
  source_heading: string;
  source_url: string;
  reported_seasons: number[];
  episode_group_ids: string[];
  extra_video_ids: string[];
  video_records: number;
  languages?: string[];
  version?: 'subtitled' | 'dubbed' | 'original' | 'unresolved';
  status?: 'published' | 'draft' | 'preview' | 'archived';
  /** Season poster; subtitled and dubbed releases of a season share one. */
  poster_url?: string;
}

export interface EpisodeGroup {
  editorial?: PublishedEditorial;
  updated_at?: string;
  id: string;
  collection_id: string;
  drama_id: string;
  display_label: string;
  episode_number: number | null;
  bolum: number | null;
  part: number | null;
  video_ids: string[];
  numbering_basis: string;
  reported_season: number | null;
  status?: 'published' | 'draft' | 'preview' | 'archived';
  /** Episode picture (official still, unique catalog thumbnail, or a frame from the video). */
  still_url?: string;
}

export interface VideoRecord {
  id: string;
  record_id: string;
  drama: string;
  drama_id: string;
  catalog_id: string;
  collection_id: string;
  episode_group_id?: string;
  content_type: ContentType;
  heading: string;
  title: string;
  display_label: string;
  season: number | null;
  season_source?: string;
  episode: number | null;
  bolum: number | null;
  part: number | null;
  languages: string[];
  language_source?: string;
  version: 'subtitled' | 'dubbed' | 'original' | 'unresolved';
  version_source?: string;
  stream_urls: string[];
  stream_present: boolean;
  thumbnail_urls: string[];
  duration?: string; // ISO 8601 duration e.g. PT0H0M0S
  upload_date?: string;
  description?: string;
  description_status?: string;
  article_text?: string;
  meta_description?: string;
  source_url?: string;
  final_url?: string;
  season_url?: string;
  playback_verified?: boolean;
  organization_review_flags?: string[];
  quality_flags?: string[];
}

export interface PublishedEditorial {
  title: string;
  description: string;
  seo_title?: string;
  seo_description?: string;
  sections: Array<{ heading: string; content: string; is_spoiler?: boolean; sources?: Array<{ name: string; url: string }> }>;
  published_at?: string;
  updated_at?: string;
}

export interface OrganizationReviewRecord {
  record_id: string;
  drama: string;
  heading: string;
  flags: string[];
  resolved: boolean;
  notes?: string;
}

export interface DuplicateStreamGroup {
  stream_url: string;
  record_ids: string[];
}

export interface CatalogSummary {
  source_records: number;
  organized_video_records: number;
  dramas: number;
  source_catalog_collections: number;
  episode_groups_within_collections: number;
  content_type_counts: Record<string, number>;
  records_with_stream_urls: number;
  organization_review_records: number;
  all_review_records: number;
  organization_review_flags: Record<string, number>;
  duplicate_stream_groups: number;
}

export interface EditorialDraft {
  id: string;
  drama_id: string;
  collection_id?: string;
  episode_group_id?: string;
  video_id?: string;
  proposed_display_title: string;
  short_description: string;
  sections: Array<{
    heading: string;
    content: string;
    is_spoiler?: boolean;
  }>;
  seo_title?: string;
  seo_description?: string;
  source_record_reference?: string;
  review_flags: string[];
  generation_provenance: {
    model: string;
    timestamp: string;
    offline_batch_id?: string;
  };
  approval_status: 'draft' | 'under_review' | 'approved' | 'rejected';
}

export interface PlaybackCheckLog {
  id: string;
  video_id: string;
  stream_url: string;
  check_type: 'reachability_head' | 'browser_playback';
  status: 'passed' | 'failed' | 'inconclusive';
  http_status?: number;
  content_type?: string;
  error_message?: string;
  checked_at: string;
  checked_by?: string;
}

export interface UserPlaybackProgress {
  videoId: string;
  dramaId: string;
  collectionId: string;
  episodeGroupId: string;
  displayLabel: string;
  dramaTitle: string;
  episodeTitle: string;
  thumbnailUrl?: string;
  currentTime: number;
  duration: number;
  updatedAt: number;
  completed: boolean;
  language?: string;
  version?: string;
  /** Clean URL of the episode page, saved so history links straight back to it. */
  url?: string;
}

export interface MyListItem {
  id: string; // dramaId or videoId
  type: 'drama' | 'episode';
  dramaId: string;
  collectionId?: string;
  episodeGroupId?: string;
  title: string;
  subtitle?: string;
  thumbnailUrl?: string;
  addedAt: number;
}

/**
 * A release is watchable unless it is explicitly held back (draft / preview / archived).
 * The local fallback catalog carries no status at all; it mirrors published data, so "unknown" counts as published.
 */
export function isReleasePublished(c: Pick<CatalogCollection, 'status'>): boolean {
  return c.status === undefined || c.status === 'published';
}

/** A drama is watchable when any of its seasons is published. */
export function isDramaPlayable(drama: Pick<Drama, 'playable' | 'collection_ids'>): boolean {
  return drama.playable ?? drama.collection_ids.length > 0;
}

const editionRank: Record<string, number> = { subtitled: 0, original: 1, dubbed: 2, unresolved: 3 };

/** Natural season order: season number, then subtitled before dubbed, then label. */
export function compareCollections(a: CatalogCollection, b: CatalogCollection): number {
  const sa = a.reported_seasons?.[0] ?? 999;
  const sb = b.reported_seasons?.[0] ?? 999;
  if (sa !== sb) return sa - sb;
  const ea = editionRank[a.version ?? 'unresolved'] ?? 3;
  const eb = editionRank[b.version ?? 'unresolved'] ?? 3;
  if (ea !== eb) return ea - eb;
  return a.source_heading.localeCompare(b.source_heading);
}

/** "Season 4 · Dubbed" — distinguishes same-numbered seasons released as separate editions. */
export function seasonLabel(c: Pick<CatalogCollection, 'reported_seasons' | 'version' | 'source_heading'>): string {
  const base = seasonTitle(c);
  return c.version === 'dubbed' ? `${base} · Dubbed` : base;
}

/** A season of a drama, with its releases (subtitled, dubbed…) as editions. */
export interface SeasonGroup {
  key: string;
  number: number;
  label: string;
  editions: CatalogCollection[];
}

export function seasonKey(c: Pick<CatalogCollection, 'reported_seasons' | 'id'>): string {
  return c.reported_seasons?.length ? c.reported_seasons.join('-') : `c:${c.id}`;
}

export function seasonTitle(c: Pick<CatalogCollection, 'reported_seasons' | 'source_heading'>): string {
  const s = c.reported_seasons || [];
  if (s.length > 1) return `Seasons ${s.join(' & ')}`;
  if (s.length === 1) return `Season ${s[0]}`;
  return c.source_heading;
}

export function editionName(c: Pick<CatalogCollection, 'version'>): string {
  switch (c.version) {
    case 'dubbed': return 'Urdu Dubbed';
    case 'original': return 'Original';
    case 'subtitled': return 'Subtitled';
    default: return 'Edition';
  }
}

/** Group collections into seasons; editions are ordered subtitled first. */
export function groupSeasons(collections: CatalogCollection[]): SeasonGroup[] {
  const map = new Map<string, SeasonGroup>();
  [...collections].sort(compareCollections).forEach((c) => {
    const key = seasonKey(c);
    if (!map.has(key)) {
      map.set(key, { key, number: c.reported_seasons?.[0] ?? 0, label: seasonTitle(c), editions: [] });
    }
    map.get(key)!.editions.push(c);
  });
  return Array.from(map.values()).sort((a, b) => a.number - b.number || a.key.localeCompare(b.key));
}

export function dramaSeasonCount(d: Pick<Drama, 'season_count' | 'collection_ids'>): number {
  return d.season_count ?? d.collection_ids.length;
}

export function pluralSeasons(n: number): string {
  return `${n} ${n === 1 ? 'season' : 'seasons'}`;
}

/** Poster for a season: its own artwork if any release has one, else the drama poster. */
export function seasonPosterOf(season: Pick<SeasonGroup, 'editions'>, dramaPoster?: string): string | undefined {
  return season.editions.find((e) => e.poster_url)?.poster_url ?? dramaPoster;
}
