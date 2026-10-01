const fs = require('fs');

const videos = JSON.parse(fs.readFileSync('catalog_data/videos.json', 'utf8'));

let dubbedCount = 0;
let urduSubCount = 0;
let engSubCount = 0;

videos.forEach(v => {
  const t = (v.title || '').toLowerCase();
  if (t.includes('dubbed') || t.includes('dub')) dubbedCount++;
  if (t.includes('urdu subtitles') || t.includes('urdu sub')) urduSubCount++;
  if (t.includes('english subtitles') || t.includes('english sub')) engSubCount++;
});

console.log({
  totalVideos: videos.length,
  dubbedInTitle: dubbedCount,
  urduSubInTitle: urduSubCount,
  engSubInTitle: engSubCount
});

// Check collection-68 specifically
const pilotVideos = videos.filter(v => v.collection_id === 'collection-68');
let pDubbed = 0, pUrduSub = 0, pEngSub = 0;
pilotVideos.forEach(v => {
  const t = (v.title || '').toLowerCase();
  if (t.includes('dubbed') || t.includes('dub')) pDubbed++;
  if (t.includes('urdu subtitle') || t.includes('urdu sub')) pUrduSub++;
  if (t.includes('english subtitle') || t.includes('english sub')) pEngSub++;
});

console.log('Pilot collection-68:', {
  totalPilot: pilotVideos.length,
  pDubbed,
  pUrduSub,
  pEngSub
});
