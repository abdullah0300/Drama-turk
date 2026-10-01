const fs = require('fs');
const path = require('path');
const crypto = require('crypto');

function sqlEscape(str) {
  if (str === null || str === undefined) return 'NULL';
  if (typeof str === 'number') return str;
  if (typeof str === 'boolean') return str ? 'true' : 'false';
  if (Array.isArray(str)) {
    if (str.length === 0) return "'{}'";
    const escaped = str.map(s => '"' + String(s).replace(/"/g, '\\"') + '"');
    return "'{" + escaped.join(',') + "}'";
  }
  return "'" + String(str).replace(/'/g, "''") + "'";
}

const catalogDir = path.join(__dirname, '..', 'catalog_data');
const catalog = JSON.parse(fs.readFileSync(path.join(catalogDir, 'catalog.json'), 'utf8'));
const videos = JSON.parse(fs.readFileSync(path.join(catalogDir, 'videos.json'), 'utf8'));

const outDir = path.join(__dirname, '..', 'supabase', 'import_chunks');
if (!fs.existsSync(outDir)) {
  fs.mkdirSync(outDir, { recursive: true });
}

console.log('Generating chunks for:');
console.log(' - Total catalog episode groups:', catalog.episode_groups.length);
console.log(' - Total video variants:', videos.length);

// 1. Episode Groups (Exclude pilot collection-68 which is already published)
const nonPilotGroups = catalog.episode_groups.filter(eg => eg.collection_id !== 'collection-68');
const GROUP_CHUNK_SIZE = 250;
let groupChunkIdx = 0;

for (let i = 0; i < nonPilotGroups.length; i += GROUP_CHUNK_SIZE) {
  groupChunkIdx++;
  const slice = nonPilotGroups.slice(i, i + GROUP_CHUNK_SIZE);
  const rows = slice.map((eg, idx) => {
    const num = eg.episode_number !== null && eg.episode_number !== undefined ? eg.episode_number : 'NULL';
    const bolum = eg.bolum !== null && eg.bolum !== undefined ? eg.bolum : 'NULL';
    const part = eg.part !== null && eg.part !== undefined ? eg.part : 'NULL';
    const orderKey = eg.episode_number || eg.bolum || (i + idx + 1);

    return `(
      extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || ${sqlEscape(eg.id)}),
      ${sqlEscape(eg.id)},
      extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || ${sqlEscape(eg.collection_id)}),
      ${sqlEscape(eg.display_label || ('Episode ' + (i + idx + 1)))},
      ${num},
      ${bolum},
      ${part},
      ${orderKey},
      'episode',
      'draft'
    )`;
  });

  const sql = `INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES
${rows.join(',\n')}
ON CONFLICT (source_id) DO UPDATE SET
  label = CASE WHEN episode_groups.updated_at > episode_groups.created_at THEN episode_groups.label ELSE EXCLUDED.label END,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  status = CASE WHEN episode_groups.source_id LIKE 'collection-68%' THEN 'published' ELSE episode_groups.status END,
  updated_at = now();`;

  fs.writeFileSync(path.join(outDir, `groups_chunk_${String(groupChunkIdx).padStart(2, '0')}.sql`), sql, 'utf8');
}
console.log(`Generated ${groupChunkIdx} episode group chunks.`);

// 2. Video Variants (Exclude pilot collection-68 which is already published)
const nonPilotVideos = videos.filter(v => v.collection_id !== 'collection-68');
const VIDEO_CHUNK_SIZE = 200;
let videoChunkIdx = 0;

for (let i = 0; i < nonPilotVideos.length; i += VIDEO_CHUNK_SIZE) {
  videoChunkIdx++;
  const slice = nonPilotVideos.slice(i, i + VIDEO_CHUNK_SIZE);
  const rows = slice.map(v => {
    const thumb = v.thumbnail_urls?.[0] || null;
    const durSecs = v.duration && v.duration.includes('H') ? 2700 : 'NULL';
    const groupUUID = v.episode_group_id
      ? `extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || ${sqlEscape(v.episode_group_id)})`
      : 'NULL';
    const season = v.season !== null && v.season !== undefined ? v.season : 'NULL';

    return `(
      extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || ${sqlEscape(v.id)}),
      ${sqlEscape(v.id)},
      extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || ${sqlEscape(v.collection_id)}),
      ${groupUUID},
      ${sqlEscape(v.display_label || v.title || v.heading || v.id)},
      ${season},
      ${sqlEscape(v.languages || [])},
      ${sqlEscape(v.version || 'subtitled')},
      'draft',
      ${durSecs},
      ${sqlEscape(thumb)}
    )`;
  });

  const sql = `INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES
${rows.join(',\n')}
ON CONFLICT (source_id) DO UPDATE SET
  display_label = CASE WHEN video_variants.updated_at > video_variants.created_at THEN video_variants.display_label ELSE EXCLUDED.display_label END,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  publication_state = CASE WHEN video_variants.collection_id = extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-68') THEN 'published' ELSE video_variants.publication_state END,
  updated_at = now();`;

  fs.writeFileSync(path.join(outDir, `variants_chunk_${String(videoChunkIdx).padStart(2, '0')}.sql`), sql, 'utf8');
}
console.log(`Generated ${videoChunkIdx} video variant chunks.`);

// 3. Stream Sources (For all non-pilot videos that have streams)
const streamRows = [];
nonPilotVideos.forEach(v => {
  if (v.stream_urls && v.stream_urls.length > 0) {
    v.stream_urls.forEach((url, sIdx) => {
      streamRows.push(`(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || ${sqlEscape(v.id)} || ':' || ${sqlEscape(url)}),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || ${sqlEscape(v.id)}),
        ${sqlEscape(url)},
        'hls',
        true,
        ${sIdx + 1},
        'untested'
      )`);
    });
  }
});

const STREAM_CHUNK_SIZE = 250;
let streamChunkIdx = 0;
for (let i = 0; i < streamRows.length; i += STREAM_CHUNK_SIZE) {
  streamChunkIdx++;
  const slice = streamRows.slice(i, i + STREAM_CHUNK_SIZE);
  const sql = `INSERT INTO public.stream_sources (id, variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES
${slice.join(',\n')}
ON CONFLICT (variant_id, delivery_url) DO UPDATE SET
  is_active = EXCLUDED.is_active,
  priority = EXCLUDED.priority;`;

  fs.writeFileSync(path.join(outDir, `streams_chunk_${String(streamChunkIdx).padStart(2, '0')}.sql`), sql, 'utf8');
}
console.log(`Generated ${streamChunkIdx} stream source chunks (${streamRows.length} streams).`);

// 4. Source Records (For all 3,269 video records)
const sourceRecordRows = [];
videos.forEach(v => {
  const cleanJson = JSON.stringify({
    record_id: v.record_id,
    drama: v.drama,
    drama_id: v.drama_id,
    catalog_id: v.catalog_id,
    collection_id: v.collection_id,
    episode_group_id: v.episode_group_id,
    source_url: v.source_url,
    final_url: v.final_url,
    season_url: v.season_url,
    title: v.title,
    heading: v.heading,
    display_label: v.display_label,
    stream_urls: v.stream_urls,
    languages: v.languages,
    version: v.version,
    thumbnail_urls: v.thumbnail_urls,
    duration: v.duration,
    upload_date: v.upload_date,
    playback_verified: v.playback_verified
  });
  const hash = crypto.createHash('sha256').update(cleanJson).digest('hex');

  sourceRecordRows.push(`(
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'source:' || ${sqlEscape(v.id)}),
    ${sqlEscape(v.id)},
    ${sqlEscape(v.source_url || v.final_url || null)},
    ${sqlEscape(cleanJson)}::jsonb,
    ${sqlEscape(hash)}
  )`);
});

const SOURCE_CHUNK_SIZE = 150;
let sourceChunkIdx = 0;
for (let i = 0; i < sourceRecordRows.length; i += SOURCE_CHUNK_SIZE) {
  sourceChunkIdx++;
  const slice = sourceRecordRows.slice(i, i + SOURCE_CHUNK_SIZE);
  const sql = `INSERT INTO public.source_records (id, source_id, source_url, raw_json, content_hash)
VALUES
${slice.join(',\n')}
ON CONFLICT (source_id) DO UPDATE SET
  raw_json = EXCLUDED.raw_json,
  content_hash = EXCLUDED.content_hash;`;

  fs.writeFileSync(path.join(outDir, `sources_chunk_${String(sourceChunkIdx).padStart(2, '0')}.sql`), sql, 'utf8');
}
console.log(`Generated ${sourceChunkIdx} source record chunks (${sourceRecordRows.length} source records).`);
