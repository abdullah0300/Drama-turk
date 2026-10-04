const assert=require('node:assert/strict');const fs=require('fs');
const rows=JSON.parse(fs.readFileSync('docs/seo/mehmed-season4-approved.json'));
const base='/drama/mehmed-fetihler-sultani';
const decode=s=>s.replace(/&amp;/g,'&').replace(/&#x27;|&#39;/g,"'");
(async()=>{
 const results=[];
 for(const row of rows){
  const episode=row.group_id?Number(row.source_id.split('-').pop())-83:null;
  const dubbed=row.source_id.startsWith('collection-88');
  const path=base+(row.source_id=== 'mehmed-fetihler-sultani'?'':'/season-4'+(dubbed?'/urdu-dubbed':'')+(episode?'/episode-'+episode:''));
  const r=await fetch('http://localhost:3100'+path);assert.equal(r.status,200,path);const h=await r.text();
  assert.equal(decode(h.match(/<title>(.*?)<\/title>/s)[1]),row.seo_title);
  assert.equal(decode(h.match(/<meta name="description" content="([^"]*)"/)[1]),row.seo_description);
  assert.ok(h.includes('index, follow'));
  assert.equal((h.match(/<h1\b/g)||[]).length,1);
  if(episode){
   assert.ok(/<video[^>]*\bsrc="https:\/\//.test(h),path+': media source missing from initial HTML');
   assert.ok(/<video[^>]*\bposter="https:\/\//.test(h),path+': poster missing');
   assert.ok(h.includes('<h2 class="ed">Episode and broadcast number</h2>'));
   const graph=JSON.parse(h.match(/<script type="application\/ld\+json">(.*?)<\/script>/s)[1])['@graph'];
   const video=graph.find(g=>g['@type']==='VideoObject');
   assert.equal(!!video,!(episode===1&&!dubbed),'Verified upload-date behavior');
   if(video)assert.equal(video.subtitleLanguage,undefined);
   if(!dubbed)assert.deepEqual(graph.find(g=>g['@type']==='TVEpisode').subtitleLanguage.sort(),['en','ur']);
   if(episode<=2)assert.ok(h.includes('href="'+base+'/season-4'+(dubbed?'':'/urdu-dubbed')+'/episode-'+episode+'"'));
   else assert.ok(!h.includes('href="'+base+'/season-4/urdu-dubbed/episode-3"'));
  }else if(row.source_id==='mehmed-fetihler-sultani'){
   assert.ok(h.includes('Who plays Sultan Mehmed?'));
   for(const season of [1,2,3,4])assert.ok(h.includes('href="'+base+'/season-'+season+'"'));
   for(const season of [1,4])assert.ok(h.includes('href="'+base+'/season-'+season+'/urdu-dubbed"'));
  }else { assert.ok(h.includes('Season 4 episode and Bolum guide')); assert.ok(!h.includes('<span>Finale</span>')); }
  results.push({path,passed:true,title:row.seo_title.length,description:row.seo_description.length});
 }
 fs.writeFileSync('docs/seo/mehmed-season4-page-checks.json',JSON.stringify(results,null,2));console.log('PASS: all eight main/Season 4 pages, source/poster discovery, verified schemas, language facts, table links and matching editions.');
})().catch(e=>{console.error(e);process.exitCode=1});
