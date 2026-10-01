const fs = require('fs');

async function main() {
  const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
  const key = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
  const token = tokens[key].token.access_token;
  const projectRef = 'zvwltfqhbpqtnjbsflvk';

  const sql = `
    UPDATE public.collections 
    SET 
      collection_type = 'subtitled',
      label = 'Season 2 (Subtitled)',
      version_label = 'Subtitled (Urdu & English)'
    WHERE source_id = 'collection-68';

    SELECT source_id, label, collection_type, version_label, languages 
    FROM public.collections 
    WHERE source_id = 'collection-68';
  `;

  const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
    method: 'POST',
    headers: { 'Authorization': `Bearer ${token}`, 'Content-Type': 'application/json' },
    body: JSON.stringify({ query: sql })
  });

  console.log('Updated collection-68:', await res.json());
}

main().catch(console.error);
