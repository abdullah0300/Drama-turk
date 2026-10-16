const fs = require('fs');

async function run() {
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

  const drama = await query("SELECT id, source_id, slug, display_name, status, is_pilot, poster_url, backdrop_url, video_records_count FROM public.dramas WHERE source_id = 'ertugrul-ghazi'");
  console.log('DRAMA:', drama);

  const cols = await query("SELECT id, source_id, slug, label, status, collection_type, reported_seasons FROM public.collections WHERE drama_id IN (SELECT id FROM public.dramas WHERE source_id = 'ertugrul-ghazi') ORDER BY reported_seasons");
  console.log('COLLECTIONS:', cols);

  const vCount = await query("SELECT count(*) FROM public.video_variants WHERE collection_id IN (SELECT id FROM public.collections WHERE drama_id IN (SELECT id FROM public.dramas WHERE source_id = 'ertugrul-ghazi'))");
  console.log('VIDEO VARIANTS COUNT:', vCount);

  if (drama && drama[0]) {
    const ed = await query(`SELECT id, drama_id, collection_id, approved_display_title, seo_title FROM public.published_editorial WHERE drama_id = '${drama[0].id}'`);
    console.log('EDITORIAL:', ed);
  }
}

run().catch(console.error);
