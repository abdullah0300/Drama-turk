require('@next/env').loadEnvConfig(process.cwd());
const { loadTypescript } = require('./lib/load-typescript.cjs');
const { supabaseCatalog: repo } = loadTypescript('src/lib/repository/supabase-catalog-repository.ts');
(async () => {
  const drama = await repo.getDrama('mehmed-fetihler-sultani');
  if (!drama) throw new Error('Live drama is unavailable');
  const collections = await repo.getDramaCollections(drama.id);
  const rows = [];
  for (const c of collections) {
    const [groups, videos] = await Promise.all([repo.getCollectionEpisodeGroups(c.id), repo.getCollectionVideos(c.id)]);
    rows.push({ collection:c.id, groups:groups.length, videos:videos.length, playable:videos.filter(v=>v.stream_present).length,
      withThumbnail:videos.filter(v=>v.thumbnail_urls[0]).length,
      withDate:videos.filter(v=>v.upload_date).length, named:videos.filter(v=>v.title.startsWith('Mehmed')).length });
  }
  console.log(JSON.stringify(rows,null,2));
})().catch(e=>{console.error(e.message);process.exitCode=1;});
