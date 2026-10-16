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

  const drama = await query("SELECT id, source_id, slug, display_name, status, is_pilot, languages, genres, short_overview FROM public.dramas WHERE source_id = 'ertugrul-ghazi'");
  console.log('DRAMA:', JSON.stringify(drama, null, 2));

  const cols = await query("SELECT c.id, c.source_id, c.slug, c.label, c.status, c.collection_type, c.reported_seasons, c.languages FROM public.collections c JOIN public.dramas d ON c.drama_id = d.id WHERE d.source_id = 'ertugrul-ghazi' ORDER BY c.reported_seasons");
  console.log('COLLECTIONS:', JSON.stringify(cols, null, 2));

  const epCounts = await query("SELECT c.source_id, count(eg.id) as episode_groups_count FROM public.collections c JOIN public.episode_groups eg ON eg.collection_id = c.id JOIN public.dramas d ON c.drama_id = d.id WHERE d.source_id = 'ertugrul-ghazi' GROUP BY c.source_id ORDER BY c.source_id");
  console.log('EPISODE COUNTS:', JSON.stringify(epCounts, null, 2));

  const ed = await query("SELECT pe.id, pe.drama_id, pe.collection_id, pe.locale, pe.approved_display_title, pe.seo_title, pe.seo_description FROM public.published_editorial pe LEFT JOIN public.dramas d ON pe.drama_id = d.id LEFT JOIN public.collections c ON pe.collection_id = c.id WHERE d.source_id = 'ertugrul-ghazi' OR c.source_id IN ('collection-2','collection-3','collection-4','collection-5','collection-6')");
  console.log('EDITORIAL:', JSON.stringify(ed, null, 2));
}

main().catch(console.error);
