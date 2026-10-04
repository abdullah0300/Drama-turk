const fs = require('fs');
const assert = require('node:assert/strict');
const routes = JSON.parse(fs.readFileSync('.next/seo-route-input.json', 'utf8').replace(/^\uFEFF/, ''));
const { loadTypescript } = require('./lib/load-typescript.cjs');
const seo = loadTypescript('src/lib/seo/catalog-seo.ts');
const origin = process.argv[2] || 'http://localhost:3100';
const results = [];
const decode = s => s.replace(/&amp;/g, '&').replace(/&#x27;|&#39;/g, "'").replace(/&quot;/g, '"');
async function check(row) {
  const response = await fetch(origin + row.current_route_from_live_data, { redirect: 'manual', signal: AbortSignal.timeout(120000) });
  const out = { id: row.source_id, path: row.current_route_from_live_data, status: response.status };
  if (seo.canonicalGroupId(row.source_id) !== row.source_id) {
    assert.equal(response.status,308,row.source_id);
    out.redirect = response.headers.get('location');
    return out;
  }
  assert.equal(response.status,200,row.source_id);
  const html = await response.text();
  const title = decode(html.match(/<title>([^<]*)<\/title>/)?.[1] || '');
  const description = decode(html.match(/<meta name="description" content="([^"]*)"\s*\/?\s*>/)?.[1] || '');
  assert.ok(title && title.length <=60, row.source_id + ': title ' + title);
  assert.ok(description && description.length <=160, row.source_id + ': description');
  const canonical = decode(html.match(/<link rel="canonical" href="([^"]*)"/)?.[1] || '');
  assert.equal(canonical,'https://greatnation.webcraftio.com'+row.current_route_from_live_data,row.source_id+': canonical');
  const held = ['collection-68-episode-1','collection-76-bolum-64'].includes(row.source_id);
  const robots = html.match(/<meta name="robots" content="([^"]*)"/)?.[1] || '';
  assert.ok(held ? robots.includes('noindex') : robots.includes('index') && !robots.includes('noindex'),row.source_id+': robots '+robots);
  const scripts = [...html.matchAll(/<script type="application\/ld\+json">([\s\S]*?)<\/script>/g)];
  for(const script of scripts) JSON.parse(script[1]);
  if(row.page_type==='episode' && !held) {
    if (!row.source_id.startsWith('collection-72-')) assert.ok(title.includes('Bolum'),row.source_id+': missing broadcast number');
    assert.ok(html.includes('Episode and broadcast number'),row.source_id+': missing editorial HTML');
  }
  return {...out,title,title_length:title.length,description_length:description.length,robots,jsonld_blocks:scripts.length};
}
let index=0;
async function worker() { while(index<routes.length) { const row=routes[index++]; try { results.push(await check(row)); } catch(e) { results.push({id:row.source_id,error:e.message}); } } }
Promise.all(Array.from({length:3},worker)).then(async()=>{
  const robots = await (await fetch(origin+'/robots.txt')).text();
  assert.ok(robots.includes('Allow: /') && !robots.includes('Disallow: /\n'));
  const xml = await (await fetch(origin+'/sitemap.xml')).text();
  const videoXml = await (await fetch(origin+'/video-sitemap.xml')).text();
  for (const suffix of ['/season-2/episode-1','/season-2/episode-49-b','/season-3/episode-52-b','/season-3/episode-61-b','/season-3/episode-64']) {
    assert.ok(!xml.includes('mehmed-fetihler-sultani'+suffix+'</loc>'),'Sitemap includes held/alias '+suffix);
    assert.ok(!videoXml.includes('mehmed-fetihler-sultani'+suffix+'</loc>'),'Video sitemap includes held/alias '+suffix);
  }
  fs.writeFileSync('docs/seo/mehmed-rendered-page-checks.json',JSON.stringify(results,null,2));
  const failures=results.filter(r=>r.error);
  console.log(JSON.stringify({checked:results.length,passed:results.length-failures.length,failed:failures,redirects:results.filter(r=>r.redirect),fatih_sitemap_pages:(xml.match(/<loc>https:\/\/greatnation\.webcraftio\.com\/drama\/mehmed-fetihler-sultani/g)||[]).length,fatih_video_pages:(videoXml.match(/<loc>https:\/\/greatnation\.webcraftio\.com\/drama\/mehmed-fetihler-sultani/g)||[]).length},null,2));
  process.exitCode=failures.length?1:0;
}).catch(e=>{console.error(e);process.exitCode=1;});
