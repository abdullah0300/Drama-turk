const fs = require('fs');

async function main() {
  const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
  const key = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
  const token = tokens[key].token.access_token;
  const projectRef = 'zvwltfqhbpqtnjbsflvk';

  const sql = `
    SELECT 
      (SELECT count(*) FROM public.dramas) as dramas,
      (SELECT count(*) FROM public.collections) as collections,
      (SELECT count(*) FROM public.episode_groups) as episode_groups,
      (SELECT count(*) FROM public.video_variants) as video_variants,
      (SELECT count(*) FROM public.stream_sources) as stream_sources,
      (SELECT count(*) FROM public.source_records) as source_records;
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
  console.log('Current DB Counts:', data);
}

main().catch(console.error);
