-- =============================================================================
-- Migration: 20261001000001_rls_and_security_policies.sql
-- Description: Row Level Security, Grants, Security Definer Helpers & Permissions
-- =============================================================================

-- -----------------------------------------------------------------------------
-- 1. SECURITY DEFINER ROLE HELPER FUNCTION
-- -----------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION public.auth_has_role(required_role TEXT)
RETURNS BOOLEAN
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public, pg_temp
AS $$
DECLARE
    user_role TEXT;
BEGIN
    IF auth.uid() IS NULL THEN
        RETURN FALSE;
    END IF;

    SELECT role INTO user_role
    FROM public.admin_memberships
    WHERE user_id = auth.uid() AND is_enabled = true;

    IF user_role IS NULL THEN
        RETURN FALSE;
    END IF;

    IF required_role = 'editor' THEN
        RETURN user_role IN ('editor', 'publisher', 'admin');
    ELSIF required_role = 'publisher' THEN
        RETURN user_role IN ('publisher', 'admin');
    ELSIF required_role = 'admin' THEN
        RETURN user_role = 'admin';
    ELSE
        RETURN FALSE;
    END IF;
END;
$$;

REVOKE ALL ON FUNCTION public.auth_has_role(TEXT) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.auth_has_role(TEXT) TO authenticated, anon;

-- Helper to check drama visibility without recursion
CREATE OR REPLACE FUNCTION public.is_drama_published(drama_uuid UUID)
RETURNS BOOLEAN
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path = public, pg_temp
AS $$
    SELECT EXISTS (
        SELECT 1 FROM public.dramas WHERE id = drama_uuid AND status = 'published'
    );
$$;

-- -----------------------------------------------------------------------------
-- 2. ENABLE ROW LEVEL SECURITY ON ALL TABLES
-- -----------------------------------------------------------------------------

ALTER TABLE public.dramas ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.drama_aliases ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.collections ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.episode_groups ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.video_variants ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.stream_sources ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.subtitle_tracks ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.catalog_assets ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.published_editorial ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.public_site_settings ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.homepage_sections ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.homepage_items ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.route_redirects ENABLE ROW LEVEL SECURITY;

ALTER TABLE public.source_records ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.editorial_drafts ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.editorial_revisions ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.review_findings ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.stream_checks ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.import_jobs ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.import_job_items ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.admin_memberships ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.audit_events ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.playback_reports ENABLE ROW LEVEL SECURITY;

ALTER TABLE public.viewer_profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.watch_progress ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.watchlist_items ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.viewer_preferences ENABLE ROW LEVEL SECURITY;

-- -----------------------------------------------------------------------------
-- 3. PUBLIC CATALOG POLICIES (ANONYMOUS & AUTHENTICATED READ)
-- -----------------------------------------------------------------------------

-- Dramas
CREATE POLICY "Public read published dramas" ON public.dramas
    FOR SELECT TO anon, authenticated
    USING (status = 'published' OR public.auth_has_role('editor'));

CREATE POLICY "Publisher manage dramas" ON public.dramas
    FOR ALL TO authenticated
    USING (public.auth_has_role('publisher'))
    WITH CHECK (public.auth_has_role('publisher'));

-- Drama aliases
CREATE POLICY "Public read aliases" ON public.drama_aliases
    FOR SELECT TO anon, authenticated
    USING (public.is_drama_published(drama_id) OR public.auth_has_role('editor'));

CREATE POLICY "Publisher manage aliases" ON public.drama_aliases
    FOR ALL TO authenticated
    USING (public.auth_has_role('publisher'))
    WITH CHECK (public.auth_has_role('publisher'));

-- Collections
CREATE POLICY "Public read published collections" ON public.collections
    FOR SELECT TO anon, authenticated
    USING ((status = 'published' AND public.is_drama_published(drama_id)) OR public.auth_has_role('editor'));

CREATE POLICY "Publisher manage collections" ON public.collections
    FOR ALL TO authenticated
    USING (public.auth_has_role('publisher'))
    WITH CHECK (public.auth_has_role('publisher'));

-- Episode groups
CREATE POLICY "Public read published groups" ON public.episode_groups
    FOR SELECT TO anon, authenticated
    USING (status = 'published' OR public.auth_has_role('editor'));

CREATE POLICY "Publisher manage groups" ON public.episode_groups
    FOR ALL TO authenticated
    USING (public.auth_has_role('publisher'))
    WITH CHECK (public.auth_has_role('publisher'));

-- Video variants
CREATE POLICY "Public read published variants" ON public.video_variants
    FOR SELECT TO anon, authenticated
    USING (publication_state = 'published' OR public.auth_has_role('editor'));

CREATE POLICY "Publisher manage variants" ON public.video_variants
    FOR ALL TO authenticated
    USING (public.auth_has_role('publisher'))
    WITH CHECK (public.auth_has_role('publisher'));

-- Stream sources (Only permitted published streams are visible to public)
CREATE POLICY "Public read active streams of published variants" ON public.stream_sources
    FOR SELECT TO anon, authenticated
    USING (
        (is_active = true AND EXISTS (
            SELECT 1 FROM public.video_variants v
            WHERE v.id = variant_id AND v.publication_state = 'published'
        )) OR public.auth_has_role('editor')
    );

CREATE POLICY "Publisher manage stream sources" ON public.stream_sources
    FOR ALL TO authenticated
    USING (public.auth_has_role('publisher'))
    WITH CHECK (public.auth_has_role('publisher'));

-- Subtitle tracks
CREATE POLICY "Public read subtitle tracks" ON public.subtitle_tracks
    FOR SELECT TO anon, authenticated
    USING (EXISTS (
        SELECT 1 FROM public.video_variants v
        WHERE v.id = variant_id AND v.publication_state = 'published'
    ) OR public.auth_has_role('editor'));

CREATE POLICY "Publisher manage subtitle tracks" ON public.subtitle_tracks
    FOR ALL TO authenticated
    USING (public.auth_has_role('publisher'))
    WITH CHECK (public.auth_has_role('publisher'));

-- Catalog assets
CREATE POLICY "Public read catalog assets" ON public.catalog_assets
    FOR SELECT TO anon, authenticated
    USING (true);

CREATE POLICY "Editor manage catalog assets" ON public.catalog_assets
    FOR ALL TO authenticated
    USING (public.auth_has_role('editor'))
    WITH CHECK (public.auth_has_role('editor'));

-- Published editorial (Only approved published text exposed)
CREATE POLICY "Public read published editorial" ON public.published_editorial
    FOR SELECT TO anon, authenticated
    USING (true);

CREATE POLICY "Publisher manage published editorial" ON public.published_editorial
    FOR ALL TO authenticated
    USING (public.auth_has_role('publisher'))
    WITH CHECK (public.auth_has_role('publisher'));

-- Public site settings
CREATE POLICY "Public read site settings" ON public.public_site_settings
    FOR SELECT TO anon, authenticated
    USING (true);

CREATE POLICY "Admin manage site settings" ON public.public_site_settings
    FOR ALL TO authenticated
    USING (public.auth_has_role('admin'))
    WITH CHECK (public.auth_has_role('admin'));

-- Homepage sections & items
CREATE POLICY "Public read homepage sections" ON public.homepage_sections
    FOR SELECT TO anon, authenticated
    USING (is_enabled = true OR public.auth_has_role('editor'));

CREATE POLICY "Publisher manage homepage sections" ON public.homepage_sections
    FOR ALL TO authenticated
    USING (public.auth_has_role('publisher'))
    WITH CHECK (public.auth_has_role('publisher'));

CREATE POLICY "Public read homepage items" ON public.homepage_items
    FOR SELECT TO anon, authenticated
    USING (true);

CREATE POLICY "Publisher manage homepage items" ON public.homepage_items
    FOR ALL TO authenticated
    USING (public.auth_has_role('publisher'))
    WITH CHECK (public.auth_has_role('publisher'));

-- Route redirects
CREATE POLICY "Public read redirects" ON public.route_redirects
    FOR SELECT TO anon, authenticated
    USING (true);

CREATE POLICY "Admin manage redirects" ON public.route_redirects
    FOR ALL TO authenticated
    USING (public.auth_has_role('admin'))
    WITH CHECK (public.auth_has_role('admin'));

-- -----------------------------------------------------------------------------
-- 4. PRIVATE OPERATIONAL TABLES POLICIES (STAFF ONLY)
-- -----------------------------------------------------------------------------

-- Source records (Zero public access)
CREATE POLICY "Staff read source records" ON public.source_records
    FOR SELECT TO authenticated
    USING (public.auth_has_role('editor'));

CREATE POLICY "Admin manage source records" ON public.source_records
    FOR ALL TO authenticated
    USING (public.auth_has_role('admin'))
    WITH CHECK (public.auth_has_role('admin'));

-- Editorial drafts (Zero public access)
CREATE POLICY "Staff read drafts" ON public.editorial_drafts
    FOR SELECT TO authenticated
    USING (public.auth_has_role('editor'));

CREATE POLICY "Editor modify drafts" ON public.editorial_drafts
    FOR ALL TO authenticated
    USING (public.auth_has_role('editor'))
    WITH CHECK (public.auth_has_role('editor'));

-- Editorial revisions (Immutable history)
CREATE POLICY "Staff read revisions" ON public.editorial_revisions
    FOR SELECT TO authenticated
    USING (public.auth_has_role('editor'));

CREATE POLICY "Editor insert revisions" ON public.editorial_revisions
    FOR INSERT TO authenticated
    WITH CHECK (public.auth_has_role('editor'));

-- Review findings
CREATE POLICY "Staff read review findings" ON public.review_findings
    FOR SELECT TO authenticated
    USING (public.auth_has_role('editor'));

CREATE POLICY "Editor modify review findings" ON public.review_findings
    FOR ALL TO authenticated
    USING (public.auth_has_role('editor'))
    WITH CHECK (public.auth_has_role('editor'));

-- Stream checks
CREATE POLICY "Staff read stream checks" ON public.stream_checks
    FOR SELECT TO authenticated
    USING (public.auth_has_role('editor'));

CREATE POLICY "Staff insert stream checks" ON public.stream_checks
    FOR INSERT TO authenticated
    WITH CHECK (public.auth_has_role('editor'));

-- Import jobs & items
CREATE POLICY "Staff read import jobs" ON public.import_jobs
    FOR SELECT TO authenticated
    USING (public.auth_has_role('editor'));

CREATE POLICY "Admin manage import jobs" ON public.import_jobs
    FOR ALL TO authenticated
    USING (public.auth_has_role('admin'))
    WITH CHECK (public.auth_has_role('admin'));

CREATE POLICY "Staff read import items" ON public.import_job_items
    FOR SELECT TO authenticated
    USING (public.auth_has_role('editor'));

CREATE POLICY "Admin manage import items" ON public.import_job_items
    FOR ALL TO authenticated
    USING (public.auth_has_role('admin'))
    WITH CHECK (public.auth_has_role('admin'));

-- Admin memberships (Self inspect, only admin grants)
CREATE POLICY "User read own membership" ON public.admin_memberships
    FOR SELECT TO authenticated
    USING (auth.uid() = user_id OR public.auth_has_role('admin'));

CREATE POLICY "Admin manage memberships" ON public.admin_memberships
    FOR ALL TO authenticated
    USING (public.auth_has_role('admin'))
    WITH CHECK (public.auth_has_role('admin'));

-- Audit events (Append-only by staff, zero public read)
CREATE POLICY "Staff read audit events" ON public.audit_events
    FOR SELECT TO authenticated
    USING (public.auth_has_role('admin'));

CREATE POLICY "Staff insert audit events" ON public.audit_events
    FOR INSERT TO authenticated
    WITH CHECK (public.auth_has_role('editor'));

-- Playback reports (Users can insert diagnostic reports, read own, staff can manage all)
CREATE POLICY "Public insert playback reports" ON public.playback_reports
    FOR INSERT TO anon, authenticated
    WITH CHECK (true);

CREATE POLICY "User read own playback reports" ON public.playback_reports
    FOR SELECT TO authenticated
    USING (auth.uid() = user_id OR public.auth_has_role('editor'));

CREATE POLICY "Staff manage playback reports" ON public.playback_reports
    FOR ALL TO authenticated
    USING (public.auth_has_role('editor'))
    WITH CHECK (public.auth_has_role('editor'));

-- -----------------------------------------------------------------------------
-- 5. OPTIONAL VIEWER ACCOUNT POLICIES (OWN-USER STRICT ISOLATION)
-- -----------------------------------------------------------------------------

-- Viewer profiles
CREATE POLICY "User manage own profile" ON public.viewer_profiles
    FOR ALL TO authenticated
    USING (auth.uid() = user_id)
    WITH CHECK (auth.uid() = user_id);

-- Watch progress (Strict ownership, composite unique user + variant)
CREATE POLICY "User manage own watch progress" ON public.watch_progress
    FOR ALL TO authenticated
    USING (auth.uid() = user_id)
    WITH CHECK (auth.uid() = user_id);

-- Watchlist items
CREATE POLICY "User manage own watchlist" ON public.watchlist_items
    FOR ALL TO authenticated
    USING (auth.uid() = user_id)
    WITH CHECK (auth.uid() = user_id);

-- Viewer preferences
CREATE POLICY "User manage own preferences" ON public.viewer_preferences
    FOR ALL TO authenticated
    USING (auth.uid() = user_id)
    WITH CHECK (auth.uid() = user_id);

-- -----------------------------------------------------------------------------
-- 6. SECURITY REMEDIATION: REVOKE EXECUTE ON UNPROTECTED DEFINER FUNCTIONS
-- -----------------------------------------------------------------------------
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM pg_proc p
        JOIN pg_namespace n ON p.pronamespace = n.oid
        WHERE n.nspname = 'public' AND p.proname = 'rls_auto_enable'
    ) THEN
        REVOKE EXECUTE ON FUNCTION public.rls_auto_enable() FROM PUBLIC, anon, authenticated;
    END IF;
END $$;

