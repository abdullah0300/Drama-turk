const fs = require('fs');

const catalog = JSON.parse(fs.readFileSync('catalog_data/catalog.json', 'utf8'));
const videos = JSON.parse(fs.readFileSync('catalog_data/videos.json', 'utf8'));

console.log('--- Searching for Kosem in Dramas ---');
const kosemDramas = catalog.dramas.filter(d => (d.name || '').toLowerCase().includes('kosem') || (d.id || '').toLowerCase().includes('kosem'));
console.log('Kosem dramas:', kosemDramas);

console.log('\n--- Searching for Kosem in Collections ---');
const kosemCollections = catalog.collections.filter(c => {
  const d = (c.drama_id || '').toLowerCase();
  const h = (c.source_heading || '').toLowerCase();
  return d.includes('kosem') || h.includes('kosem');
});
console.log('Kosem collections:', kosemCollections);

console.log('\n--- Searching for Kosem in Videos ---');
const kosemVideos = videos.filter(v => (v.drama_id || '').toLowerCase().includes('kosem') || (v.drama || '').toLowerCase().includes('kosem'));
console.log('Kosem videos count:', kosemVideos.length);
if (kosemVideos.length > 0) {
  console.log('Sample Kosem video:', {
    id: kosemVideos[0].id,
    drama: kosemVideos[0].drama,
    collection_id: kosemVideos[0].collection_id,
    catalog_heading: kosemVideos[0].catalog_heading,
    catalog_seasons: kosemVideos[0].catalog_seasons,
    season: kosemVideos[0].season,
    episode: kosemVideos[0].episode,
    languages: kosemVideos[0].languages,
    title: kosemVideos[0].title
  });
}
