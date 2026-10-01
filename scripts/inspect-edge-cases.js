const fs = require('fs');

const reviewResults = JSON.parse(fs.readFileSync('catalog_data/organization_review_results.json', 'utf8'));
const videos = JSON.parse(fs.readFileSync('catalog_data/videos.json', 'utf8'));
const catalog = JSON.parse(fs.readFileSync('catalog_data/catalog.json', 'utf8'));

console.log('--- Review Results Keys & Samples ---');
console.log('Count:', reviewResults.length);
reviewResults.forEach(r => {
  if (r.id === 'video-1974' || r.record_id === 1974 || (r.drama_id || '').includes('alparslan') && r.status === 'failed') {
    console.log('Alparslan record:', r);
  }
  if ((r.drama_id || '').includes('osman') && r.content_type === 'extra') {
    console.log('Osman extra:', r);
  }
  if ((r.drama_id || '').includes('kosem')) {
    console.log('Kosem sample:', r.id, r.collection_id, r.drama_id, r.title);
  }
});

// Also search videos.json for 1974
const v1974 = videos.find(v => v.id === 'video-1974' || v.id === 1974 || v.record_id === 1974);
console.log('v1974 in videos.json:', v1974);

// Search catalog for Kosem collections
const kosemCollections = catalog.collections.filter(c => c.drama_id === 'muhtesem-yuzyil-kosem' || (c.id || '').includes('kosem'));
console.log('Kosem collections:', kosemCollections);

// Check Osman extras in videos.json or catalog
const osmanExtras = videos.filter(v => v.drama_id === 'kurulus-osman' && (v.content_type === 'extra' || (v.title || '').toLowerCase().includes('behind') || (v.title || '').toLowerCase().includes('trailer')));
console.log('Osman extras count:', osmanExtras.length, osmanExtras.map(v => ({ id: v.id, title: v.title, content_type: v.content_type })));
