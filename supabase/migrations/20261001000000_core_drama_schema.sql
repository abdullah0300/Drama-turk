-- =============================================================================
-- Migration: 20261001000000_core_drama_schema.sql
-- Description: Core Schema for Drama Platform (Public Catalog, Private Ops, Optional Viewer Tables)
-- =============================================================================

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pg_trgm";

-- -----------------------------------------------------------------------------
-- 1. PUBLIC CATALOG TABLES
-- -----------------------------------------------------------------------------

-- Dramas table
CREATE TABLE IF NOT EXISTS public.dramas (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    source_id TEXT NOT NULL UNIQUE,
    slug TEXT NOT NULL UNIQUE,
    display_name TEXT NOT NULL,
    short_overview TEXT,
    status TEXT NOT NULL DEFAULT 'published' CHECK (status IN ('draft', 'preview', 'published', 'hidden', 'archived')),
    is_pilot BOOLEAN NOT NULL DEFAULT false,
    genres TEXT[] DEFAULT '{}',
    languages TEXT[] DEFAULT '{}',
    poster_url TEXT,
    backdrop_url TEXT,
    video_records_count INTEGER NOT NULL DEFAULT 0,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    revision_number INTEGER NOT NULL DEFAULT 1
);

-- Drama aliases
CREATE TABLE IF NOT EXISTS public.drama_aliases (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    drama_id UUID NOT NULL REFERENCES public.dramas(id) ON DELETE CASCADE,
    alias TEXT NOT NULL,
    normalized_alias TEXT NOT NULL,
    UNIQUE(drama_id, alias)
);

-- Catalog collections (separates distinct broadcast cuts e.g. subtitled vs dubbed)
CREATE TABLE IF NOT EXISTS public.collections (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    source_id TEXT NOT NULL UNIQUE,
    drama_id UUID NOT NULL REFERENCES public.dramas(id) ON DELETE CASCADE,
    slug TEXT NOT NULL,
    label TEXT NOT NULL,
    collection_type TEXT NOT NULL DEFAULT 'subtitled' CHECK (collection_type IN ('subtitled', 'dubbed', 'original', 'combined', 'unresolved')),
    reported_seasons INTEGER[] DEFAULT '{}',
    version_label TEXT,
    languages TEXT[] DEFAULT '{}',
    status TEXT NOT NULL DEFAULT 'published' CHECK (status IN ('draft', 'preview', 'published', 'hidden', 'archived')),
    sort_order INTEGER NOT NULL DEFAULT 0,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    UNIQUE(drama_id, slug)
);

-- Logical episode groups within a collection
CREATE TABLE IF NOT EXISTS public.episode_groups (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    source_id TEXT NOT NULL UNIQUE,
    collection_id UUID NOT NULL REFERENCES public.collections(id) ON DELETE CASCADE,
    label TEXT NOT NULL,
    reported_episode_number INTEGER,
    bolum INTEGER,
    part INTEGER,
    order_key INTEGER NOT NULL,
    content_type TEXT NOT NULL DEFAULT 'episode' CHECK (content_type IN ('episode', 'behind_the_scenes', 'trailer', 'unavailable_record')),
    status TEXT NOT NULL DEFAULT 'published' CHECK (status IN ('draft', 'preview', 'published', 'hidden', 'archived')),
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Video variants (specific files/renditions within an episode group)
CREATE TABLE IF NOT EXISTS public.video_variants (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    source_id TEXT NOT NULL UNIQUE,
    collection_id UUID NOT NULL REFERENCES public.collections(id) ON DELETE CASCADE,
    group_id UUID REFERENCES public.episode_groups(id) ON DELETE SET NULL,
    display_label TEXT NOT NULL,
    reported_season INTEGER,
    languages TEXT[] DEFAULT '{}',
    version TEXT NOT NULL DEFAULT 'subtitled',
    publication_state TEXT NOT NULL DEFAULT 'published' CHECK (publication_state IN ('draft', 'preview', 'published', 'hidden', 'archived')),
    duration_seconds INTEGER,
    thumbnail_url TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Stream delivery sources
CREATE TABLE IF NOT EXISTS public.stream_sources (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    variant_id UUID NOT NULL REFERENCES public.video_variants(id) ON DELETE CASCADE,
    delivery_url TEXT NOT NULL,
    format TEXT NOT NULL DEFAULT 'hls' CHECK (format IN ('hls', 'mp4', 'dash')),
    is_active BOOLEAN NOT NULL DEFAULT true,
    priority INTEGER NOT NULL DEFAULT 1,
    verification_state TEXT NOT NULL DEFAULT 'untested' CHECK (verification_state IN ('untested', 'reachable', 'browser_tested', 'unavailable', 'restricted')),
    last_verified_at TIMESTAMPTZ,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Subtitle tracks (for genuine external subtitle files)
CREATE TABLE IF NOT EXISTS public.subtitle_tracks (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    variant_id UUID NOT NULL REFERENCES public.video_variants(id) ON DELETE CASCADE,
    track_url TEXT NOT NULL,
    language TEXT NOT NULL,
    label TEXT NOT NULL,
    kind TEXT NOT NULL DEFAULT 'subtitles' CHECK (kind IN ('subtitles', 'captions')),
    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Catalog assets
CREATE TABLE IF NOT EXISTS public.catalog_assets (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    public_url TEXT NOT NULL,
    asset_type TEXT NOT NULL CHECK (asset_type IN ('poster', 'backdrop', 'thumbnail', 'wordmark')),
    alt_text TEXT,
    width INTEGER,
    height INTEGER,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Published editorial content
CREATE TABLE IF NOT EXISTS public.published_editorial (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    drama_id UUID REFERENCES public.dramas(id) ON DELETE CASCADE,
    collection_id UUID REFERENCES public.collections(id) ON DELETE CASCADE,
    group_id UUID REFERENCES public.episode_groups(id) ON DELETE CASCADE,
    variant_id UUID REFERENCES public.video_variants(id) ON DELETE CASCADE,
    locale TEXT NOT NULL DEFAULT 'en',
    approved_display_title TEXT NOT NULL,
    short_description TEXT NOT NULL,
    structured_article JSONB NOT NULL DEFAULT '[]',
    seo_title TEXT,
    seo_description TEXT,
    published_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT chk_editorial_single_target CHECK (num_nonnulls(drama_id, collection_id, group_id, variant_id) = 1)
);

-- Public site settings (singleton)
CREATE TABLE IF NOT EXISTS public.public_site_settings (
    id TEXT PRIMARY KEY DEFAULT 'current',
    brand_name TEXT NOT NULL DEFAULT 'Drama Platform',
    wordmark TEXT NOT NULL DEFAULT 'DRAMA PLATFORM',
    tagline TEXT NOT NULL DEFAULT 'Your drama. Without interruptions.',
    supporting_copy TEXT NOT NULL DEFAULT 'No ads. No pop-ups. Just watch.',
    accent_color TEXT NOT NULL DEFAULT '#f59e0b',
    pilot_drama_source_id TEXT NOT NULL DEFAULT 'mehmed-fetihler-sultani',
    pilot_collection_source_id TEXT NOT NULL DEFAULT 'collection-68',
    feature_flags JSONB NOT NULL DEFAULT '{"enable_viewer_accounts": false, "release_mode": "staging"}',
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Homepage sections and curated items
CREATE TABLE IF NOT EXISTS public.homepage_sections (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    section_key TEXT NOT NULL UNIQUE,
    visible_label TEXT NOT NULL,
    sort_order INTEGER NOT NULL DEFAULT 0,
    is_enabled BOOLEAN NOT NULL DEFAULT true,
    selection_mode TEXT NOT NULL DEFAULT 'manual' CHECK (selection_mode IN ('manual', 'latest_pilot', 'all_dramas'))
);

CREATE TABLE IF NOT EXISTS public.homepage_items (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    section_id UUID NOT NULL REFERENCES public.homepage_sections(id) ON DELETE CASCADE,
    drama_id UUID REFERENCES public.dramas(id) ON DELETE CASCADE,
    collection_id UUID REFERENCES public.collections(id) ON DELETE CASCADE,
    group_id UUID REFERENCES public.episode_groups(id) ON DELETE CASCADE,
    rank INTEGER NOT NULL DEFAULT 0,
    CONSTRAINT chk_hp_item_single_target CHECK (num_nonnulls(drama_id, collection_id, group_id) = 1)
);

-- Route redirects
CREATE TABLE IF NOT EXISTS public.route_redirects (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    old_path TEXT NOT NULL UNIQUE,
    new_path TEXT NOT NULL,
    status_code INTEGER NOT NULL DEFAULT 301 CHECK (status_code IN (301, 302, 307, 308)),
    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- -----------------------------------------------------------------------------
-- 2. PRIVATE OPERATIONAL TABLES
-- -----------------------------------------------------------------------------

-- Raw source records preserving original provenance and hash
CREATE TABLE IF NOT EXISTS public.source_records (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    source_id TEXT NOT NULL UNIQUE,
    source_url TEXT,
    raw_json JSONB NOT NULL,
    content_hash TEXT NOT NULL,
    imported_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Editorial drafts (offline Gemma drafts and staff revisions)
CREATE TABLE IF NOT EXISTS public.editorial_drafts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    target_type TEXT NOT NULL CHECK (target_type IN ('drama', 'collection', 'episode_group', 'video_variant')),
    target_source_id TEXT NOT NULL,
    locale TEXT NOT NULL DEFAULT 'en',
    proposed_title TEXT NOT NULL,
    short_description TEXT NOT NULL,
    sections JSONB NOT NULL DEFAULT '[]',
    seo_title TEXT,
    seo_description TEXT,
    review_flags TEXT[] DEFAULT '{}',
    generation_provenance JSONB NOT NULL DEFAULT '{}',
    approval_status TEXT NOT NULL DEFAULT 'draft' CHECK (approval_status IN ('draft', 'needs_review', 'approved', 'rejected')),
    revision_number INTEGER NOT NULL DEFAULT 1,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    UNIQUE(target_type, target_source_id, locale)
);

-- Immutable editorial revisions
CREATE TABLE IF NOT EXISTS public.editorial_revisions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    draft_id UUID REFERENCES public.editorial_drafts(id) ON DELETE SET NULL,
    target_type TEXT NOT NULL,
    target_source_id TEXT NOT NULL,
    snapshot JSONB NOT NULL,
    action TEXT NOT NULL CHECK (action IN ('draft_save', 'published', 'rolled_back')),
    actor_id UUID,
    revision_number INTEGER NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Review queue findings
CREATE TABLE IF NOT EXISTS public.review_findings (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    target_source_id TEXT NOT NULL,
    flag_type TEXT NOT NULL,
    severity TEXT NOT NULL DEFAULT 'warning' CHECK (severity IN ('info', 'warning', 'critical')),
    evidence TEXT,
    is_resolved BOOLEAN NOT NULL DEFAULT false,
    resolution_notes TEXT,
    reviewed_at TIMESTAMPTZ,
    reviewer_id UUID
);

-- Stream health checks (distinguishes HEAD reachability from browser playback)
CREATE TABLE IF NOT EXISTS public.stream_checks (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    stream_source_id UUID REFERENCES public.stream_sources(id) ON DELETE CASCADE,
    variant_source_id TEXT NOT NULL,
    stream_url TEXT NOT NULL,
    check_method TEXT NOT NULL CHECK (check_method IN ('reachability_head', 'browser_playback')),
    status TEXT NOT NULL CHECK (status IN ('passed', 'failed', 'inconclusive')),
    http_status INTEGER,
    content_type TEXT,
    error_message TEXT,
    origin_device TEXT,
    checked_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Import jobs & job items
CREATE TABLE IF NOT EXISTS public.import_jobs (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    job_kind TEXT NOT NULL CHECK (job_kind IN ('full_catalog', 'gemma_batch', 'review_results')),
    file_hash TEXT,
    schema_version INTEGER NOT NULL DEFAULT 1,
    status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'running', 'completed', 'failed')),
    total_count INTEGER NOT NULL DEFAULT 0,
    processed_count INTEGER NOT NULL DEFAULT 0,
    error_count INTEGER NOT NULL DEFAULT 0,
    errors JSONB DEFAULT '[]',
    started_at TIMESTAMPTZ,
    completed_at TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS public.import_job_items (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    job_id UUID NOT NULL REFERENCES public.import_jobs(id) ON DELETE CASCADE,
    item_source_id TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'success' CHECK (status IN ('success', 'failed', 'skipped')),
    error_message TEXT,
    retry_count INTEGER NOT NULL DEFAULT 0
);

-- Admin & staff memberships
CREATE TABLE IF NOT EXISTS public.admin_memberships (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE UNIQUE,
    role TEXT NOT NULL DEFAULT 'editor' CHECK (role IN ('editor', 'publisher', 'admin')),
    is_enabled BOOLEAN NOT NULL DEFAULT true,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    created_by UUID REFERENCES auth.users(id)
);

-- Audit event log
CREATE TABLE IF NOT EXISTS public.audit_events (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    actor_id UUID,
    action TEXT NOT NULL,
    target_type TEXT NOT NULL,
    target_id TEXT NOT NULL,
    changes JSONB,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Playback problem reports submitted by users
CREATE TABLE IF NOT EXISTS public.playback_reports (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES auth.users(id) ON DELETE SET NULL,
    drama_source_id TEXT NOT NULL,
    collection_source_id TEXT NOT NULL,
    group_source_id TEXT NOT NULL,
    variant_source_id TEXT NOT NULL,
    stream_url TEXT,
    problem_category TEXT NOT NULL,
    safe_diagnostics JSONB NOT NULL DEFAULT '{}',
    status TEXT NOT NULL DEFAULT 'open' CHECK (status IN ('open', 'investigating', 'resolved', 'dismissed')),
    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- -----------------------------------------------------------------------------
-- 3. OPTIONAL VIEWER TABLES (FEATURE-FLAGGED)
-- -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS public.viewer_profiles (
    user_id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
    display_name TEXT,
    avatar_url TEXT,
    locale TEXT NOT NULL DEFAULT 'en',
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS public.watch_progress (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    variant_source_id TEXT NOT NULL,
    group_source_id TEXT NOT NULL,
    drama_source_id TEXT NOT NULL,
    seconds INTEGER NOT NULL DEFAULT 0,
    observed_duration INTEGER NOT NULL DEFAULT 0,
    is_completed BOOLEAN NOT NULL DEFAULT false,
    last_watched_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    UNIQUE(user_id, variant_source_id)
);

CREATE TABLE IF NOT EXISTS public.watchlist_items (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    drama_id UUID NOT NULL REFERENCES public.dramas(id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    UNIQUE(user_id, drama_id)
);

CREATE TABLE IF NOT EXISTS public.viewer_preferences (
    user_id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
    autoplay_next BOOLEAN NOT NULL DEFAULT true,
    preferred_language TEXT,
    playback_speed NUMERIC(3, 2) NOT NULL DEFAULT 1.0,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- -----------------------------------------------------------------------------
-- 4. PERFORMANCE INDEXES
-- -----------------------------------------------------------------------------

CREATE INDEX IF NOT EXISTS idx_dramas_slug ON public.dramas(slug);
CREATE INDEX IF NOT EXISTS idx_dramas_status ON public.dramas(status);
CREATE INDEX IF NOT EXISTS idx_dramas_pilot ON public.dramas(is_pilot);
CREATE INDEX IF NOT EXISTS idx_drama_aliases_trgm ON public.drama_aliases USING gin(normalized_alias gin_trgm_ops);

CREATE INDEX IF NOT EXISTS idx_collections_drama ON public.collections(drama_id);
CREATE INDEX IF NOT EXISTS idx_collections_source ON public.collections(source_id);
CREATE INDEX IF NOT EXISTS idx_collections_status ON public.collections(status);

CREATE INDEX IF NOT EXISTS idx_episode_groups_collection ON public.episode_groups(collection_id);
CREATE INDEX IF NOT EXISTS idx_episode_groups_source ON public.episode_groups(source_id);
CREATE INDEX IF NOT EXISTS idx_episode_groups_order ON public.episode_groups(collection_id, order_key);
CREATE INDEX IF NOT EXISTS idx_episode_groups_status ON public.episode_groups(status);

CREATE INDEX IF NOT EXISTS idx_video_variants_group ON public.video_variants(group_id);
CREATE INDEX IF NOT EXISTS idx_video_variants_source ON public.video_variants(source_id);
CREATE INDEX IF NOT EXISTS idx_video_variants_collection ON public.video_variants(collection_id);

CREATE INDEX IF NOT EXISTS idx_stream_sources_variant ON public.stream_sources(variant_id);
CREATE INDEX IF NOT EXISTS idx_published_editorial_targets ON public.published_editorial(drama_id, collection_id, group_id, variant_id);

CREATE INDEX IF NOT EXISTS idx_watch_progress_user ON public.watch_progress(user_id, last_watched_at DESC);
CREATE INDEX IF NOT EXISTS idx_watchlist_user ON public.watchlist_items(user_id, created_at DESC);
