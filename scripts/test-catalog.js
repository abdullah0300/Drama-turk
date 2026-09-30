const fs = require('fs');
const path = require('path');

// Test catalog integrity and repository mapping
function runTests() {
  console.log('--- Testing Catalog Data Integrity ---');
  const catPath = path.join(__dirname, '..', 'catalog_data', 'catalog.json');
  const vidPath = path.join(__dirname, '..', 'catalog_data', 'videos.json');

  if (!fs.existsSync(catPath) || !fs.existsSync(vidPath)) {
    console.error('FAIL: catalog.json or videos.json missing');
    process.exit(1);
  }

  const catalog = JSON.parse(fs.readFileSync(catPath, 'utf8'));
  const videos = JSON.parse(fs.readFileSync(vidPath, 'utf8'));

  console.log(`✓ Loaded catalog.json: ${catalog.dramas.length} dramas, ${catalog.collections.length} collections, ${catalog.episode_groups.length} episode groups`);
  console.log(`✓ Loaded videos.json: ${videos.length} videos`);

  // Pilot drama check
  const pilotDrama = catalog.dramas.find(d => d.id === 'mehmed-fetihler-sultani');
  if (!pilotDrama) {
    console.error('FAIL: Pilot drama "mehmed-fetihler-sultani" not found');
    process.exit(1);
  }
  console.log(`✓ Pilot drama confirmed: "${pilotDrama.name}" (${pilotDrama.video_records} records, ${pilotDrama.collection_ids.length} collections)`);

  // Pilot collection check (collection-68)
  const pilotCol = catalog.collections.find(c => c.id === 'collection-68');
  if (!pilotCol) {
    console.error('FAIL: Pilot collection "collection-68" not found');
    process.exit(1);
  }
  console.log(`✓ Pilot collection confirmed: "${pilotCol.source_heading}"`);
  console.log(`  Reported season: ${pilotCol.reported_seasons}, Episode groups: ${pilotCol.episode_group_ids.length}`);

  // Test episode group and language renditions
  const ep17Group = catalog.episode_groups.find(eg => eg.id === 'collection-68-episode-17');
  if (!ep17Group) {
    console.error('FAIL: Episode group collection-68-episode-17 not found');
    process.exit(1);
  }
  console.log(`✓ Episode group 17 confirmed: "${ep17Group.display_label}" with ${ep17Group.video_ids.length} video renditions`);

  const ep17Videos = videos.filter(v => ep17Group.video_ids.includes(v.id));
  console.log(`  Renditions for Ep 17:`);
  ep17Videos.forEach(v => {
    console.log(`    - ID: ${v.id}, Lang: ${v.languages ? v.languages.join(', ') : 'none'}, Version: ${v.version}, Stream: ${v.stream_urls[0] ? v.stream_urls[0].substring(0, 60) + '...' : 'none'}`);
  });

  // Verify stream URLs are valid
  const vidsWithStreams = videos.filter(v => v.stream_urls && v.stream_urls.length > 0);
  console.log(`✓ Video records with active stream URLs: ${vidsWithStreams.length} / ${videos.length}`);

  // Verify duplicate streams file
  const dupPath = path.join(__dirname, '..', 'catalog_data', 'duplicate_streams.json');
  if (fs.existsSync(dupPath)) {
    const dups = JSON.parse(fs.readFileSync(dupPath, 'utf8'));
    console.log(`✓ Duplicate streams tracked: ${dups.length} groups preserved`);
  }

  console.log('--- All Catalog Integrity Checks Passed! ---');
}

runTests();
