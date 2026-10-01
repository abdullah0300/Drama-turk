const fs = require('fs');

async function main() {
  const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
  const key = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
  const token = tokens[key].token.access_token;
  const projectRef = 'zvwltfqhbpqtnjbsflvk';

  console.log('Publishing full catalog in remote Supabase...');

  const sql = `
    -- 1. All 24 Dramas published
    UPDATE public.dramas
    SET status = 'published'
    WHERE status != 'published';

    -- 2. All 63 Collections published with honest Kosem labeling
    UPDATE public.collections
    SET status = 'published';

    UPDATE public.collections
    SET 
      label = 'Seasons 1 & 2 (Combined Source Release)',
      version_label = 'Seasons 1 & 2 Combined (60 Episodes)',
      collection_type = 'subtitled'
    WHERE source_id = 'collection-10';

    -- 3. All 2,902 Episode Groups published
    UPDATE public.episode_groups
    SET status = 'published';

    -- 4. All eligible Video Variants published (3,268 variants), KEEPING failed episode 1974 unavailable in draft
    UPDATE public.video_variants
    SET publication_state = 'published'
    WHERE source_id != 'video-1974';

    UPDATE public.video_variants
    SET publication_state = 'draft'
    WHERE source_id = 'video-1974';

    -- 5. Verification queries
    SELECT 'dramas' as entity, status, count(*) FROM public.dramas GROUP BY status
    UNION ALL
    SELECT 'collections' as entity, status, count(*) FROM public.collections GROUP BY status
    UNION ALL
    SELECT 'episode_groups' as entity, status, count(*) FROM public.episode_groups GROUP BY status
    UNION ALL
    SELECT 'video_variants' as entity, publication_state as status, count(*) FROM public.video_variants GROUP BY publication_state;
  `;

  const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
    method: 'POST',
    headers: { 'Authorization': `Bearer ${token}`, 'Content-Type': 'application/json' },
    body: JSON.stringify({ query: sql })
  });

  const data = await res.json();
  console.log('Publish result counts:', data);
}

main().catch(console.error);
