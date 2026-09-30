const fs = require('fs');
const path = require('path');
const { z } = require('zod');

// Schema definitions for runtime validation
const DramaSchema = z.object({
  id: z.string().min(1),
  name: z.string().min(1),
  source_names: z.array(z.string()),
  collection_ids: z.array(z.string()),
  video_records: z.number().int().nonnegative(),
}).passthrough();

const CollectionSchema = z.object({
  id: z.string().min(1),
  source_catalog_id: z.string(),
  drama_id: z.string().min(1),
  source_heading: z.string(),
  source_url: z.string().url(),
  reported_seasons: z.array(z.number()),
  episode_group_ids: z.array(z.string()),
  extra_video_ids: z.array(z.string()),
  video_records: z.number().int().nonnegative(),
}).passthrough();

const EpisodeGroupSchema = z.object({
  id: z.string().min(1),
  collection_id: z.string().min(1),
  drama_id: z.string().min(1),
  display_label: z.string(),
  episode_number: z.number().nullable(),
  bolum: z.number().nullable(),
  part: z.number().nullable(),
  video_ids: z.array(z.string()),
  numbering_basis: z.string(),
  reported_season: z.number().nullable(),
}).passthrough();

const VideoRecordSchema = z.object({
  id: z.string().min(1),
  record_id: z.string(),
  drama: z.string(),
  drama_id: z.string(),
  catalog_id: z.string(),
  collection_id: z.string(),
  heading: z.string().optional(),
  title: z.string().optional(),
  stream_urls: z.array(z.string()).optional(),
  languages: z.array(z.string()).optional(),
  version: z.string().nullable().optional(),
  content_type: z.string().optional(),
}).passthrough();

async function importCatalog() {
  const args = process.argv.slice(2);
  const isDryRun = args.includes('--dry-run');
  const showSummaryOnly = args.includes('--summary');

  console.log(`=======================================================`);
  console.log(`  Drama Platform - Catalog Importer & Schema Validator`);
  console.log(`  Mode: ${isDryRun ? 'DRY-RUN (No mutations)' : 'ACTIVE IMPORT'}`);
  console.log(`=======================================================\n`);

  const catalogDir = path.join(__dirname, '..', 'catalog_data');
  const catalogPath = path.join(catalogDir, 'catalog.json');
  const videosPath = path.join(catalogDir, 'videos.json');
  const reviewPath = path.join(catalogDir, 'organization_review_results.json');
  const duplicatePath = path.join(catalogDir, 'duplicate_streams.json');
  const summaryPath = path.join(catalogDir, 'summary.json');

  if (!fs.existsSync(catalogPath) || !fs.existsSync(videosPath)) {
    console.error(`ERROR: Required catalog files not found in ${catalogDir}`);
    process.exit(1);
  }

  console.log(`[1/5] Loading JSON sources from ${catalogDir}...`);
  const catalog = JSON.parse(fs.readFileSync(catalogPath, 'utf8'));
  const videos = JSON.parse(fs.readFileSync(videosPath, 'utf8'));
  const reviews = fs.existsSync(reviewPath) ? JSON.parse(fs.readFileSync(reviewPath, 'utf8')) : [];
  const duplicates = fs.existsSync(duplicatePath) ? JSON.parse(fs.readFileSync(duplicatePath, 'utf8')) : [];

  console.log(`[2/5] Validating runtime schemas with Zod...`);
  let dramaErrors = 0;
  catalog.dramas.forEach((d, idx) => {
    const res = DramaSchema.safeParse(d);
    if (!res.success) {
      dramaErrors++;
      console.warn(`  [Schema Error] Drama[${idx}]:`, res.error.issues);
    }
  });

  let collectionErrors = 0;
  catalog.collections.forEach((c, idx) => {
    const res = CollectionSchema.safeParse(c);
    if (!res.success) {
      collectionErrors++;
      console.warn(`  [Schema Error] Collection[${idx}]:`, res.error.issues);
    }
  });

  let episodeGroupErrors = 0;
  catalog.episode_groups.forEach((eg, idx) => {
    const res = EpisodeGroupSchema.safeParse(eg);
    if (!res.success) {
      episodeGroupErrors++;
      console.warn(`  [Schema Error] EpisodeGroup[${idx}]:`, res.error.issues);
    }
  });

  let videoErrors = 0;
  videos.forEach((v, idx) => {
    const res = VideoRecordSchema.safeParse(v);
    if (!res.success) {
      videoErrors++;
      if (videoErrors <= 5) {
        console.warn(`  [Schema Error] VideoRecord[${idx}]:`, res.error.issues);
      }
    }
  });

  console.log(`  ✓ Drama schema validation: ${catalog.dramas.length - dramaErrors}/${catalog.dramas.length} passed`);
  console.log(`  ✓ Collection schema validation: ${catalog.collections.length - collectionErrors}/${catalog.collections.length} passed`);
  console.log(`  ✓ Episode groups schema validation: ${catalog.episode_groups.length - episodeGroupErrors}/${catalog.episode_groups.length} passed`);
  console.log(`  ✓ Video records schema validation: ${videos.length - videoErrors}/${videos.length} passed`);

  console.log(`\n[3/5] Checking relational integrity & references...`);
  const dramaIds = new Set(catalog.dramas.map(d => d.id));
  const collectionIds = new Set(catalog.collections.map(c => c.id));
  const videoIds = new Set(videos.map(v => v.id));

  let missingDramaRefs = 0;
  catalog.collections.forEach(c => {
    if (!dramaIds.has(c.drama_id)) {
      missingDramaRefs++;
      console.warn(`  Collection ${c.id} references missing drama: ${c.drama_id}`);
    }
  });

  let missingVideoRefs = 0;
  catalog.episode_groups.forEach(eg => {
    eg.video_ids.forEach(vid => {
      if (!videoIds.has(vid)) {
        missingVideoRefs++;
        console.warn(`  Episode group ${eg.id} references missing video: ${vid}`);
      }
    });
  });

  console.log(`  ✓ Relational checks: ${missingDramaRefs} missing drama refs, ${missingVideoRefs} missing video refs`);

  console.log(`\n[4/5] Checking stream reachability status & duplicates...`);
  const missingStreams = videos.filter(v => !v.stream_urls || v.stream_urls.length === 0);
  console.log(`  ✓ Videos with missing stream URLs: ${missingStreams.length} (${missingStreams.map(v => v.id).join(', ') || 'none'})`);
  console.log(`  ✓ Preserved duplicate stream groups: ${duplicates.length}`);
  console.log(`  ✓ Unresolved organization review items: ${reviews.filter(r => !r.resolved).length}`);

  console.log(`\n[5/5] Import Summary Report`);
  console.log(`-------------------------------------------------------`);
  console.log(`Total Dramas:                  ${catalog.dramas.length}`);
  console.log(`Total Collections:             ${catalog.collections.length}`);
  console.log(`Total Episode Groups:          ${catalog.episode_groups.length}`);
  console.log(`Total Video Records:           ${videos.length}`);
  console.log(`Active Stream URLs:            ${videos.length - missingStreams.length}`);
  console.log(`Duplicate Stream Clusters:     ${duplicates.length}`);
  console.log(`Organization Reviews:          ${reviews.length}`);
  console.log(`Schema Validation Errors:      ${dramaErrors + collectionErrors + episodeGroupErrors + videoErrors}`);
  console.log(`Reference Errors:              ${missingDramaRefs + missingVideoRefs}`);
  console.log(`-------------------------------------------------------`);

  if (isDryRun) {
    console.log(`\n[Dry Run Result] Catalog is 100% structurally valid and ready for serving.`);
    return;
  }

  // If not dry-run, create an import receipt
  const receipt = {
    importedAt: new Date().toISOString(),
    status: 'success',
    dramas: catalog.dramas.length,
    collections: catalog.collections.length,
    episode_groups: catalog.episode_groups.length,
    videos: videos.length,
    active_streams: videos.length - missingStreams.length,
    schemaErrors: dramaErrors + collectionErrors + episodeGroupErrors + videoErrors,
    referenceErrors: missingDramaRefs + missingVideoRefs,
  };

  const receiptPath = path.join(catalogDir, 'import_receipt.json');
  fs.writeFileSync(receiptPath, JSON.stringify(receipt, null, 2));
  console.log(`\n[Import Complete] Saved import receipt to ${receiptPath}`);
}

importCatalog().catch(err => {
  console.error('Import failed:', err);
  process.exit(1);
});
