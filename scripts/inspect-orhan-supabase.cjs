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

  const drama = await query("SELECT id, source_id, slug, display_name, status, is_pilot, poster_url, backdrop_url FROM public.dramas WHERE source_id = 'kurulus-orhan'");
  console.log('DRAMA:', drama);

  const cols = await query("SELECT id, source_id, slug, label, status, collection_type, reported_seasons FROM public.collections WHERE drama_id IN (SELECT id FROM public.dramas WHERE source_id = 'kurulus-orhan')");
  console.log('COLLECTIONS:', cols);

  const groups = await query("SELECT count(*) FROM public.episode_groups WHERE collection_id IN (SELECT id FROM public.collections WHERE source_id = 'collection-78')");
  console.log('GROUPS COUNT:', groups);

  const sampleGroups = await query("SELECT id, source_id, label, reported_episode_number, bolum, status FROM public.episode_groups WHERE collection_id IN (SELECT id FROM public.collections WHERE source_id = 'collection-78') ORDER BY reported_episode_number LIMIT 5");
  console.log('SAMPLE GROUPS:', sampleGroups);

  const sampleVariants = await query("SELECT id, source_id, display_label, languages, publication_state, stream_present FROM public.video_variants WHERE collection_id IN (SELECT id FROM public.collections WHERE source_id = 'collection-78') LIMIT 5");
  console.log('SAMPLE VARIANTS:', sampleVariants);
}

main().catch(console.error);
