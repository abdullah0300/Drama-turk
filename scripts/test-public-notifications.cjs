// No network or database writes: limited notifications retain the full list's order.
const assert = require('node:assert/strict');
const { loadTypescript } = require('./lib/load-typescript.cjs');
const { supabaseCatalog: repo } = loadTypescript('src/lib/repository/supabase-catalog-repository.ts');
const dramas = Array.from({length: 12}, (_, i) => ({id: `drama-${i}`, collection_ids: [`collection-${i}`], playable: true}));
let scans = 0;
repo.getAllDramas = async () => dramas;
repo.getDramaCollections = async id => {
  scans++;
  return [{id: id.replace('drama', 'collection'), drama_id: id, label:'Season 1', reported_seasons:[1], version:'subtitled', status:'published'}];
};
repo.getCollectionEpisodeGroups = async id => [{id:`${id}-episode-1`, episode_number:1, bolum:1, part:null}];
repo.getVideosForGroup = async id => id.startsWith('collection-2-') ? [] : [{id:`video-${id}`, stream_present:true}];
(async () => {
  const priority = ['drama-4', 'drama-2', 'drama-9'];
  const full = await repo.getLatestEpisodePerDrama(priority);
  assert.equal(scans, 12);
  scans = 0;
  const limited = await repo.getLatestEpisodePerDrama(priority, 5);
  assert.deepEqual(limited.map(r => r.href), full.slice(0, 5).map(r => r.href));
  assert.ok(scans < 12, 'Stop querying dramas once the requested playable picks exist');
  scans = 0;
  assert.deepEqual(await repo.getLatestEpisodePerDrama(priority, 0), []);
  assert.equal(scans, 0);
  console.log('PASS: priority order, unplayable-release fallback, bounded scans and zero limit.');
})().catch(e => {console.error(e); process.exitCode = 1;});
