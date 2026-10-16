const fs = require('fs');

async function main() {
  const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
  const key = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
  const token = tokens[key].token.access_token;
  const projectRef = 'zvwltfqhbpqtnjbsflvk';

  const sql = `
    SELECT id, source_id, display_name, status, is_pilot
    FROM public.dramas
    ORDER BY display_name;

    SELECT id, drama_id, label, source_id, status
    FROM public.collections
    WHERE label ILIKE '%orhan%' OR source_id ILIKE '%orhan%';

    SELECT id, drama_id, collection_id, label, title, source_id
    FROM public.media_items
    WHERE label ILIKE '%orhan%' OR title ILIKE '%orhan%' OR source_id ILIKE '%orhan%'
    LIMIT 10;
  `;

  const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
    method: 'POST',
    headers: {
      'Authorization': `Bearer ${token}`,
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ query: sql })
  });

  const data = await res.json();
  console.log('Result:', JSON.stringify(data, null, 2));
}

main().catch(console.error);
