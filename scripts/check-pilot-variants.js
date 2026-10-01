const fs = require('fs');

async function main() {
  const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
  const key = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
  const token = tokens[key].token.access_token;
  const projectRef = 'zvwltfqhbpqtnjbsflvk';

  const sql = `
    SELECT vv.display_label, vv.version, vv.languages, count(*) 
    FROM public.video_variants vv
    JOIN public.collections c ON vv.collection_id = c.id
    WHERE c.source_id = 'collection-68'
    GROUP BY vv.display_label, vv.version, vv.languages
    LIMIT 10;
  `;
  const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
    method: 'POST',
    headers: { 'Authorization': `Bearer ${token}`, 'Content-Type': 'application/json' },
    body: JSON.stringify({ query: sql })
  });
  console.log(await res.json());
}

main().catch(console.error);
