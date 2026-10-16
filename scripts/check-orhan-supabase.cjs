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

  const drama = await query("SELECT id, source_id, slug, display_name, status, is_pilot FROM public.dramas WHERE source_id = 'kurulus-orhan'");
  console.log('DRAMA:', drama);

  const col = await query("SELECT id, source_id, slug, label, status, collection_type FROM public.collections WHERE source_id = 'collection-78'");
  console.log('COLLECTION:', col);

  const editorial = await query("SELECT target_type, target_slug, title, is_published FROM public.published_editorial WHERE target_slug = 'kurulus-orhan' OR target_slug = 'collection-78'");
  console.log('EDITORIAL:', editorial);
}

main().catch(console.error);
