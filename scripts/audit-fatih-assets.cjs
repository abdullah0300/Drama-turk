const fs=require('fs');
const decode=s=>s.replace(/&amp;/g,'&');
(async()=>{
 const xml=await(await fetch((process.argv[2] || 'https://greatnation.webcraftio.com')+'/video-sitemap.xml')).text();
 const thumbnails=[...xml.matchAll(/<url>([\s\S]*?)<\/url>/g)].filter(m=>/<loc>https:\/\/greatnation\.webcraftio\.com\/drama\/mehmed-fetihler-sultani/.test(m[1])).map(m=>decode(m[1].match(/<video:thumbnail_loc>(.*?)<\/video:thumbnail_loc>/s)[1]));
 const editorial=JSON.parse(fs.readFileSync('docs/seo/mehmed-editorial-batch.json'));
 const links=editorial.flatMap(r=>r.structured_article.flatMap(s=>(s.sources||[]).map(s=>s.url)));
 const items=[...new Set(thumbnails)].map(url=>({type:'thumbnail',url})).concat([...new Set(links)].map(url=>({type:'official_reference',url})));
 const results=[];let index=0;
 async function worker(){while(index<items.length){const item=items[index++];try{const r=await fetch(item.url,{signal:AbortSignal.timeout(20000)});await r.body?.cancel();results.push({...item,status:r.status,contentType:r.headers.get('content-type'),xRobots:r.headers.get('x-robots-tag'),finalUrl:r.url});}catch(e){results.push({...item,error:e.message});}}}
 await Promise.all(Array.from({length:4},worker));
 fs.writeFileSync(process.argv[3] || 'docs/seo/mehmed-reference-asset-audit.json',JSON.stringify({checked_at:new Date().toISOString(),results},null,2));
 console.log(JSON.stringify({thumbnails:new Set(thumbnails).size,officialReferences:new Set(links).size,failures:results.filter(r=>r.status!==200),nonImageThumbnails:results.filter(r=>r.type==='thumbnail'&&r.status===200&&!r.contentType?.startsWith('image/'))},null,2));
})().catch(e=>{console.error(e);process.exitCode=1});
