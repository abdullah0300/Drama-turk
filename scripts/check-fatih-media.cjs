const fs = require('fs');
const inputs = JSON.parse(fs.readFileSync('.next/seo-media-input.json', 'utf8'));
const results = [];
async function get(url, range) {
  return fetch(url, { signal: AbortSignal.timeout(15000), headers: range ? { Range: 'bytes=0-1023' } : {} });
}
async function check(item) {
  const out = { group: item.group, video: item.video, id: item.id, old: item.old, checked_at: new Date().toISOString() };
  try {
    let url = item.url;
    let response = await get(url);
    out.http = response.status;
    if (!response.ok) return { ...out, result: [404, 410].includes(response.status) ? 'unavailable' : 'inconclusive' };
    let body = await response.text();
    if (!body.trimStart().startsWith('#EXTM3U')) return { ...out, result: 'inconclusive', reason: 'not_hls_manifest' };
    if (body.includes('#EXT-X-STREAM-INF')) {
      const lines = body.split(/\r?\n/);
      const index = lines.findIndex(l => l.startsWith('#EXT-X-STREAM-INF'));
      const child = lines.slice(index + 1).find(l => l.trim() && !l.startsWith('#'));
      if (!child) return { ...out, result: 'inconclusive', reason: 'missing_variant' };
      url = new URL(child, url).href;
      response = await get(url);
      out.media_http = response.status;
      if (!response.ok) return { ...out, result: [404, 410].includes(response.status) ? 'unavailable' : 'inconclusive' };
      body = await response.text();
    }
    const segment = body.split(/\r?\n/).find(l => l.trim() && !l.startsWith('#'));
    if (!segment) return { ...out, result: 'inconclusive', reason: 'missing_segment' };
    const media = await get(new URL(segment, url).href, true);
    out.segment_http = media.status;
    await media.body?.cancel();
    return { ...out, result: media.ok ? 'reachable' : [404, 410].includes(media.status) ? 'unavailable' : 'inconclusive' };
  } catch (e) { return { ...out, result: 'inconclusive', reason: e.name }; }
}
let next = 0;
async function worker() { while (next < inputs.length) { const item = inputs[next++]; results.push(await check(item)); } }
Promise.all(Array.from({ length: 6 }, worker)).then(() => {
  fs.mkdirSync('docs/seo', { recursive: true });
  fs.writeFileSync('docs/seo/mehmed-media-checks.json', JSON.stringify(results, null, 2));
  console.log(JSON.stringify({ total: results.length, statuses: results.reduce((m, r) => (m[r.result] = (m[r.result] || 0) + 1, m), {}), affected: results.filter(r => r.result !== 'reachable').map(r => ({ video: r.video, result: r.result, http: r.http, reason: r.reason })) }, null, 2));
});
