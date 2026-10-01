const fs = require('fs');

async function main() {
  const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
  const key = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
  const token = tokens[key].token.access_token;
  const projectRef = 'zvwltfqhbpqtnjbsflvk';

  const sql = `
    SELECT 
      d.source_id as drama_id,
      d.display_name as drama_name,
      c.source_id as collection_id,
      c.label as collection_label,
      c.status as collection_status,
      eg.source_id as group_id,
      eg.label as group_label,
      eg.status as group_status
    FROM public.dramas d
    JOIN public.collections c ON c.drama_id = d.id
    JOIN public.episode_groups eg ON eg.collection_id = c.id
    WHERE d.source_id IN ('mehmed-fetihler-sultani', 'kurulus-osman', 'alparslan-buyuk-selcuklu')
    GROUP BY d.source_id, d.display_name, c.source_id, c.label, c.status, eg.source_id, eg.label, eg.status
    ORDER BY d.source_id, c.source_id, eg.source_id
    LIMIT 6;
  `;

  const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
    method: 'POST',
    headers: { 'Authorization': `Bearer ${token}`, 'Content-Type': 'application/json' },
    body: JSON.stringify({ query: sql })
  });

  console.log('Sample correctly matched routes:', await res.json());
}

main().catch(console.error);
