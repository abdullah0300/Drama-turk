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

  console.log('--- Episode Groups Status ---');
  const groupStats = await query(`SELECT status, count(*) as count FROM public.episode_groups GROUP BY status ORDER BY status;`);
  console.log(groupStats);

  console.log('--- Video Variants Publication State ---');
  const variantStats = await query(`SELECT publication_state, count(*) as count FROM public.video_variants GROUP BY publication_state ORDER BY publication_state;`);
  console.log(variantStats);

  console.log('--- Mehmed Pilot Episode Groups Status ---');
  const pilotGroups = await query(`
    SELECT eg.status, count(*) as count 
    FROM public.episode_groups eg
    JOIN public.collections c ON eg.collection_id = c.id
    WHERE c.source_id = 'collection-68'
    GROUP BY eg.status;
  `);
  console.log(pilotGroups);

  console.log('--- Mehmed Pilot Variants Status ---');
  const pilotVariants = await query(`
    SELECT vv.publication_state, count(*) as count 
    FROM public.video_variants vv
    JOIN public.episode_groups eg ON vv.group_id = eg.id
    JOIN public.collections c ON eg.collection_id = c.id
    WHERE c.source_id = 'collection-68'
    GROUP BY vv.publication_state;
  `);
  console.log(pilotVariants);
}

main().catch(console.error);
