const fs = require('fs');
const routes = JSON.parse(fs.readFileSync('.next/seo-route-input.json','utf8').replace(/^\uFEFF/,''));
const out = []; let index = 0;
const decode = s => s.replace(/&amp;/g,'&').replace(/&#x27;|&#39;/g,"'").replace(/&quot;/g,'"');
const text = s => decode(s.replace(/<[^>]*>/g,' ').replace(/\s+/g,' ').trim());
async function check(row, origin) {
  try {
    const started = Date.now();
    const r = await fetch(origin+row.current_route_from_live_data,{redirect:'manual',signal:AbortSignal.timeout(90000)});
    const h = await r.text();
    const graphs = [...h.matchAll(/<script type="application\/ld\+json">([\s\S]*?)<\/script>/g)].flatMap(m=>{try{const j=JSON.parse(m[1]);return j['@graph']||[j]}catch{return [{invalid:true}]}});
    return {id:row.source_id,type:row.page_type,path:row.current_route_from_live_data,status:r.status,redirect:r.headers.get('location'),ms:Date.now()-started,title:text(h.match(/<title>(.*?)<\/title>/s)?.[1]||''),description:h.match(/<meta name="description" content="([^"]*)"/)?.[1]||'',robots:h.match(/<meta name="robots" content="([^"]*)"/)?.[1]||'',xRobots:r.headers.get('x-robots-tag'),h1:[...h.matchAll(/<h1\b[^>]*>(.*?)<\/h1>/gs)].map(m=>text(m[1])),h2:[...h.matchAll(/<h2\b[^>]*>(.*?)<\/h2>/gs)].map(m=>text(m[1])),schema:graphs.map(j=>j['@type']||'invalid'),videoTag:/<video\b/.test(h),internalLinks:[...h.matchAll(/href="(\/drama\/mehmed-fetihler-sultani[^"?#]*)"/g)].map(m=>m[1]),officialSource:h.includes('https://www.trt1.com.tr/')};
  } catch(e) { return {id:row.source_id,error:e.message}; }
}
async function worker(){while(index<routes.length){const row=routes[index++];out.push({id:row.source_id,local:await check(row,'http://localhost:3100'),live:await check(row,'https://greatnation.webcraftio.com')});}}
Promise.all(Array.from({length:6},worker)).then(()=>{
  fs.writeFileSync('docs/seo/mehmed-comparative-audit.json',JSON.stringify(out,null,2));
  for(const side of ['local','live']){
    const rows=out.map(r=>r[side]); const pages=rows.filter(r=>r.status===200);
    const counts=arr=>Object.fromEntries([...new Set(arr)].map(x=>[x,arr.filter(y=>y===x).length]));
    console.log(JSON.stringify({side,total:rows.length,statuses:counts(rows.map(r=>r.status||'error')),noindex:pages.filter(r=>r.robots.includes('noindex')).length,noH1:pages.filter(r=>!r.h1.length).map(r=>r.id),multipleH1:pages.filter(r=>r.h1.length>1).map(r=>r.id),videoSchema:pages.filter(r=>r.schema.includes('VideoObject')).length,videoTag:pages.filter(r=>r.videoTag).length,errors:rows.filter(r=>r.error)},null,2));
  }
});
