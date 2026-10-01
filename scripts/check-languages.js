const fs = require('fs');
const path = require('path');

const catalog = JSON.parse(fs.readFileSync('catalog_data/catalog.json', 'utf8'));
const videos = JSON.parse(fs.readFileSync('catalog_data/videos.json', 'utf8'));

console.log('--- Catalog Collections Languages Sample ---');
catalog.collections.slice(0, 10).forEach(c => {
  console.log(`ID: ${c.id}, is_dubbed: ${c.is_dubbed}, is_subtitled: ${c.is_subtitled}, languages: ${JSON.stringify(c.languages)}`);
});

console.log('\n--- Pilot Collection-68 Videos ---');
const pilotVideos = videos.filter(v => v.collection_id === 'collection-68');
console.log(`Pilot videos count: ${pilotVideos.length}`);

// Group by languages & title clues
const langGroups = {};
pilotVideos.forEach(v => {
  const key = (v.languages || []).sort().join('+') || 'none';
  if (!langGroups[key]) langGroups[key] = { count: 0, sampleTitles: [], sampleNames: [] };
  langGroups[key].count++;
  if (langGroups[key].sampleTitles.length < 3) {
    langGroups[key].sampleTitles.push(v.title);
    langGroups[key].sampleNames.push(v.file_name || v.id);
  }
});
console.log('Pilot Video Language Groups:', JSON.stringify(langGroups, null, 2));

console.log('\n--- Check All Videos Language Evidence ---');
const allLangCombos = new Set();
videos.forEach(v => {
  allLangCombos.add((v.languages || []).sort().join('+'));
});
console.log('All unique video language combinations in videos.json:', Array.from(allLangCombos));
