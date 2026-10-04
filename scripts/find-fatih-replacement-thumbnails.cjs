const fs=require('fs');
(async()=>{const h=await(await fetch('https://www.trt1.com.tr/diziler/mehmed-fetihler-sultani/bolum/7')).text();const rows=[];
 for(const m of h.matchAll(/<a\b[^>]*href="([^"]*\/bolum\/[^"?#]+)"[^>]*>([\s\S]*?)<\/a>/g)){
 const title=m[2].match(/class="card_card-title[^">]*"[^>]*>([\s\S]*?)<\/div>/)?.[1]||'';
 const n=Number(title.replace(/<[^>]*>/g,'').match(/^\d+/)?.[0]);if(![3,4].includes(n))continue;
 const images=[...m[2].matchAll(/(?:src|srcset)="([^"]*)"/g)].map(x=>x[1]);rows.push({episode:n,source:new URL(m[1],'https://www.trt1.com.tr').href,images});
 }fs.writeFileSync('.next/fatih-replacement-thumbnail-input.json',JSON.stringify(rows,null,2));console.log(JSON.stringify(rows,null,2));
})().catch(e=>{console.error(e);process.exitCode=1});
