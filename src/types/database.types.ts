export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[];

export interface Database {
  public: {
    Tables: {
      dramas: {
        Row: {
          id: string;
          source_id: string;
          slug: string;
          display_name: string;
          short_overview: string | null;
          status: 'draft' | 'preview' | 'published' | 'hidden' | 'archived';
          is_pilot: boolean;
          genres: string[] | null;
          languages: string[] | null;
          poster_url: string | null;
          backdrop_url: string | null;
          video_records_count: number;
          created_at: string;
          updated_at: string;
          revision_number: number;
        };
        Insert: {
          id?: string;
          source_id: string;
          slug: string;
          display_name: string;
          short_overview?: string | null;
          status?: 'draft' | 'preview' | 'published' | 'hidden' | 'archived';
          is_pilot?: boolean;
          genres?: string[] | null;
          languages?: string[] | null;
          poster_url?: string | null;
          backdrop_url?: string | null;
          video_records_count?: number;
          created_at?: string;
          updated_at?: string;
          revision_number?: number;
        };
        Update: {
          id?: string;
          source_id?: string;
          slug?: string;
          display_name?: string;
          short_overview?: string | null;
          status?: 'draft' | 'preview' | 'published' | 'hidden' | 'archived';
          is_pilot?: boolean;
          genres?: string[] | null;
          languages?: string[] | null;
          poster_url?: string | null;
          backdrop_url?: string | null;
          video_records_count?: number;
          created_at?: string;
          updated_at?: string;
          revision_number?: number;
        };
      };
      drama_aliases: {
        Row: {
          id: string;
          drama_id: string;
          alias: string;
          normalized_alias: string;
        };
        Insert: {
          id?: string;
          drama_id: string;
          alias: string;
          normalized_alias: string;
        };
        Update: {
          id?: string;
          drama_id?: string;
          alias?: string;
          normalized_alias?: string;
        };
      };
      collections: {
        Row: {
          id: string;
          source_id: string;
          drama_id: string;
          slug: string;
          label: string;
          collection_type: 'subtitled' | 'dubbed' | 'original' | 'combined' | 'unresolved';
          reported_seasons: number[] | null;
          version_label: string | null;
          languages: string[] | null;
          status: 'draft' | 'preview' | 'published' | 'hidden' | 'archived';
          sort_order: number;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          source_id: string;
          drama_id: string;
          slug: string;
          label: string;
          collection_type?: 'subtitled' | 'dubbed' | 'original' | 'combined' | 'unresolved';
          reported_seasons?: number[] | null;
          version_label?: string | null;
          languages?: string[] | null;
          status?: 'draft' | 'preview' | 'published' | 'hidden' | 'archived';
          sort_order?: number;
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          id?: string;
          source_id?: string;
          drama_id?: string;
          slug?: string;
          label?: string;
          collection_type?: 'subtitled' | 'dubbed' | 'original' | 'combined' | 'unresolved';
          reported_seasons?: number[] | null;
          version_label?: string | null;
          languages?: string[] | null;
          status?: 'draft' | 'preview' | 'published' | 'hidden' | 'archived';
          sort_order?: number;
          created_at?: string;
          updated_at?: string;
        };
      };
      episode_groups: {
        Row: {
          id: string;
          source_id: string;
          collection_id: string;
          label: string;
          reported_episode_number: number | null;
          bolum: number | null;
          part: number | null;
          order_key: number;
          content_type: 'episode' | 'behind_the_scenes' | 'trailer' | 'unavailable_record';
          status: 'draft' | 'preview' | 'published' | 'hidden' | 'archived';
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          source_id: string;
          collection_id: string;
          label: string;
          reported_episode_number?: number | null;
          bolum?: number | null;
          part?: number | null;
          order_key: number;
          content_type?: 'episode' | 'behind_the_scenes' | 'trailer' | 'unavailable_record';
          status?: 'draft' | 'preview' | 'published' | 'hidden' | 'archived';
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          id?: string;
          source_id?: string;
          collection_id?: string;
          label?: string;
          reported_episode_number?: number | null;
          bolum?: number | null;
          part?: number | null;
          order_key?: number;
          content_type?: 'episode' | 'behind_the_scenes' | 'trailer' | 'unavailable_record';
          status?: 'draft' | 'preview' | 'published' | 'hidden' | 'archived';
          created_at?: string;
          updated_at?: string;
        };
      };
      video_variants: {
        Row: {
          id: string;
          source_id: string;
          collection_id: string;
          group_id: string | null;
          display_label: string;
          reported_season: number | null;
          languages: string[] | null;
          version: string;
          publication_state: 'draft' | 'preview' | 'published' | 'hidden' | 'archived';
          source_uploaded_at: string | null;
            duration_seconds: number | null;
          thumbnail_url: string | null;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          source_id: string;
          collection_id: string;
          group_id?: string | null;
          display_label: string;
          reported_season?: number | null;
          languages?: string[] | null;
          version?: string;
          publication_state?: 'draft' | 'preview' | 'published' | 'hidden' | 'archived';
          source_uploaded_at?: string | null;
            duration_seconds?: number | null;
          thumbnail_url?: string | null;
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          id?: string;
          source_id?: string;
          collection_id?: string;
          group_id?: string | null;
          display_label?: string;
          reported_season?: number | null;
          languages?: string[] | null;
          version?: string;
          publication_state?: 'draft' | 'preview' | 'published' | 'hidden' | 'archived';
          source_uploaded_at?: string | null;
            duration_seconds?: number | null;
          thumbnail_url?: string | null;
          created_at?: string;
          updated_at?: string;
        };
      };
      stream_sources: {
        Row: {
          id: string;
          variant_id: string;
          delivery_url: string;
          format: 'hls' | 'mp4' | 'dash';
          is_active: boolean;
          priority: number;
          verification_state: 'untested' | 'reachable' | 'browser_tested' | 'unavailable' | 'restricted';
          last_verified_at: string | null;
          created_at: string;
        };
        Insert: {
          id?: string;
          variant_id: string;
          delivery_url: string;
          format?: 'hls' | 'mp4' | 'dash';
          is_active?: boolean;
          priority?: number;
          verification_state?: 'untested' | 'reachable' | 'browser_tested' | 'unavailable' | 'restricted';
          last_verified_at?: string | null;
          created_at?: string;
        };
        Update: {
          id?: string;
          variant_id?: string;
          delivery_url?: string;
          format?: 'hls' | 'mp4' | 'dash';
          is_active?: boolean;
          priority?: number;
          verification_state?: 'untested' | 'reachable' | 'browser_tested' | 'unavailable' | 'restricted';
          last_verified_at?: string | null;
          created_at?: string;
        };
      };
      public_site_settings: {
        Row: {
          id: string;
          brand_name: string;
          wordmark: string;
          tagline: string;
          supporting_copy: string;
          accent_color: string;
          pilot_drama_source_id: string;
          pilot_collection_source_id: string;
          feature_flags: Json;
          updated_at: string;
        };
        Insert: {
          id?: string;
          brand_name?: string;
          wordmark?: string;
          tagline?: string;
          supporting_copy?: string;
          accent_color?: string;
          pilot_drama_source_id?: string;
          pilot_collection_source_id?: string;
          feature_flags?: Json;
          updated_at?: string;
        };
        Update: {
          id?: string;
          brand_name?: string;
          wordmark?: string;
          tagline?: string;
          supporting_copy?: string;
          accent_color?: string;
          pilot_drama_source_id?: string;
          pilot_collection_source_id?: string;
          feature_flags?: Json;
          updated_at?: string;
        };
      };
      published_editorial: {
        Row: {
          id: string;
          drama_id: string | null;
          collection_id: string | null;
          group_id: string | null;
          variant_id: string | null;
          locale: string;
          approved_display_title: string;
          short_description: string;
          structured_article: Json;
          seo_title: string | null;
          seo_description: string | null;
          published_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          drama_id?: string | null;
          collection_id?: string | null;
          group_id?: string | null;
          variant_id?: string | null;
          locale?: string;
          approved_display_title: string;
          short_description: string;
          structured_article?: Json;
          seo_title?: string | null;
          seo_description?: string | null;
          published_at?: string;
          updated_at?: string;
        };
        Update: {
          id?: string;
          drama_id?: string | null;
          collection_id?: string | null;
          group_id?: string | null;
          variant_id?: string | null;
          locale?: string;
          approved_display_title?: string;
          short_description?: string;
          structured_article?: Json;
          seo_title?: string | null;
          seo_description?: string | null;
          published_at?: string;
          updated_at?: string;
        };
      };
      source_records: {
        Row: {
          id: string;
          source_id: string;
          source_url: string | null;
          raw_json: Json;
          content_hash: string;
          imported_at: string;
        };
        Insert: {
          id?: string;
          source_id: string;
          source_url?: string | null;
          raw_json: Json;
          content_hash: string;
          imported_at?: string;
        };
        Update: {
          id?: string;
          source_id?: string;
          source_url?: string | null;
          raw_json?: Json;
          content_hash?: string;
          imported_at?: string;
        };
      };
      editorial_drafts: {
        Row: {
          id: string;
          target_type: 'drama' | 'collection' | 'episode_group' | 'video_variant';
          target_source_id: string;
          locale: string;
          proposed_title: string;
          short_description: string;
          sections: Json;
          seo_title: string | null;
          seo_description: string | null;
          review_flags: string[] | null;
          generation_provenance: Json;
          approval_status: 'draft' | 'needs_review' | 'approved' | 'rejected';
          revision_number: number;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          target_type: 'drama' | 'collection' | 'episode_group' | 'video_variant';
          target_source_id: string;
          locale?: string;
          proposed_title: string;
          short_description: string;
          sections?: Json;
          seo_title?: string | null;
          seo_description?: string | null;
          review_flags?: string[] | null;
          generation_provenance?: Json;
          approval_status?: 'draft' | 'needs_review' | 'approved' | 'rejected';
          revision_number?: number;
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          id?: string;
          target_type?: 'drama' | 'collection' | 'episode_group' | 'video_variant';
          target_source_id?: string;
          locale?: string;
          proposed_title?: string;
          short_description?: string;
          sections?: Json;
          seo_title?: string | null;
          seo_description?: string | null;
          review_flags?: string[] | null;
          generation_provenance?: Json;
          approval_status?: 'draft' | 'needs_review' | 'approved' | 'rejected';
          revision_number?: number;
          created_at?: string;
          updated_at?: string;
        };
      };
      admin_memberships: {
        Row: {
          id: string;
          user_id: string;
          role: 'editor' | 'publisher' | 'admin';
          is_enabled: boolean;
          created_at: string;
          created_by: string | null;
        };
        Insert: {
          id?: string;
          user_id: string;
          role?: 'editor' | 'publisher' | 'admin';
          is_enabled?: boolean;
          created_at?: string;
          created_by?: string | null;
        };
        Update: {
          id?: string;
          user_id?: string;
          role?: 'editor' | 'publisher' | 'admin';
          is_enabled?: boolean;
          created_at?: string;
          created_by?: string | null;
        };
      };
      playback_reports: {
        Row: {
          id: string;
          user_id: string | null;
          drama_source_id: string;
          collection_source_id: string;
          group_source_id: string;
          variant_source_id: string;
          stream_url: string | null;
          problem_category: string;
          safe_diagnostics: Json;
          status: 'open' | 'investigating' | 'resolved' | 'dismissed';
          created_at: string;
        };
        Insert: {
          id?: string;
          user_id?: string | null;
          drama_source_id: string;
          collection_source_id: string;
          group_source_id: string;
          variant_source_id: string;
          stream_url?: string | null;
          problem_category: string;
          safe_diagnostics?: Json;
          status?: 'open' | 'investigating' | 'resolved' | 'dismissed';
          created_at?: string;
        };
        Update: {
          id?: string;
          user_id?: string | null;
          drama_source_id?: string;
          collection_source_id?: string;
          group_source_id?: string;
          variant_source_id?: string;
          stream_url?: string | null;
          problem_category?: string;
          safe_diagnostics?: Json;
          status?: 'open' | 'investigating' | 'resolved' | 'dismissed';
          created_at?: string;
        };
      };
      watch_progress: {
        Row: {
          id: string;
          user_id: string;
          variant_source_id: string;
          group_source_id: string;
          drama_source_id: string;
          seconds: number;
          observed_duration: number;
          is_completed: boolean;
          last_watched_at: string;
        };
        Insert: {
          id?: string;
          user_id: string;
          variant_source_id: string;
          group_source_id: string;
          drama_source_id: string;
          seconds?: number;
          observed_duration?: number;
          is_completed?: boolean;
          last_watched_at?: string;
        };
        Update: {
          id?: string;
          user_id?: string;
          variant_source_id?: string;
          group_source_id?: string;
          drama_source_id?: string;
          seconds?: number;
          observed_duration?: number;
          is_completed?: boolean;
          last_watched_at?: string;
        };
      };
      watchlist_items: {
        Row: {
          id: string;
          user_id: string;
          drama_id: string;
          created_at: string;
        };
        Insert: {
          id?: string;
          user_id: string;
          drama_id: string;
          created_at?: string;
        };
        Update: {
          id?: string;
          user_id?: string;
          drama_id?: string;
          created_at?: string;
        };
      };
    };
    Functions: {
      auth_has_role: {
        Args: { required_role: string };
        Returns: boolean;
      };
    };
  };
}
