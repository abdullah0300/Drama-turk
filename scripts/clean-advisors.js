const fs = require('fs');

async function main() {
  const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
  const key = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
  const token = tokens[key].token.access_token;
  const projectRef = 'zvwltfqhbpqtnjbsflvk';

  const sql = `
    -- Move helper functions to app_private schema
    CREATE OR REPLACE FUNCTION app_private.is_collection_published(col_uuid UUID)
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

    CREATE OR REPLACE FUNCTION app_private.is_group_published(grp_uuid UUID)
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

    -- Update policies to use app_private schema
    DROP POLICY IF EXISTS "Public read published groups" ON public.episode_groups;
    CREATE POLICY "Public read published groups"
    ON public.episode_groups
    FOR SELECT
    TO anon, authenticated
    USING (
      (status = 'published' AND app_private.is_collection_published(collection_id))
      OR app_private.auth_has_role('editor'::text)
    );

    DROP POLICY IF EXISTS "Public read published variants" ON public.video_variants;
    CREATE POLICY "Public read published variants"
    ON public.video_variants
    FOR SELECT
    TO anon, authenticated
    USING (
      (
        publication_state = 'published'
        AND app_private.is_collection_published(collection_id)
        AND (group_id IS NULL OR app_private.is_group_published(group_id))
      )
      OR app_private.auth_has_role('editor'::text)
    );

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
            AND app_private.is_collection_published(vv.collection_id)
            AND (vv.group_id IS NULL OR app_private.is_group_published(vv.group_id))
        )
      )
      OR app_private.auth_has_role('editor'::text)
    );

    -- Drop the functions from public schema
    DROP FUNCTION IF EXISTS public.is_collection_published(UUID);
    DROP FUNCTION IF EXISTS public.is_group_published(UUID);
  `;

  const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
    method: 'POST',
    headers: { 'Authorization': `Bearer ${token}`, 'Content-Type': 'application/json' },
    body: JSON.stringify({ query: sql })
  });

  console.log('Result:', await res.json());
}

main().catch(console.error);
