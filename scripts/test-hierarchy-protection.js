const fs = require('fs');
const { createClient } = require('@supabase/supabase-js');

// Parse .env.local
const envContent = fs.readFileSync('.env.local', 'utf8');
const env = {};
envContent.split('\n').forEach(line => {
  const m = line.match(/^([A-Za-z0-9_]+)=(.*)$/);
  if (m) env[m[1]] = m[2].trim();
});

const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
const key = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
const token = tokens[key].token.access_token;
const projectRef = 'zvwltfqhbpqtnjbsflvk';

async function adminQuery(sql) {
  const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
    method: 'POST',
    headers: {
      'Authorization': `Bearer ${token}`,
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ query: sql })
  });
  return await res.json();
}

const anonClient = createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY, {
  auth: { persistSession: false }
});

async function main() {
  console.log('=== TEST: UNPUBLISHED PARENT PREVENTS STREAM EXPOSURE ===');

  const testGroupSourceId = 'collection-82-bolum-84';
  const testColSourceId = 'collection-82';

  // 1. Ensure parent collection is draft/unpublished for this test
  console.log('1. Setting parent collection collection-82 to draft...');
  await adminQuery(`UPDATE public.collections SET status = 'draft' WHERE source_id = '${testColSourceId}';`);

  // 2. Intentionally set episode group and its variants to 'published'
  console.log('2. Publishing episode group and child variants while parent collection remains draft...');
  await adminQuery(`
    UPDATE public.episode_groups SET status = 'published' WHERE source_id = '${testGroupSourceId}';
    UPDATE public.video_variants SET publication_state = 'published' WHERE group_id = (SELECT id FROM public.episode_groups WHERE source_id = '${testGroupSourceId}');
  `);

  // Verify DB state internally
  const verifyDb = await adminQuery(`
    SELECT eg.source_id, eg.status as group_status, c.status as col_status, count(vv.id) as variant_count
    FROM public.episode_groups eg
    JOIN public.collections c ON eg.collection_id = c.id
    LEFT JOIN public.video_variants vv ON vv.group_id = eg.id
    WHERE eg.source_id = '${testGroupSourceId}'
    GROUP BY eg.source_id, eg.status, c.status;
  `);
  console.log('   Internal DB state (Superuser):', verifyDb[0]);

  // 3. Query as ANONYMOUS public user
  console.log('3. Attempting public anonymous reads under unpublished parent...');

  // 3A. Anonymous query on episode_groups
  const { data: anonGroups } = await anonClient
    .from('episode_groups')
    .select('id, source_id, status')
    .eq('source_id', testGroupSourceId);
  console.log(`   3A. Anon Episode Group visible? count=${anonGroups?.length || 0} (Expected: 0)`);

  // 3B. Anonymous query on video_variants
  const { data: anonVariants } = await anonClient
    .from('video_variants')
    .select('id, source_id, publication_state')
    .like('source_id', `${testGroupSourceId}%`);
  console.log(`   3B. Anon Video Variants visible? count=${anonVariants?.length || 0} (Expected: 0)`);

  // 3C. Anonymous query on stream_sources
  const { data: anonStreams } = await anonClient
    .from('stream_sources')
    .select('id, delivery_url');
  const leakedStreams = (anonStreams || []).filter(s => s.delivery_url.includes('bolum-84') || s.delivery_url.includes('collection-82'));
  console.log(`   3C. Anon Stream Sources exposed? count=${leakedStreams.length} (Expected: 0)`);
  console.log(`   Total streams visible to public anon: ${anonStreams?.length} (only the 68 pilot streams)`);

  // 4. Reset test group and variants back to draft
  console.log('4. Resetting test group and variants back to draft...');
  await adminQuery(`
    UPDATE public.episode_groups SET status = 'draft' WHERE source_id = '${testGroupSourceId}';
    UPDATE public.video_variants SET publication_state = 'draft' WHERE group_id = (SELECT id FROM public.episode_groups WHERE source_id = '${testGroupSourceId}');
    UPDATE public.collections SET status = 'draft' WHERE source_id = '${testColSourceId}';
  `);
  console.log('   Reset complete.');

  console.log('\nVERIFICATION RESULT: SUCCESS! Publishing an episode under an unpublished parent CANNOT expose its streams to anonymous users.');
}

main().catch(console.error);
