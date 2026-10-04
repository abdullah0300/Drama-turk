// Read-only audit: normal access, simulated bot UAs and representative mobile PSI.
const fs=require('fs');
const base='https://greatnation.webcraftio.com';
async function request(path,ua){const start=Date.now();try{
 const r=await fetch(base+path,{headers:ua?{'User-Agent':ua}:{},signal:AbortSignal.timeout(60000)});
 const h=await r.text();return {path,ua:ua||'default',status:r.status,xRobots:r.headers.get('x-robots-tag'),ms:Date.now()-start,
 robots:h.match(/<meta name="robots" content="([^"]*)"/)?.[1]||null,canonical:h.match(/<link rel="canonical" href="([^"]*)"/)?.[1]||null,
 ...(path==='/robots.txt'?{body:h}:{}),...(path.includes('sitemap')?{total:(h.match(/<loc>/g)||[]).length,fatih:(h.match(/<loc>https:\/\/greatnation\.webcraftio\.com\/drama\/mehmed-fetihler-sultani/g)||[]).length}:{}),
 ...(path==='/about'?{claims36VerifiedEpisodes:h.includes('36 complete episodes'),claims23OtherDramas:h.includes('remaining 23 dramas')}:{})};
 }catch(e){return {path,ua,error:e.message};}}
(async()=>{
 const checks=await Promise.all([
  ...['/robots.txt','/sitemap.xml','/video-sitemap.xml','/about'].map(p=>request(p)),
  ...['Googlebot','bingbot','OAI-SearchBot'].map(ua=>request('/drama/mehmed-fetihler-sultani/season-4/episode-2',ua))]);
 let performance;
 try{const api=new URL('https://www.googleapis.com/pagespeedonline/v5/runPagespeed');api.searchParams.set('url',base+'/drama/mehmed-fetihler-sultani/season-4/episode-2');api.searchParams.set('strategy','mobile');api.searchParams.append('category','performance');api.searchParams.append('category','seo');
  const r=await fetch(api,{signal:AbortSignal.timeout(60000)}),j=await r.json();performance={status:r.status,error:j.error?.message||null,fieldMetrics:j.loadingExperience?.metrics||null,scores:j.lighthouseResult?.categories?Object.fromEntries(Object.entries(j.lighthouseResult.categories).map(([k,v])=>[k,v.score])):null};
 }catch(e){performance={error:e.message};}
 const result={checked_at:new Date().toISOString(),checks,performance,caveat:'Simulated User-Agent access does not verify genuine crawler IP access, Search Console indexing or field Core Web Vitals.'};
 fs.writeFileSync('docs/seo/mehmed-live-infrastructure-audit.json',JSON.stringify(result,null,2));console.log(JSON.stringify(result,null,2));
})().catch(e=>{console.error(e);process.exitCode=1});
