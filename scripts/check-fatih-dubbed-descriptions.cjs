const fs=require('fs'),assert=require('node:assert/strict');
const approved=JSON.parse(fs.readFileSync('docs/seo/mehmed-all-seasons-approved.json')).filter(r=>r.source_id.startsWith('collection-72-'));
const decode=s=>s.replace(/&amp;/g,'&').replace(/&#x27;|&#39;/g,"'").replace(/&quot;/g,'"');
(async()=>{const results=[];for(const row of approved){
 const n=row.source_id.split('-').pop(),path='/drama/mehmed-fetihler-sultani/season-1/urdu-dubbed/episode-'+n;
 const response=await fetch('http://localhost:3100'+path,{signal:AbortSignal.timeout(120000)});assert.equal(response.status,200);
 const html=await response.text(),description=decode(html.match(/<meta name="description" content="([^"]*)"/)[1]);
 assert.equal(description,row.seo_description);assert.ok(description.length<=160);assert.ok(description.includes('mapping is unverified'));
 assert.ok(decode(html).includes(row.short_description));assert.ok(!description.includes('both numbers'));
 results.push({source_id:row.source_id,path,description,description_length:description.length});
 }assert.equal(results.length,8);fs.writeFileSync('docs/seo/mehmed-dubbed-description-checks.json',JSON.stringify(results,null,2));console.log('PASS: eight dubbed descriptions accurately withhold unverified Bolum mappings.');
})().catch(e=>{console.error(e);process.exitCode=1});
