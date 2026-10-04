const assert=require('node:assert/strict');
const {loadTypescript}=require('./lib/load-typescript.cjs');
const {scheduleFor,nextScheduledEpisode,subtitleEstimate,WEEK_MS}=loadTypescript('src/lib/releases/schedule.ts');
const now=Date.parse('2026-10-04T12:00:00Z');
const mehmed=scheduleFor('mehmed-fetihler-sultani');
const ask=scheduleFor('ask-ve-taht');
const next=nextScheduledEpisode(mehmed,3,now);
assert.equal(next.episode,4);assert.equal(next.bolum,87);
assert.equal(next.broadcastAt,'2026-10-06T17:00:00.000Z');assert.equal(next.confirmed,false);
assert.equal(nextScheduledEpisode(ask,4,now).broadcastAt,'2026-10-07T17:00:00.000Z');
assert.equal(nextScheduledEpisode(ask,4,now).confirmed,true);
assert.equal(nextScheduledEpisode(ask,5,now+WEEK_MS),undefined);
assert.equal(nextScheduledEpisode(mehmed,3,now+3*WEEK_MS).episode,4,'Time alone must not generate unwatched episodes');
assert.equal(nextScheduledEpisode(mehmed,4,now+WEEK_MS).episode,5);
assert.equal(nextScheduledEpisode(mehmed,4,now),undefined,'Do not index distant speculative pages');
assert.equal(nextScheduledEpisode(mehmed,4,now+WEEK_MS).preview,undefined,'Do not reuse the prior trailer');
assert.equal(subtitleEstimate(next.broadcastAt,[3600000,3*3600000,-1,99*3600000]),'2026-10-06T19:00:00.000Z');
assert.equal(subtitleEstimate(next.broadcastAt,[3600000]),undefined);
assert.equal(scheduleFor('alparslan-buyuk-selcuklu'),undefined);
const {upcomingMetadata}=loadTypescript('src/components/releases/UpcomingEpisode.tsx');
for (const episode of [next,nextScheduledEpisode(mehmed,4,now+WEEK_MS)]) {
  const meta=upcomingMetadata({...episode,dramaName:'Mehmed: Fetihler Sultani',href:`/drama/mehmed-fetihler-sultani/season-4/episode-${episode.episode}`});
  assert.ok(meta.title.absolute.startsWith('Mehmed Fetihler Sultani '));
  assert.ok(meta.description.includes('Mehmed Fetihler Sultani'));
  assert.ok(meta.title.absolute.length<=60);
  assert.ok(meta.description.length<=160);
}
const seo=loadTypescript('src/lib/seo/catalog-seo.ts');
const future=seo.episodeSeo({id:seo.FATIH_ID,name:'Mehmed: Fetihler Sultani'},
  {reported_seasons:[4],version:'subtitled'},
  {episode_number:5,bolum:88},
  [{stream_present:true,stream_urls:['https://example.com/video.m3u8'],languages:['Urdu','English']}]);
assert.ok(future.title.startsWith('Mehmed Fetihler Sultani '));
assert.ok(future.description.includes('Mehmed Fetihler Sultani'));
assert.ok(future.title.length<=60);
console.log('Release schedules passed: dates, numbering, premiere cap, weekly advance, delays, and missing estimates.');
