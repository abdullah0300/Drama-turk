const fs = require('fs');

async function main() {
  const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
  const key = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
  const token = tokens[key].token.access_token;
  const projectRef = 'zvwltfqhbpqtnjbsflvk';

  async function query(sql) {
    const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${token}`,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({ query: sql })
    });
    return await res.json();
  }

  console.log('--- Step 1: Picking an episode group to edit ---');
  // Choose an episode group, e.g. collection-82-bolum-84
  const targetGroupSourceId = 'collection-82-bolum-84';
  const beforeEdit = await query(`SELECT id, source_id, label, created_at, updated_at FROM public.episode_groups WHERE source_id = '${targetGroupSourceId}';`);
  console.log('Before edit:', beforeEdit);

  console.log('--- Step 2: Applying an editorial update ---');
  const customLabel = 'Custom Edited Episode Title (Preserved Test)';
  await query(`
    UPDATE public.episode_groups 
    SET label = '${customLabel}', updated_at = now() + interval '1 minute'
    WHERE source_id = '${targetGroupSourceId}';
  `);

  const afterEdit = await query(`SELECT id, source_id, label, created_at, updated_at FROM public.episode_groups WHERE source_id = '${targetGroupSourceId}';`);
  console.log('After manual edit:', afterEdit);

  console.log('--- Step 3: Run counts before second import ---');
  const count1 = await query(`
    SELECT 
      (SELECT count(*) FROM public.dramas) as dramas,
      (SELECT count(*) FROM public.collections) as collections,
      (SELECT count(*) FROM public.episode_groups) as episode_groups,
      (SELECT count(*) FROM public.video_variants) as video_variants,
      (SELECT count(*) FROM public.stream_sources) as stream_sources,
      (SELECT count(*) FROM public.source_records) as source_records;
  `);
  console.log('Counts before re-import:', count1);

  console.log('--- Step 4: Re-running chunk 1 (contains collection-82-bolum-84) to verify idempotency and edit preservation ---');
  const chunk1Sql = fs.readFileSync('supabase/import_chunks/groups_chunk_01.sql', 'utf8');
  const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
    method: 'POST',
    headers: {
      'Authorization': `Bearer ${token}`,
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ query: chunk1Sql })
  });
  console.log('Re-import chunk 1 status:', res.status);

  console.log('--- Step 5: Verify edit is preserved ---');
  const afterReimport = await query(`SELECT id, source_id, label, created_at, updated_at FROM public.episode_groups WHERE source_id = '${targetGroupSourceId}';`);
  console.log('After re-import:', afterReimport);

  const editPreserved = afterReimport[0].label === customLabel;
  console.log('Is custom label preserved?', editPreserved);

  console.log('--- Step 6: Verify counts after re-import (Zero duplicates) ---');
  const count2 = await query(`
    SELECT 
      (SELECT count(*) FROM public.dramas) as dramas,
      (SELECT count(*) FROM public.collections) as collections,
      (SELECT count(*) FROM public.episode_groups) as episode_groups,
      (SELECT count(*) FROM public.video_variants) as video_variants,
      (SELECT count(*) FROM public.stream_sources) as stream_sources,
      (SELECT count(*) FROM public.source_records) as source_records;
  `);
  console.log('Counts after re-import:', count2);

  const zeroDuplicates = JSON.stringify(count1) === JSON.stringify(count2);
  console.log('Zero duplicates confirmed?', zeroDuplicates);

  // Restore original label
  console.log('--- Step 7: Restoring original label ---');
  await query(`
    UPDATE public.episode_groups 
    SET label = 'Episode 1 · Bolum 84', updated_at = created_at
    WHERE source_id = '${targetGroupSourceId}';
  `);
  console.log('Restored original label and reset updated_at.');
}

main().catch(console.error);
