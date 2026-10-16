const fs = require('fs');

async function main() {
  const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
  const key = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
  const token = tokens[key].token.access_token;
  const projectRef = 'zvwltfqhbpqtnjbsflvk';

  async function query(sql) {
    const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
      method: 'POST',
      headers: { 'Authorization': `Bearer ${token}`, 'Content-Type': 'application/json' },
      body: JSON.stringify({ query: sql })
    });
    return await res.json();
  }

  const hidden = await query(`
    SELECT 
      d.source_id, 
      d.display_name, 
      d.video_records_count, 
      d.languages,
      COUNT(DISTINCT c.id) as collections_count,
      COUNT(DISTINCT eg.id) as episode_groups_count
    FROM public.dramas d
    LEFT JOIN public.collections c ON c.drama_id = d.id
    LEFT JOIN public.episode_groups eg ON eg.collection_id = c.id
    WHERE d.status = 'hidden'
    GROUP BY d.source_id, d.display_name, d.video_records_count, d.languages
    ORDER BY d.video_records_count DESC;
  `);

  console.table(hidden);
}

main().catch(console.error);
