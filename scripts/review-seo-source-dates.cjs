// Read-only evidence collection. Does not change the catalog or publish dates.
require('@next/env').loadEnvConfig(process.cwd());
const fs = require('node:fs');
const path = require('node:path');
const { createClient } = require('@supabase/supabase-js');
const output = path.join(process.cwd(), 'artifacts/seo-fixes');
const ids = ['mehmed-fetihler-sultani', 'alparslan-buyuk-selcuklu', 'ask-ve-taht'];
const client = createClient(process.env.NEXT_PUBLIC_SUPABASE_URL, process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY, { auth: { persistSession: false } });
async function query(builder) { const { data, error } = await builder; if (error) throw error; return data; }
(async () => {
  const dramas = await query(client.from('dramas').select('id,source_id,status').in('source_id', ids));
  const collections = await query(client.from('collections').select('id,source_id,drama_id,reported_seasons,collection_type,status').in('drama_id', dramas.map(d => d.id)));
  const variants = await query(client.from('video_variants').select('*').in('collection_id', collections.map(c => c.id)).eq('publication_state', 'published'));
  const sources = await query(client.from('source_records').select('source_id,source_url,raw_json').in('source_id', variants.map(v => v.source_id)));
  const sourceMap = new Map(sources.map(s => [s.source_id, s]));
  const groups = await query(client.from('episode_groups').select('*').in('collection_id', collections.map(c => c.id)));
  const editorial = await query(client.from('published_editorial').select('*').in('group_id', groups.map(g => g.id)));
  const rows = variants.map(v => ({ ...v, collection: collections.find(c => c.id === v.collection_id), source: sourceMap.get(v.source_id) }));
  fs.mkdirSync(output, { recursive: true });
  fs.writeFileSync(path.join(output, 'database-before.json'), JSON.stringify({ checkedAt: new Date().toISOString(), dramas, collections, groups, editorial, variants: rows }, null, 2));
  fs.writeFileSync(path.join(output, 'date-review-input.json'), JSON.stringify(rows.filter(v => !v.source_uploaded_at && v.collection.drama_id !== dramas.find(d => d.source_id === 'mehmed-fetihler-sultani').id), null, 2));
  console.log(JSON.stringify({ variants: rows.length, missingDates: rows.filter(v => !v.source_uploaded_at).length, sourceRecords: sources.length, output }));
})().catch(e => { console.error(e.message); process.exitCode = 1; });
