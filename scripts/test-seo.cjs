const assert = require('node:assert/strict');
const fs = require('node:fs');
const { loadTypescript } = require('./lib/load-typescript.cjs');
const seo = loadTypescript('src/lib/seo/catalog-seo.ts');
const snapshot = JSON.parse(fs.readFileSync('docs/seo/mehmed-before-update.json', 'utf8'));
const batch = JSON.parse(fs.readFileSync('docs/seo/mehmed-editorial-batch.json', 'utf8'));
const input = loadTypescript('src/lib/seo/editorial-validation.ts').PublishedEditorialInput;
assert.equal(batch.length, 107);
for (const row of batch) {
  assert.ok(row.seo_title.length <= 60, row.source_id);
  assert.ok(row.seo_description.length <= 160, row.source_id);
  assert.ok(row.seo_description.trim().length > 0, row.source_id);
  assert.ok(input.safeParse(row).success, row.source_id);
}
const routes = loadTypescript('src/lib/routes.ts');
for (const c of snapshot.collections) {
  const raw = snapshot.groups.filter(g => g.collection_id === c.id).sort((a,b) => a.order_key-b.order_key || (a.part??-1)-(b.part??-1) || a.source_id.localeCompare(b.source_id));
  const groups = raw.map(g => ({ id:g.source_id, episode_number:g.reported_episode_number, bolum:g.bolum, part:g.part }));
  const slugs = routes.episodeSlugs(groups);
  if (c.source_id === 'collection-76') {
    assert.equal(slugs.get('collection-76-bolum-52'), 'episode-52');
    assert.equal(slugs.get('collection-76-episode-52'), 'episode-52-b');
    assert.equal(slugs.get('collection-76-bolum-61'), 'episode-61');
    assert.equal(slugs.get('collection-76-episode-61'), 'episode-61-b');
  }
  if (c.source_id === 'collection-68') {
    assert.equal(slugs.get('collection-68-bolum-149'), 'episode-49');
    assert.equal(slugs.get('collection-68-bolum-49'), 'episode-49-b');
  }
}
const series = { id:seo.FATIH_ID, name:'Mehmed: Fetihler Sultani', status:'published' };
const edition = { reported_seasons:[4], version:'dubbed', status:'published' };
const group = { id:'collection-88-bolum-85', drama_id:seo.FATIH_ID, episode_number:2, bolum:85, part:null, status:'published' };
const video = { stream_present:true, stream_urls:['https://example.com/video.m3u8'], languages:['Urdu'], thumbnail_urls:['https://example.com/thumb.jpg'] };
assert.deepEqual(seo.episodeNumbers(edition, group), { episode:2, broadcast:85 });
assert.deepEqual(seo.episodeNumbers({reported_seasons:[1],version:'dubbed'}, {...group,episode_number:8,bolum:null}), {episode:8,broadcast:null});
assert.ok(seo.episodeSeo(series,edition,group,[video]).title.includes('Bolum 85'));
assert.ok(!seo.episodeSeo(series,{reported_seasons:[1],version:'dubbed'},{...group,episode_number:8,bolum:null},[video]).description.includes('both numbers'));
assert.equal(seo.isEligibleEpisode(series,edition,{...group,status:'preview'},[video]),false);
assert.equal(seo.isEligibleEpisode(series,edition,{...group,id:'collection-68-episode-1'},[video]),false);
assert.equal(seo.isEligibleEpisode(series,edition,group,[{...video,stream_present:false,stream_urls:[]}]),false);
assert.equal(seo.videoSchema(series,edition,group,video,'/watch','test'),undefined);
const schema = seo.videoSchema(series,edition,group,{...video,upload_date:'2026-09-23T07:42:33Z'},'/watch','test');
assert.equal(schema.embedUrl,undefined);
assert.equal(schema.contentUrl,video.stream_urls[0]);
assert.equal(schema.inLanguage,'ur');
const subtitledSchema=seo.videoSchema(series,{...edition,version:'subtitled'},group,{...video,languages:['English'],upload_date:'2026-09-23T07:42:33Z'},'/watch','test');
assert.equal(subtitledSchema.inLanguage,'tr');
assert.equal(subtitledSchema.subtitleLanguage,undefined,'subtitleLanguage belongs to TVEpisode, not VideoObject');
assert.ok(!seo.serializeJsonLd({ text:'</script><script>alert(1)</script>' }).includes('<'));
assert.equal(seo.xmlEscape('A&B<"\''), 'A&amp;B&lt;&quot;&apos;');
assert.equal(input.safeParse({seo_title:'x'.repeat(61)}).success,false);
assert.equal(input.safeParse({seo_description:'x'.repeat(161)}).success,false);
console.log('PASS: 107 metadata records, preserved duplicate routes, dual numbering, publication/identity/playback eligibility, video facts, editor validation and JSON/XML escaping.');
