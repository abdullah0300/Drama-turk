const fs=require('fs');
const clean=s=>s.replace(/<[^>]*>/g,' ').replace(/&quot;/g,'"').replace(/&#x27;|&#39;/g,"'").replace(/&amp;/g,'&').replace(/\s+/g,' ').trim();
(async()=>{
 const rows=[];
 for(let page=1;page<=8;page++){
  const origin=`https://www.trt1.com.tr/diziler/mehmed-fetihler-sultani/bolum/${page}`;
  const r=await fetch(origin,{signal:AbortSignal.timeout(25000)});if(!r.ok)throw Error(origin);
  const h=await r.text();
  for(const m of h.matchAll(/<a\b[^>]*href="([^"]*\/diziler\/mehmed-fetihler-sultani\/bolum\/[^"?#]+)"[^>]*>([\s\S]*?)<\/a>/g)){
   const title=m[2].match(/class="card_card-title[^">]*"[^>]*>([\s\S]*?)<\/div>/)?.[1];
   const preview=m[2].match(/class="card_card-description[^">]*"[^>]*>([\s\S]*?)<\/p>/)?.[1];
   const n=Number(clean(title||'').match(/^\d+/)?.[0]);
   if(n&&!rows.some(x=>x.broadcast===n)) rows.push({broadcast:n,source:new URL(m[1],'https://www.trt1.com.tr').href,listSource:origin,preview:clean(preview||'').slice(0,260)});
  }
 }
 fs.writeFileSync('.next/fatih-official-preview-input.json',JSON.stringify(rows,null,2));
 console.log(rows.sort((a,b)=>a.broadcast-b.broadcast).map(r=>`${r.broadcast}: ${r.preview}`).join('\n'));
})();
