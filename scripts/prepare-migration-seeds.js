const fs = require('fs');
const path = require('path');

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
const reviews = fs.existsSync(path.join(catalogDir, 'organization_review_results.json')) 
  ? JSON.parse(fs.readFileSync(path.join(catalogDir, 'organization_review_results.json'), 'utf8')) 
  : [];

const dramaArtwork = {};
const dramaLanguages = {};
videos.forEach(v => {
  if (!dramaArtwork[v.drama_id] && v.thumbnail_urls && v.thumbnail_urls.length > 0) {
    dramaArtwork[v.drama_id] = v.thumbnail_urls[0];
  }
  if (!dramaLanguages[v.drama_id]) dramaLanguages[v.drama_id] = new Set();
  (v.languages || []).forEach(l => dramaLanguages[v.drama_id].add(l));
});

// 1. seed_01_dramas.sql
const dramaLines = ['-- 24 Dramas and Drama Aliases'];
catalog.dramas.forEach(d => {
  const isPilot = d.id === 'mehmed-fetihler-sultani';
  const dramaName = d.name || d.display_name || d.id;
  const poster = dramaArtwork[d.id] || null;
  const langs = Array.from(dramaLanguages[d.id] || ['Urdu', 'Turkish']);
  const genres = ['Drama'];
  if (['mehmed-fetihler-sultani', 'kurulus-osman', 'alparslan-buyuk-selcuklu', 'dirilis-ertugrul'].includes(d.id)) {
    genres.push('Historical', 'Action');
  }

  dramaLines.push(`
INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || ${sqlEscape(d.id)}),
  ${sqlEscape(d.id)},
  ${sqlEscape(d.id)},
  ${sqlEscape(dramaName)},
  ${sqlEscape(`Preserved catalog records for ${dramaName}, containing ${d.video_records || d.video_records_count || 0} video entries.`)},
  'published',
  ${isPilot ? 'true' : 'false'},
  ${sqlEscape(genres)},
  ${sqlEscape(langs)},
  ${sqlEscape(poster)},
  ${sqlEscape(poster)},
  ${d.video_records || d.video_records_count || 0}
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || ${sqlEscape(d.id)}),
  ${sqlEscape(dramaName)},
  ${sqlEscape(dramaName.toLowerCase())}
)
ON CONFLICT (drama_id, alias) DO NOTHING;
`);
});
fs.writeFileSync(path.join(__dirname, '..', 'supabase', 'seed_01_dramas.sql'), dramaLines.join('\n'), 'utf8');

// 2. seed_02_collections.sql
const collectionLines = ['-- 63 Catalog Collections'];
catalog.collections.forEach(c => {
  const cType = c.is_dubbed ? 'dubbed' : (c.is_subtitled ? 'subtitled' : 'unresolved');
  const seasons = (c.reported_seasons || []).map(Number).filter(n => !isNaN(n));
  const langs = c.languages || (c.is_dubbed ? ['Urdu'] : ['Urdu', 'English']);
  const slug = c.id;

  collectionLines.push(`
INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || ${sqlEscape(c.id)}),
  ${sqlEscape(c.id)},
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || ${sqlEscape(c.drama_id)}),
  ${sqlEscape(slug)},
  ${sqlEscape(c.display_title || c.collection_title || c.id)},
  ${sqlEscape(cType)},
  ${sqlEscape(seasons)},
  ${sqlEscape(c.version_note || null)},
  ${sqlEscape(langs)},
  'published',
  ${c.id === 'collection-68' ? -100 : 0}
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();
`);
});
fs.writeFileSync(path.join(__dirname, '..', 'supabase', 'seed_02_collections.sql'), collectionLines.join('\n'), 'utf8');

// 3. seed_03_settings_and_reviews.sql
const settingsLines = [
  '-- Site Settings & Review Findings',
  `
INSERT INTO public.public_site_settings (id, brand_name, wordmark, tagline, supporting_copy, accent_color, pilot_drama_source_id, pilot_collection_source_id, feature_flags)
VALUES (
  'current',
  'Drama Platform',
  'DRAMA PLATFORM',
  'Your drama. Without interruptions.',
  'No ads. No pop-ups. Just watch.',
  '#f59e0b',
  'mehmed-fetihler-sultani',
  'collection-68',
  '{"enable_viewer_accounts": false, "release_mode": "production"}'::jsonb
)
ON CONFLICT (id) DO UPDATE SET
  updated_at = now();
`
];
reviews.forEach(r => {
  const targetId = r.video_id || r.record_id || 'unknown';
  const flagType = r.decision || 'needs_review';
  const evidenceStr = typeof r.evidence === 'object' ? JSON.stringify(r.evidence) : String(r.evidence || '');
  settingsLines.push(`
INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  ${sqlEscape(targetId)},
  ${sqlEscape(flagType)},
  'warning',
  ${sqlEscape(evidenceStr)},
  true,
  ${sqlEscape(r.decision || '')}
);
`);
});
fs.writeFileSync(path.join(__dirname, '..', 'supabase', 'seed_03_settings_and_reviews.sql'), settingsLines.join('\n'), 'utf8');

// 4. seed_04_pilot_mehmed_s2.sql
const pilotLines = ['-- Pilot: Mehmed: Fetihler Sultani Season 2 (collection-68)'];
const pilotGroups = catalog.episode_groups.filter(eg => eg.collection_id === 'collection-68');
const pilotVideos = videos.filter(v => v.collection_id === 'collection-68');

pilotGroups.forEach((eg, idx) => {
  pilotLines.push(`
INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || ${sqlEscape(eg.id)}),
  ${sqlEscape(eg.id)},
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || ${sqlEscape(eg.collection_id)}),
  ${sqlEscape(eg.display_label)},
  ${sqlEscape(eg.episode_number)},
  ${sqlEscape(eg.bolum)},
  ${sqlEscape(eg.part)},
  ${eg.episode_number || eg.bolum || idx},
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();
`);
});

pilotVideos.forEach(v => {
  const thumb = v.thumbnail_urls?.[0] || null;
  const durSecs = v.duration && v.duration.includes('H') ? 2700 : null;
  const groupUUID = v.episode_group_id ? `extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || ${sqlEscape(v.episode_group_id)})` : 'NULL';

  pilotLines.push(`
INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || ${sqlEscape(v.id)}),
  ${sqlEscape(v.id)},
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || ${sqlEscape(v.collection_id)}),
  ${groupUUID},
  ${sqlEscape(v.display_label || v.title || v.id)},
  ${sqlEscape(v.season)},
  ${sqlEscape(v.languages || [])},
  ${sqlEscape(v.version || 'subtitled')},
  'published',
  ${sqlEscape(durSecs)},
  ${sqlEscape(thumb)}
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();
`);

  if (v.stream_urls && v.stream_urls.length > 0) {
    v.stream_urls.forEach((url, sIdx) => {
      pilotLines.push(`
INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || ${sqlEscape(v.id)}),
  ${sqlEscape(url)},
  'hls',
  true,
  ${sIdx + 1},
  'reachable'
)
ON CONFLICT DO NOTHING;
`);
    });
  }
});
fs.writeFileSync(path.join(__dirname, '..', 'supabase', 'seed_04_pilot_mehmed_s2.sql'), pilotLines.join('\n'), 'utf8');

console.log('Generated seed_01_dramas.sql:', fs.statSync(path.join(__dirname, '..', 'supabase', 'seed_01_dramas.sql')).size, 'bytes');
console.log('Generated seed_02_collections.sql:', fs.statSync(path.join(__dirname, '..', 'supabase', 'seed_02_collections.sql')).size, 'bytes');
console.log('Generated seed_03_settings_and_reviews.sql:', fs.statSync(path.join(__dirname, '..', 'supabase', 'seed_03_settings_and_reviews.sql')).size, 'bytes');
console.log('Generated seed_04_pilot_mehmed_s2.sql:', fs.statSync(path.join(__dirname, '..', 'supabase', 'seed_04_pilot_mehmed_s2.sql')).size, 'bytes');
