const fs=require('fs'),assert=require('node:assert/strict');
const approved=JSON.parse(fs.readFileSync('docs/seo/mehmed-all-seasons-approved.json'));
const routes=JSON.parse(fs.readFileSync('.next/seo-route-input.json','utf8').replace(/^\uFEFF/,''));
const {loadTypescript}=require('./lib/load-typescript.cjs');
const seo=loadTypescript('src/lib/seo/catalog-seo.ts');
const decode=s=>s.replace(/&amp;/g,'&').replace(/&#x27;|&#39;/g,"'").replace(/&quot;/g,'"');
const results=[];let next=0;
async function worker(){while(next<routes.length){
 const row=routes[next++];if(seo.canonicalGroupId(row.source_id)!==row.source_id)continue;
 const expected=approved.find(r=>r.source_id===row.source_id);
 const response=await fetch('http://localhost:3100'+row.current_route_from_live_data,{signal:AbortSignal.timeout(120000)});
 assert.equal(response.status,200,row.source_id);const html=await response.text();
 assert.equal(decode(html.match(/<title>(.*?)<\/title>/s)[1]),expected.seo_title,row.source_id);
 assert.equal(decode(html.match(/<meta name="description" content="([^"]*)"/)[1]),expected.seo_description,row.source_id);
 const indexable=!html.includes('noindex');
 if(row.source_id==='collection-72-episode-1')assert.ok(!html.includes('video-3245'),'Trailer must not appear as a full episode');
 if(row.source_id==='collection-76-bolum-70')assert.ok(!html.includes('video-3975'),'Nine-second English file must not be selectable');
 if(indexable && expected.collection_id){
   assert.ok(html.includes('episode and Bolum guide'),row.source_id);
   assert.ok(!html.includes('Bolum null'),row.source_id);
   if(row.source_id==='collection-72')assert.ok(html.includes('Broadcast mapping unverified'));
 }
 const preview=expected.structured_article.find(s=>s.heading==='Official episode preview');
 if(indexable&&preview){assert.ok(decode(html).includes(preview.content),row.source_id);assert.ok(html.includes(preview.sources[0].url),row.source_id);}
 const graphs=[...html.matchAll(/<script type="application\/ld\+json">(.*?)<\/script>/gs)].flatMap(m=>JSON.parse(m[1])['@graph']||[]);
 const video=graphs.find(g=>g['@type']==='VideoObject');
 if(video){if(video.duration)assert.ok(/^PT\d+S$/.test(video.duration),row.source_id);assert.ok(video.contentUrl);assert.ok(video.uploadDate);}
 results.push({source_id:row.source_id,indexable,previewRendered:!!(indexable&&preview),verifiedVideoDuration:video?.duration||null});
}}
Promise.all(Array.from({length:3},worker)).then(()=>{
 assert.equal(results.length,104);assert.equal(results.filter(r=>r.indexable).length,102);
 assert.equal(results.filter(r=>r.previewRendered).length,87);
 fs.writeFileSync('docs/seo/mehmed-all-seasons-rendered-checks.json',JSON.stringify(results,null,2));
 console.log({checked:results.length,indexable:102,sourceLinkedEpisodePreviews:87,withVerifiedVideoDuration:results.filter(r=>r.verifiedVideoDuration).length});
}).catch(e=>{console.error(e);process.exitCode=1});
