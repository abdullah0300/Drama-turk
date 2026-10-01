const fs = require('fs');
const path = require('path');

async function main() {
  const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
  const key = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
  const token = tokens[key].token.access_token;
  const projectRef = 'zvwltfqhbpqtnjbsflvk';

  const chunksDir = path.join(__dirname, '..', 'supabase', 'import_chunks');
  const files = fs.readdirSync(chunksDir);

  const groupFiles = files.filter(f => f.startsWith('groups_chunk_')).sort();
  const variantFiles = files.filter(f => f.startsWith('variants_chunk_')).sort();
  const streamFiles = files.filter(f => f.startsWith('streams_chunk_')).sort();
  const sourceFiles = files.filter(f => f.startsWith('sources_chunk_')).sort();

  const orderedFiles = [
    ...groupFiles,
    ...variantFiles,
    ...streamFiles,
    ...sourceFiles
  ];

  console.log(`Starting execution of ${orderedFiles.length} chunk files...`);

  let completed = 0;
  for (const filename of orderedFiles) {
    const filePath = path.join(chunksDir, filename);
    const sql = fs.readFileSync(filePath, 'utf8');
    const start = Date.now();

    const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${token}`,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({ query: sql })
    });

    const duration = Date.now() - start;
    if (res.status !== 200 && res.status !== 201) {
      const errText = await res.text();
      console.error(`ERROR executing ${filename} (status ${res.status}): ${errText}`);
      process.exit(1);
    }

    completed++;
    console.log(`[${completed}/${orderedFiles.length}] Applied ${filename} (${duration}ms)`);
  }

  console.log('All import chunks applied successfully!');
}

main().catch(err => {
  console.error('Fatal error:', err);
  process.exit(1);
});
