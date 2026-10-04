// Produces a reviewable factual batch. Does not connect to or write the database.
const fs = require('fs');
if (fs.existsSync('docs/seo/mehmed-all-seasons-approved.json')) throw new Error('Reviewed all-season content exists. This initial-draft generator would overwrite it; use the reviewed refinement workflow.');
const { loadTypescript } = require('./lib/load-typescript.cjs');
const seo = loadTypescript('src/lib/seo/catalog-seo.ts');
const snapshot = JSON.parse(fs.readFileSync('docs/seo/mehmed-before-update.json', 'utf8'));
const checks = JSON.parse(fs.readFileSync('docs/seo/mehmed-media-checks.json', 'utf8'));
const byStream = new Map(checks.map(c => [c.id, c]));
const drama = { id: snapshot.drama.source_id, name: 'Mehmed: Fetihler Sultani', status: snapshot.drama.status, collection_ids: snapshot.collections.map(c => c.source_id) };
const approvedAt = new Date().toISOString();
const batch = [];
const seriesSources = [{ name: 'TRT 1: official series', url: 'https://www.trt1.com.tr/diziler/mehmed-fetihler-sultani' }];
function groupModel(g, c) { return { id: g.source_id, drama_id: drama.id, collection_id: c.source_id, episode_number: g.reported_episode_number, bolum: g.bolum, part: g.part, status: g.status }; }
function editionModel(c) { return { id: c.source_id, reported_seasons: c.reported_seasons, version: c.collection_type, status: c.status }; }
function variants(g) {
  return (g.variants || []).map(v => {
    const streams = (v.streams || []).filter(s => s.is_active && ['reachable', 'browser_tested'].includes(s.verification_state) && byStream.get(s.id)?.result !== 'unavailable');
    return { id: v.source_id, languages: v.languages, version: v.version, stream_present: !!streams.length, stream_urls: streams.map(s => s.delivery_url) };
  });
}
function add(target, sourceId, title, description, meta, sections) {
  if (meta.description.length < 140) meta.description += ' See viewing details.';
  if (meta.title.length > 60 || meta.description.length > 160) throw new Error('Metadata exceeds budget for ' + sourceId);
  batch.push({ target, source_id: sourceId, locale: 'en', approved_display_title: title, short_description: description,
    seo_title: meta.title, seo_description: meta.description, structured_article: sections, published_at: approvedAt, updated_at: approvedAt });
}
add('drama', drama.id, drama.name,
  'Mehmed: Fetihler Sultani is a Turkish historical drama about Sultan Mehmed II, also searched for as Sultan Muhammad Fateh. Explore its subtitled and Urdu dubbed releases, with episode and broadcast numbers explained on each watch page.',
  { title: 'Sultan Muhammad Fateh | Mehmed Fetihler Sultani', description: 'Explore Mehmed Fetihler Sultani (Sultan Muhammad Fateh), available seasons, Urdu and English subtitle options, Urdu dubbed editions and episode guides.' },
  [{ heading: 'Which Mehmed drama is this?', content: 'This is TRT 1’s Mehmed: Fetihler Sultani, the Turkish historical drama centered on Sultan Mehmed II. The series is also searched for as Sultan Muhammad Fateh or Sultan Muhammad Fatih. Use the season links here to find the specific release you want.', sources: seriesSources },
   { heading: 'Subtitles and Urdu dubbing', content: 'Subtitled releases and Urdu dubbed releases have separate season pages. A subtitled rendition preserves the original audio, while a dubbed rendition changes the audio language. Available language choices vary by episode; use the choices displayed beside that episode’s player.' },
   { heading: 'Understanding episode numbers', content: 'The first three subtitled collections retain continuous episode labels. The Season 4 collection pairs local episodes 1, 2 and 3 with broadcasts 84, 85 and 86. Bolum is the Turkish broadcast episode number. Both identifiers appear on watch pages to help you find the same broadcast across releases.' }]);
for (const c of snapshot.collections) {
  const edition = editionModel(c);
  const groups = snapshot.groups.filter(g => g.collection_id === c.id);
  const canonical = groups.filter(g => seo.canonicalGroupId(g.source_id) === g.source_id);
  const getVideos = g => groups.filter(other => seo.canonicalGroupId(other.source_id) === g.source_id).flatMap(variants);
  const eligible = canonical.filter(g => seo.isEligibleEpisode(drama, edition, groupModel(g, c), getVideos(g)));
  const allVideos = eligible.flatMap(getVideos);
  const language = seo.languageLabel(edition, allVideos);
  const seasonNumber = c.reported_seasons[0];
  const range = eligible.map(g => seo.episodeNumbers(edition, groupModel(g, c)).broadcast).filter(n => n != null).sort((a, b) => a - b);
  const meta = seo.seasonSeo(drama, edition, allVideos);
  meta.description = meta.description.replace('with urdu dubbed', 'in Urdu dubbed audio').replace('with urdu & english subtitles', 'with Urdu & English subtitles').replace('with urdu subtitles', 'with Urdu subtitles');
  add('collection', c.source_id, `Mehmed: Fetihler Sultani Season ${seasonNumber} — ${language}`,
    `Browse the ${language.toLowerCase()} release of Mehmed: Fetihler Sultani Season ${seasonNumber}. This page lists ${eligible.length} currently eligible episode pages; available language choices are shown per episode.`, meta,
    [{ heading: 'Available episodes in this release', content: `${eligible.length} episode pages are currently available in this edition. ${range.length ? `Their broadcast numbers run from Bolum ${range[0]} to Bolum ${range[range.length - 1]}.` : ''} This is an availability count, not a claim that every original broadcast or language version is present.` },
     { heading: 'Which number should I search for?', content: seasonNumber === 1 && c.collection_type === 'dubbed' ? 'Use this dubbed release’s episode number. Its source does not provide a separately verified continuous broadcast number, so a Bolum mapping is not assumed. Dubbed releases can be edited differently from the original broadcasts.' : seasonNumber === 4 ? 'Use both identifiers: Season 4 Episode 1 is listed as Bolum 84, Episode 2 as Bolum 85, and Episode 3 as Bolum 86 in the subtitled release. The dubbed list has its own availability. A local episode number identifies the position in this release; Bolum identifies the continuous broadcast.' : `This release retains continuous episode labels rather than restarting the count at one. Each watch page pairs its episode label with the corresponding Bolum number. Look at the listed episodes instead of assuming that a source’s season-local episode 1 is a separate broadcast.`, sources: seriesSources },
     { heading: 'Choose the correct viewing edition', content: c.collection_type === 'dubbed' ? 'This edition is listed as Urdu dubbed. If you prefer original Turkish audio with subtitles, use the subtitled season page. Dubbed and subtitled releases may contain different numbers of available episodes.' : 'Choose Urdu or English subtitles only when that language is offered on the episode page. An episode with one working language remains listed with that choice; an unavailable language is not presented as a working rendition.' }]);
  for (const g of groups) {
    const model = groupModel(g, c);
    const canonicalId = seo.canonicalGroupId(g.source_id);
    const canonicalRaw = groups.find(other => other.source_id === canonicalId) || g;
    const canonicalModel = groupModel(canonicalRaw, c);
    const videos = getVideos(canonicalRaw);
    const facts = seo.episodeNumbers(edition, canonicalModel);
    const metadata = seo.episodeSeo(drama, edition, canonicalModel, videos);
    const language = metadata.languages;
    const held = !seo.hasReviewedIdentity(model);
    const unavailable = !videos.some(seo.isPlayableVideo);
    const sections = held ? [{ heading: 'Episode identity under review', content: 'The source labels this record as Season 2 Episode 1, but its media path refers to Episode 16. Its numbering has not been reconciled, so this page is excluded from public watch navigation and indexing.' }] : [
      { heading: 'Episode and broadcast number', content: facts.broadcast == null ? `This dubbed release lists Season ${seasonNumber} Episode ${facts.episode}. A separately verified continuous broadcast number is not supplied by the source. Use the edition’s episode label; its Bolum number has not been assumed.` : `This release lists Season ${seasonNumber} Episode ${facts.episode} as Bolum ${facts.broadcast}. ${seasonNumber === 4 ? `The local episode number is ${facts.episode}; the continuous broadcast number is ${facts.broadcast}.` : 'This edition retains the continuous broadcast number in its episode label.'} Use both numbers when matching this episode to another release.`, sources: facts.broadcast == null ? [] : [{ name: `TRT 1: broadcast ${facts.broadcast}`, url: `https://www.trt1.com.tr/diziler/mehmed-fetihler-sultani/bolum/${facts.broadcast}-bolum` }] },
      { heading: 'Viewing choices for this episode', content: unavailable ? 'No currently eligible rendition is available for this episode. Use the season page to browse working episodes.' : `${language} ${c.collection_type === 'dubbed' ? 'is the viewing edition listed for this page.' : 'are offered through the available renditions on this page.'} Select the rendition beside the player. Language availability is specific to this episode and may differ from adjacent episodes.` },
    ];
    add('episode_group', g.source_id, seo.episodeLabel(edition, canonicalModel),
      held ? 'Episode numbering is under review. Browse the season page for available episodes.' : unavailable ? 'This episode currently has no eligible playback source. Browse the season page for available episodes.' : metadata.description,
      held ? { title: 'Mehmed Season 2 Episode 1 | Numbering Under Review', description: 'This Mehmed Fetihler Sultani Season 2 record has conflicting episode numbering. Browse the season page for available, clearly identified episodes instead.' } : metadata, sections);
  }
}
fs.writeFileSync('docs/seo/mehmed-editorial-batch.json', JSON.stringify(batch, null, 2));
const quote = s => '"' + String(s).replaceAll('"', '""') + '"';
fs.writeFileSync('docs/seo/mehmed-final-metadata.csv', [['target', 'source_id', 'title', 'title_characters', 'description', 'description_characters'], ...batch.map(r => [r.target, r.source_id, r.seo_title, r.seo_title.length, r.seo_description, r.seo_description.length])].map(r => r.map(quote).join(',')).join('\n'));
console.log(JSON.stringify({ rows: batch.length, titles: [Math.min(...batch.map(r => r.seo_title.length)), Math.max(...batch.map(r => r.seo_title.length))], descriptions: [Math.min(...batch.map(r => r.seo_description.length)), Math.max(...batch.map(r => r.seo_description.length))], sample: batch.find(r => r.source_id === 'collection-88-bolum-85') }, null, 2));
