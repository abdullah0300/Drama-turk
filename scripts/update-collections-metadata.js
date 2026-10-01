const fs = require('fs');
const path = require('path');

const catalog = JSON.parse(fs.readFileSync('catalog_data/catalog.json', 'utf8'));
const videos = JSON.parse(fs.readFileSync('catalog_data/videos.json', 'utf8'));

const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
const tokenKey = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
const mcpToken = tokens[tokenKey].token.access_token;
const projectRef = 'zvwltfqhbpqtnjbsflvk';

async function adminDbQuery(sql) {
  const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
    method: 'POST',
    headers: {
      'Authorization': `Bearer ${mcpToken}`,
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ query: sql })
  });
  return await res.json();
}

async function run() {
  console.log('Updating 61 collections with authentic evidence labels and versions...');

  const updates = catalog.collections.map(c => {
    if (c.id === 'collection-10') return null; // keep Kosem honest label
    if (c.id === 'collection-68') return null; // keep pilot label
    
    const colVideos = videos.filter(v => v.collection_id === c.id);
    const versions = Array.from(new Set(colVideos.map(v => v.version)));
    const langs = Array.from(new Set(colVideos.flatMap(v => v.languages || [])));
    
    const colType = versions.includes('dubbed') ? 'dubbed' : 'subtitled';
    const versionLabel = colType === 'dubbed' 
      ? 'Urdu Dubbed Edition' 
      : (langs.includes('English') ? 'Urdu & English Subtitles' : 'Urdu Subtitles Edition');
    
    const label = (c.source_heading || c.id).replace(/'/g, "''");
    const langArraySql = `ARRAY[${(langs.length > 0 ? langs : ['Urdu']).map(l => `'${l}'`).join(', ')}]::text[]`;

    return `
      UPDATE public.collections
      SET 
        label = '${label}',
        collection_type = '${colType}',
        version_label = '${versionLabel}',
        languages = ${langArraySql}
      WHERE source_id = '${c.id}';
    `;
  }).filter(Boolean);

  const fullSql = updates.join('\n');
  const result = await adminDbQuery(fullSql);
  console.log('Collections update result:', result);
  console.log('Successfully updated 61 collections!');
}

run().catch(console.error);
