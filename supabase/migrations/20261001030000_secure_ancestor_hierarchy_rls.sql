-- Migration: 20261001030000_secure_ancestor_hierarchy_rls.sql
-- Enforce complete ancestor hierarchy on episode_groups, video_variants, and stream_sources
-- An episode or stream is NEVER publicly accessible unless the entire chain (drama + collection + group + variant) is published!

-- 1. Helper function to check if collection is published and its parent drama is published
CREATE OR REPLACE FUNCTION public.is_collection_published(col_uuid UUID)
RETURNS BOOLEAN
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path = public, pg_temp
AS $$
  SELECT EXISTS (
    SELECT 1 
    FROM public.collections c
    JOIN public.dramas d ON c.drama_id = d.id
    WHERE c.id = col_uuid
      AND c.status = 'published'
      AND d.status = 'published'
  );
$$;

REVOKE ALL ON FUNCTION public.is_collection_published(UUID) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.is_collection_published(UUID) TO authenticated, anon;

-- 2. Helper function to check if group is published and its parent collection and drama are published
CREATE OR REPLACE FUNCTION public.is_group_published(grp_uuid UUID)
RETURNS BOOLEAN
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path = public, pg_temp
AS $$
  SELECT EXISTS (
    SELECT 1 
    FROM public.episode_groups eg
    JOIN public.collections c ON eg.collection_id = c.id
    JOIN public.dramas d ON c.drama_id = d.id
    WHERE eg.id = grp_uuid
      AND eg.status = 'published'
      AND c.status = 'published'
      AND d.status = 'published'
  );
$$;

REVOKE ALL ON FUNCTION public.is_group_published(UUID) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.is_group_published(UUID) TO authenticated, anon;

-- 3. Update public read policy on episode_groups
DROP POLICY IF EXISTS "Public read published groups" ON public.episode_groups;
CREATE POLICY "Public read published groups"
ON public.episode_groups
FOR SELECT
TO anon, authenticated
USING (
  (status = 'published' AND public.is_collection_published(collection_id))
  OR app_private.auth_has_role('editor'::text)
);

-- 4. Update public read policy on video_variants
DROP POLICY IF EXISTS "Public read published variants" ON public.video_variants;
CREATE POLICY "Public read published variants"
ON public.video_variants
FOR SELECT
TO anon, authenticated
USING (
  (
    publication_state = 'published'
    AND public.is_collection_published(collection_id)
    AND (group_id IS NULL OR public.is_group_published(group_id))
  )
  OR app_private.auth_has_role('editor'::text)
);

-- 5. Update public read policy on stream_sources
DROP POLICY IF EXISTS "Public read active streams of published variants" ON public.stream_sources;
CREATE POLICY "Public read active streams of published variants"
ON public.stream_sources
FOR SELECT
TO anon, authenticated
USING (
  (
    is_active = true
    AND EXISTS (
      SELECT 1
      FROM public.video_variants vv
      WHERE vv.id = stream_sources.variant_id
        AND vv.publication_state = 'published'
        AND public.is_collection_published(vv.collection_id)
        AND (vv.group_id IS NULL OR public.is_group_published(vv.group_id))
    )
  )
  OR app_private.auth_has_role('editor'::text)
);
