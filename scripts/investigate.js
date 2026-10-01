const fs = require('fs');

async function main() {
  const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
  const key = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
  const token = tokens[key].token.access_token;
  const projectRef = 'zvwltfqhbpqtnjbsflvk';

  async function query(sql) {
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

  console.log('--- 1. Collection-82 Mapping ---');
  const col82 = await query(`
    SELECT c.source_id as col_id, c.label as col_label, d.source_id as drama_id, d.display_name as drama_name
    FROM public.collections c
    JOIN public.dramas d ON c.drama_id = d.id
    WHERE c.source_id = 'collection-82';
  `);
  console.log(col82);

  console.log('--- 2. What drama has Bolum 84 in Kurulus Osman? ---');
  const koCols = await query(`
    SELECT c.source_id as col_id, c.label, count(eg.id) as group_count
    FROM public.collections c
    JOIN public.dramas d ON c.drama_id = d.id
    LEFT JOIN public.episode_groups eg ON eg.collection_id = c.id
    WHERE d.source_id = 'kurulus-osman'
    GROUP BY c.source_id, c.label
    LIMIT 5;
  `);
  console.log(koCols);

  console.log('--- 3. RLS policies on stream_sources, video_variants, episode_groups ---');
  const policies = await query(`
    SELECT tablename, policyname, permissive, roles, cmd, qual, with_check
    FROM pg_policies
    WHERE schemaname = 'public' AND tablename IN ('stream_sources', 'video_variants', 'episode_groups', 'collections', 'dramas')
    ORDER BY tablename, policyname;
  `);
  console.log(JSON.stringify(policies, null, 2));

  console.log('--- 4. Check admin_memberships & auth users ---');
  const admins = await query(`SELECT * FROM public.admin_memberships;`);
  console.log('Admin memberships:', admins);
  const authUsers = await query(`SELECT id, email, role, created_at FROM auth.users LIMIT 5;`);
  console.log('Auth users:', authUsers);

  console.log('--- 5. Check published_editorial schema ---');
  const editorialCols = await query(`
    SELECT column_name, data_type, is_nullable 
    FROM information_schema.columns 
    WHERE table_schema = 'public' AND table_name = 'published_editorial';
  `);
  console.log('published_editorial columns:', editorialCols);
}

main().catch(console.error);
