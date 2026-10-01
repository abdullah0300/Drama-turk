-- Migration: 20261001040000_editorial_overrides.sql
-- Enables clean separation of editorial overrides from imported raw catalog metadata

CREATE UNIQUE INDEX IF NOT EXISTS uq_published_editorial_group 
ON public.published_editorial (group_id) 
WHERE group_id IS NOT NULL;

CREATE UNIQUE INDEX IF NOT EXISTS uq_published_editorial_drama 
ON public.published_editorial (drama_id) 
WHERE drama_id IS NOT NULL;

CREATE UNIQUE INDEX IF NOT EXISTS uq_published_editorial_collection 
ON public.published_editorial (collection_id) 
WHERE collection_id IS NOT NULL;

-- Enable RLS and public read on published_editorial
ALTER TABLE public.published_editorial ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Public read published editorial" ON public.published_editorial;
CREATE POLICY "Public read published editorial"
ON public.published_editorial
FOR SELECT
TO anon, authenticated
USING (true);

DROP POLICY IF EXISTS "Staff manage published editorial" ON public.published_editorial;
CREATE POLICY "Staff manage published editorial"
ON public.published_editorial
FOR ALL
TO authenticated
USING (app_private.auth_has_role('editor'::text))
WITH CHECK (app_private.auth_has_role('editor'::text));
