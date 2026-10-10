const fs = require('fs');

async function main() {
  const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
  const token = tokens['https://mcp.supabase.com/mcp'].token.access_token;
  const projectRef = 'zvwltfqhbpqtnjbsflvk';

  const sql = `
    SELECT source_id, display_name, status, is_pilot
    FROM public.dramas
    WHERE source_id IN ('teskilat', 'mehmed-fetihler-sultani', 'ask-ve-taht', 'alparslan-buyuk-selcuklu');

    SELECT source_id, drama_id, label, status, reported_seasons, collection_type
    FROM public.collections
    WHERE drama_id IN (SELECT id FROM public.dramas WHERE source_id = 'teskilat');
  `;

  const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
    method: 'POST',
    headers: { 'Authorization': `Bearer ${token}`, 'Content-Type': 'application/json' },
    body: JSON.stringify({ query: sql })
  });

  const data = await res.json();
  console.log('Result:', JSON.stringify(data, null, 2));
}

main().catch(console.error);
