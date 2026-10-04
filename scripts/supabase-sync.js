const fs = require('fs');
const path = require('path');
const crypto = require('crypto');

// Generate safe SQL literal
function sqlEscape(str) {
  if (str === null || str === undefined) return 'NULL';
  if (typeof str === 'number') return str;
  if (typeof str === 'boolean') return str ? 'true' : 'false';
  if (Array.isArray(str)) {
    if (str.length === 0) return "'{}'";
    const escapedItems = str.map(s => `"${String(s).replace(/"/g, '\\"')}"`);
    return `'{${escapedItems.join(',')}}'`;
  }
  if (typeof str === 'object') {
    return `'${JSON.stringify(str).replace(/'/g, "''")}'::jsonb`;
  }
  return `'${String(str).replace(/'/g, "''")}'`;
}

async function runSync() {
  const args = process.argv.slice(2);
  const isDryRun = args.includes('--dry-run');
  const exportSql = args.includes('--export-sql') || true;

  console.log(`=======================================================`);
  console.log(`  Drama Platform - Supabase Catalog Synchronizer`);
  console.log(`  Mode: ${isDryRun ? 'DRY-RUN' : 'EXPORT & MIGRATION GENERATOR'}`);
  console.log(`=======================================================\n`);

  const catalogDir = path.join(__dirname, '..', 'catalog_data');
  const catPath = path.join(catalogDir, 'catalog.json');
  const vidPath = path.join(catalogDir, 'videos.json');
  const revPath = path.join(catalogDir, 'organization_review_results.json');
  const dupPath = path.join(catalogDir, 'duplicate_streams.json');

  if (!fs.existsSync(catPath) || !fs.existsSync(vidPath)) {
    console.error(`ERROR: Catalog files not found in ${catalogDir}`);
    process.exit(1);
  }

  console.log(`[1/4] Reading organized catalog files...`);
  const catalog = JSON.parse(fs.readFileSync(catPath, 'utf8'));
  const videos = JSON.parse(fs.readFileSync(vidPath, 'utf8'));
  const reviews = fs.existsSync(revPath) ? JSON.parse(fs.readFileSync(revPath, 'utf8')) : [];
  const duplicates = fs.existsSync(dupPath) ? JSON.parse(fs.readFileSync(dupPath, 'utf8')) : [];

  console.log(`  - Dramas: ${catalog.dramas.length}`);
  console.log(`  - Collections: ${catalog.collections.length}`);
  console.log(`  - Episode groups: ${catalog.episode_groups.length}`);
  console.log(`  - Video variants: ${videos.length}`);
  console.log(`  - Review findings: ${reviews.length}`);
  console.log(`  - Duplicate clusters: ${duplicates.length}`);

  console.log(`\n[2/4] Resolving artwork & language sets...`);
  const dramaArtwork = {};
  const dramaLanguages = {};
  videos.forEach(v => {
    if (!dramaArtwork[v.drama_id] && v.thumbnail_urls && v.thumbnail_urls.length > 0) {
      dramaArtwork[v.drama_id] = v.thumbnail_urls[0];
    }
    if (!dramaLanguages[v.drama_id]) dramaLanguages[v.drama_id] = new Set();
    if (v.languages) v.languages.forEach(l => dramaLanguages[v.drama_id].add(l));
  });

  const historicalDramas = new Set([
    'mehmed-fetihler-sultani',
    'ertugrul-ghazi',
    'kurulus-osman',
    'kurulus-orhan',
    'alparslan-buyuk-selcuklu',
    'barbaroslar',
    'destan',
    'sultan-abdulhamid',
    'salahuddin-ayyubi',
    'mevlana-celaleddin-rumi',
    'yunus-emre',
    'mendirman-jaloliddin',
    'kosem-sultan',
    'al-hashashin'
  ]);

  console.log(`\n[3/4] Generating idempotent SQL seed file...`);
  const sqlLines = [];
  sqlLines.push('-- =============================================================================');
  sqlLines.push('-- Drama Platform - Full Catalog Database Seed');
  sqlLines.push(`-- Generated: ${new Date().toISOString()}`);
  sqlLines.push(`-- Records: ${catalog.dramas.length} dramas, ${catalog.collections.length} collections, ${catalog.episode_groups.length} groups, ${videos.length} videos`);
  sqlLines.push('-- =============================================================================\n');

  // Insert Dramas
  sqlLines.push('-- 1. Dramas');
  catalog.dramas.forEach(d => {
    const isPilot = d.id === 'mehmed-fetihler-sultani';
    const genres = ['Drama'];
    if (historicalDramas.has(d.id)) genres.push('Historical', 'Action');
    const langs = Array.from(dramaLanguages[d.id] || ['Urdu']);
    const poster = dramaArtwork[d.id] || null;
    const overview = isPilot
      ? 'A dramatic historical chronicle capturing the life, intellect, military stratagems, and rise of Sultan Mehmed II towards the conquest of Constantinople.'
      : `Preserved catalog records for ${d.name}, containing ${d.video_records} video entries.`;

    sqlLines.push(`
INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (${sqlEscape(d.id)}, ${sqlEscape(d.id)}, ${sqlEscape(d.name)}, ${sqlEscape(overview)}, 'published', ${isPilot}, ${sqlEscape(genres)}, ${sqlEscape(langs)}, ${sqlEscape(poster)}, ${sqlEscape(poster)}, ${d.video_records})
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();
`);

    // Aliases
    d.source_names.forEach(sn => {
      const norm = sn.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, '');
      sqlLines.push(`
INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
SELECT id, ${sqlEscape(sn)}, ${sqlEscape(norm)} FROM public.dramas WHERE source_id = ${sqlEscape(d.id)}
ON CONFLICT (drama_id, alias) DO NOTHING;
`);
    });
  });

  // Insert Collections
  sqlLines.push('\n-- 2. Collections');
  catalog.collections.forEach((c, idx) => {
    const isPilotCol = c.id === 'collection-68';
    const colType = c.source_heading.toLowerCase().includes('dubbed')
      ? 'dubbed'
      : c.source_heading.toLowerCase().includes('subtitle')
        ? 'subtitled'
        : 'unresolved';

    sqlLines.push(`
INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT ${sqlEscape(c.id)}, id, ${sqlEscape(c.id)}, ${sqlEscape(c.source_heading)}, ${sqlEscape(colType)}, ${sqlEscape(c.reported_seasons || [])}, ${sqlEscape(c.source_heading)}, ${idx}, 'published'
FROM public.dramas WHERE source_id = ${sqlEscape(c.drama_id)}
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();
`);
  });

  // Insert Episode Groups
  sqlLines.push('\n-- 3. Episode Groups');
  catalog.episode_groups.forEach((eg, idx) => {
    sqlLines.push(`
INSERT INTO public.episode_groups (source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
SELECT ${sqlEscape(eg.id)}, id, ${sqlEscape(eg.display_label)}, ${sqlEscape(eg.episode_number)}, ${sqlEscape(eg.bolum)}, ${sqlEscape(eg.part)}, ${eg.episode_number || eg.bolum || idx}, 'episode', 'published'
FROM public.collections WHERE source_id = ${sqlEscape(eg.collection_id)}
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();
`);
  });

  // Insert Video Variants & Streams
  sqlLines.push('\n-- 4. Video Variants & Stream Sources');
  videos.forEach(v => {
    const thumb = v.thumbnail_urls?.[0] || null;
    const durationMatch = typeof v.duration === 'string' && v.duration.match(/^PT(?:(\d+)H)?(?:(\d+)M)?(?:(\d+)S)?$/);
    const durationTotal = durationMatch ? Number(durationMatch[1] || 0) * 3600 + Number(durationMatch[2] || 0) * 60 + Number(durationMatch[3] || 0) : 0;
    const durSecs = durationTotal > 0 ? durationTotal : null;
    const groupId = v.episode_group_id || null;

    sqlLines.push(`
INSERT INTO public.video_variants (source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
SELECT ${sqlEscape(v.id)}, c.id, g.id, ${sqlEscape(v.display_label || v.title || v.id)}, ${sqlEscape(v.season)}, ${sqlEscape(v.languages || [])}, ${sqlEscape(v.version || 'subtitled')}, 'published', ${sqlEscape(durSecs)}, ${sqlEscape(thumb)}
FROM public.collections c
LEFT JOIN public.episode_groups g ON g.source_id = ${sqlEscape(groupId)}
WHERE c.source_id = ${sqlEscape(v.collection_id)}
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();
`);

    // Stream Sources
    if (v.stream_urls && v.stream_urls.length > 0) {
      v.stream_urls.forEach((url, sIdx) => {
        sqlLines.push(`
INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
SELECT id, ${sqlEscape(url)}, 'hls', true, ${sIdx + 1}, 'untested'
FROM public.video_variants WHERE source_id = ${sqlEscape(v.id)}
ON CONFLICT DO NOTHING;
`);
      });
    }
  });

  // Insert Review Findings
  sqlLines.push('\n-- 5. Review Findings');
  reviews.forEach(r => {
    sqlLines.push(`
INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (${sqlEscape('record-' + r.record_id)}, ${sqlEscape((r.flags || []).join(', '))}, 'warning', ${sqlEscape(r.heading)}, ${Boolean(r.resolved)}, ${sqlEscape(r.notes || '')});
`);
  });

  const outputPath = path.join(__dirname, '..', 'supabase', 'seed.sql');
  fs.writeFileSync(outputPath, sqlLines.join('\n'), 'utf8');

  const stats = fs.statSync(outputPath);
  console.log(`[4/4] Seed file generated: ${outputPath} (${(stats.size / 1024 / 1024).toFixed(2)} MB)`);
  console.log(`\n✓ Full catalog synchronization script complete!`);
}

runSync().catch(err => {
  console.error('Sync failed:', err);
  process.exit(1);
});
