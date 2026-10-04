const fs=require('fs');
const checks=JSON.parse(fs.readFileSync('docs/seo/mehmed-media-checks.json'));
const snapshot=JSON.parse(fs.readFileSync('docs/seo/mehmed-before-update.json'));
const variants=snapshot.groups.flatMap(g=>g.variants);
const rows=variants.map(v=>{
  const matches=checks.filter(c=>c.video===v.source_id&&c.result==='reachable'&&c.duration_seconds>0);
  const values=matches.map(c=>c.duration_seconds);
  return {source_id:v.source_id,duration_seconds:values.length&&Math.max(...values)-Math.min(...values)<=1?values[0]:null};
});
if(rows.length!==180||new Set(rows.map(r=>r.source_id)).size!==180)throw Error('Variant inventory mismatch');
fs.writeFileSync('docs/seo/mehmed-measured-durations.json',JSON.stringify(rows,null,2));
console.log({total:rows.length,measured:rows.filter(r=>r.duration_seconds).length,unknown:rows.filter(r=>!r.duration_seconds).length});
