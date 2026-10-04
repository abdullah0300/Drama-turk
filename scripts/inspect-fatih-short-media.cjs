const fs=require('fs');
const rows=JSON.parse(fs.readFileSync('.next/seo-media-input.json'));
(async()=>{for(const item of rows.filter(r=>['video-3975','video-3245'].includes(r.video))){
 const text=await(await fetch(item.url)).text();const lines=text.split(/\r?\n/);
 const children=lines.flatMap((l,i)=>l.startsWith('#EXT-X-STREAM-INF')?[lines.slice(i+1).find(l=>l.trim()&&!l.startsWith('#'))]:[]);
 const variants=await Promise.all((children.length?children:['']).map(async path=>{
  const body=path?await(await fetch(new URL(path,item.url))).text():text;
  return {complete:body.includes('#EXT-X-ENDLIST'),segments:[...body.matchAll(/#EXTINF:/g)].length,seconds:[...body.matchAll(/#EXTINF:([\d.]+)/g)].reduce((s,m)=>s+Number(m[1]),0)};
 }));console.log({video:item.video,variants});
}})().catch(e=>{console.error(e.name);process.exitCode=1});
