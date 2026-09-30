export type ContentType = 'episode' | 'behind_the_scenes' | 'trailer' | 'unavailable_record';

export interface Drama {
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
}

export interface CatalogCollection {
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
}

export interface EpisodeGroup {
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
