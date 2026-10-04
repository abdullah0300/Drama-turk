const fs = require('fs'), assert = require('node:assert/strict');
const expected = JSON.parse(fs.readFileSync('docs/seo/homepage-catalog-check-input.json'));
const origin = process.argv[2] || 'http://localhost:3100';
const decode = s => s.replace(/&amp;/g, '&');
const section = (html, id) => html.match(new RegExp(`<section[^>]*id="${id}"[\\s\\S]*?</section>`))?.[0] || '';
(async () => {
  const samples = []; let html;
  for (let i = 0; i < 3; i++) {
    const t = performance.now(), r = await fetch(origin, { signal: AbortSignal.timeout(120000) });
    const headersMs = Math.round(performance.now() - t);
    assert.equal(r.status, 200); html = await r.text();
    samples.push({ headersMs, totalMs: Math.round(performance.now() - t) });
  }
  assert.equal((html.match(/<h1\b/g) || []).length, 1);
  assert.ok(html.includes('Explore Turkish and Historical Dramas'));
  const title = decode(html.match(/<title>(.*?)<\/title>/s)[1]);
  const description = decode(html.match(/<meta name="description" content="([^"]*)"/)[1]);
  assert.ok(title.length <= 60 && description.length <= 160);
  assert.equal(new URL(html.match(/rel="canonical" href="([^"]+)"/)[1]).href, 'https://greatnation.webcraftio.com/');
  assert.ok(!html.includes('name="robots" content="noindex'));
  assert.ok(html.includes(`${expected.dramas.length} series`) && html.includes(`${expected.editions} published viewing editions`));
  assert.ok(!html.includes('63 collections') && !html.includes('preserved episodes'));
  const seasonsText = section(html, 'seasons').replace(/<[^>]*>/g, '');
  assert.ok(seasonsText.includes('34 episodes'), 'Fatih Season 2 excludes duplicate and unresolved records');
  assert.ok(seasonsText.includes('33 episodes'), 'Fatih Season 3 excludes duplicate and unavailable records');
  const graphs = [...html.matchAll(/<script type="application\/ld\+json">(.*?)<\/script>/gs)].flatMap(m => JSON.parse(m[1])['@graph'] || []);
  assert.ok(graphs.some(g => g['@type'] === 'WebSite'));
  const list = graphs.find(g => g['@type'] === 'ItemList');
  assert.equal(list.numberOfItems, expected.dramas.length);
  assert.deepEqual(list.itemListElement.map(i => i.url.split('/').pop()).sort(), expected.dramas.map(d => d.id).sort());
  const historical = section(html, 'historical');
  for (const d of expected.dramas) assert.equal(historical.includes(`href="/drama/${d.id}"`), d.historical, d.id);
  const choiceCounts = {};
  for (const [id, language, version] of [['urdu-subtitles','Urdu','subtitled'],['english-subtitles','English','subtitled'],['urdu-dubbed','Urdu','dubbed']]) {
    const part = section(html, id);
    const ids = [...new Set(expected.choices.filter(c => c.version === version && c.languages.includes(language)).map(c => c.drama_id))].sort();
    const actual = [...new Set([...part.matchAll(/href="\/drama\/([^"]+)"/g)].map(m => m[1]))].sort();
    assert.deepEqual(actual, ids, id); choiceCounts[id] = ids.length;
  }
  const dates = [...html.matchAll(/<time[^>]*dateTime="([^"]+)"/gi)].map(m => Date.parse(m[1]));
  assert.ok(dates.length > 0); assert.ok(dates.every((d, i) => Number.isFinite(d) && (!i || dates[i-1] >= d)));
  const image = await fetch(origin + '/social/home.png'); assert.equal(image.status, 200); assert.ok(image.headers.get('content-type').includes('image/png'));
  const results = [];
  for (const d of expected.dramas) { const r = await fetch(origin + '/drama/' + d.id, {signal:AbortSignal.timeout(120000)}); assert.equal(r.status, 200, d.id); await r.body.cancel(); results.push(d.id); }
  const report = { checkedAt: new Date().toISOString(), title, titleLength: title.length, descriptionLength: description.length, dramaLinks: results.length, choiceCounts, datedEpisodePicks: dates.length, samples };
  fs.writeFileSync('docs/seo/homepage-rendered-checks.json', JSON.stringify(report, null, 2)); console.log(report);
})().catch(e => {console.error(e); process.exitCode = 1;});
