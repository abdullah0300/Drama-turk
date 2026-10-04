# Fatih all-season SEO/GEO release

Reviewed 4 October 2026. Code is ready for the user's own deployment. Reviewed editorial and media-publication changes have been saved in Supabase project `zvwltfqhbpqtnjbsflvk`.

**Follow-up status:** the live deployment now matches the workspace and allows public crawling. An expanded external-asset/trust/performance audit found remaining issues beyond the route checks. See [the follow-up audit](mehmed-follow-up-audit.md), including two broken thumbnails, one broken cast citation, stale About-page claims and sampled response latency. The earlier route-test pass is not a claim that every SEO/GEO aspect is correct.

## Completed scope

The main drama page, all six season-edition pages and all 100 imported episode-group editorial records have been reviewed: 107 editorial records. The public inventory contains 95 usable, identified episode pages. Together with the main page and six guides, these form 102 indexable Fatih pages. Three historical duplicate URLs redirect permanently; the ambiguous Season 2 record and wholly unavailable Season 3 Bolum 64 remain noindex.

| Season | Edition | Available episode pages | Numbering |
|---|---|---:|---|
| 1 | Urdu/English subtitles | 15 | Episode 1–15 / Bolum 1–15 |
| 1 | Urdu dubbed | 8 | Source Episodes 1–8; Bolum mapping unverified |
| 2 | Urdu/English subtitles | 34 | Episode 16–49 / Bolum 16–49 |
| 3 | Subtitles; availability per episode | 33 | Episode 50–83 / Bolum 50–83; 64 unavailable |
| 4 | Urdu/English subtitles | 3 | Local Episodes 1–3 / Bolum 84–86 |
| 4 | Urdu dubbed | 2 | Local Episodes 1–2 / Bolum 84–85 |

All six guides now render linked episode/Bolum tables in initial HTML. Unverified dubbed mappings are explicitly described rather than invented. Watch pages retain canonical routes, previous/next links, edition links where broadcasts match, server-rendered editorial, discoverable video sources/posters and TVEpisode/Breadcrumb schema. VideoObject is emitted only when a visible usable rendition has the required factual fields. Subtitle language belongs to TVEpisode, not VideoObject.

Titles are at most 60 characters and descriptions at most 160; current batch maxima are 60 and 158. The two episode numbers appear where verified. Titles and descriptions name the languages actually available. For example, Season 3 Episodes 65, 69 and 70 advertise Urdu subtitles because their English files fail or are incomplete. Exact copy and lengths are in `mehmed-final-metadata.csv`.

TRT's official episode listings support brief original English episode previews on 87 indexable episode pages. These are short source-linked context, not full recaps or claims that the complete videos were watched. Eight dubbed Season 1 pages have viewing and numbering guidance without an invented broadcast synopsis. Original summaries and references are saved in `mehmed-official-episode-context.json`.

## Media and factual corrections

All 181 imported stream URLs were checked: 178 responded with usable HLS manifests/segments, two checks were inconclusive, one returned 404. Reachability is distinguished from browser playback. Existing successful Season 4 browser playback evidence is preserved.

Completed playlists provided 176 measured rendition runtimes. Two subsequently excluded short files are included in that measured count; 174 published renditions have measured runtimes. Unknown runtimes are omitted from schema. The automatic checker now avoids deriving full runtime from live/sliding playlists and preserves a prior browser-tested state when subsequent reachability checks pass.

Runtime review found a 40-second Season 1 dubbed trailer incorrectly offered as a full-episode choice, and a nine-second Season 3 Bolum 70 English file. Both variants are hidden, with imported records and stream URLs preserved. The full dubbed Episode 1 and Urdu Bolum 70 still work. Evidence and prior publication states are in `mehmed-short-media-review.json`.

Fresh publisher-page reads recovered 25 Season 1 source publication dates. Five questionable Season 1 timestamps remain withheld. The first Urdu episode claims a date before the official premiere, confirmed by [TRT's premiere report](https://www.trtavaz.com.tr/haber/tur/turkistandan/trtnin-yeni-dizisi-mehmed-fetihler-sultani-bu-aksam-izleyiciyle-bulusacak/65ddb6a0da7839de48ba18de). Other suspect timestamps are retained only in the review artifact. Publisher publication dates are not represented as original broadcast dates. Ten rendition publication dates remain unknown across the catalog; no dates were fabricated to qualify for video results.

## Unresolved source issues

- Season 2's imported Episode 1 conflicts with its Episode 16 heading/media path. Its identity remains held; no speculative merge.
- Season 1 dubbed broadcasts cannot yet be mapped reliably to Bolum numbers.
- Season 3 Bolum 64 has no usable source; English 65 and 69 fail, and English 70 is a nine-second file. Those languages are excluded; usable Urdu versions remain.
- Some publication dates and one reachable English rendition's complete runtime remain unknown. Optional schema fields are omitted; missing required dates prevent VideoObject for that rendition.

These require reliable publisher evidence or replacement full media. SEO cannot repair missing media, prove uncertain identities, guarantee rankings or guarantee AI citations.

## Verification

- Production build, TypeScript and lint checks passed.
- Catalog integrity and 107-record SEO validation passed.
- Complete route checks cover 107 routes: metadata, canonicals, robots, JSON-LD, three permanent redirects and sitemap exclusions.
- The additional all-season check compares approved metadata against every canonical rendered page, verifies six guides, 87 visible source-linked previews, optional measured video durations and exclusion of the two short files.
- Focused main/Season 4 checks cover source/poster discovery, schema language facts and matching viewing editions.
- A mocked playlist test confirms that complete playlists provide runtimes and sliding playlists do not. No DB or network calls occur in this test.
- A follow-up check covers all eight final dubbed descriptions: they explicitly withhold unverified broadcast mappings rather than instruct viewers to check nonexistent second numbers.
- Season 1 dubbed Episode 1 was played in the browser beyond 43 seconds, with no media error and approximately 104 minutes of runtime. Its complete source is now marked browser-tested; the short trailer is excluded.

Detailed latest results are saved in `mehmed-rendered-page-checks.json`, `mehmed-all-seasons-rendered-checks.json` and `mehmed-season4-page-checks.json`. Before-update and duration backups are retained for review. Generator scripts produce artifacts only; SQL preparation scripts do not execute changes, and stale backup timestamps are guarded. Earlier draft generators refuse to overwrite this reviewed all-season batch.

The full final inventory checks passed: 107 routes, 102 indexable Fatih pages, 95 video-sitemap pages, 87 rendered source-linked episode previews and 90 VideoObjects containing measured runtime. Follow-up dubbed description checks are recorded in `mehmed-dubbed-description-checks.json`; browser playback evidence is in `mehmed-season1-dubbed-playback.json`.

## Your deployment steps

1. Set `NEXT_PUBLIC_SITE_DOMAIN=https://greatnation.webcraftio.com` before the production build. Use production mode; remove `CATALOG_RELEASE_MODE=staging` or set it to `production`. Retain existing Supabase environment credentials privately.
2. Build and deploy this workspace through your normal hosting workflow. Database editorial updates are already saved; application rendering and crawler fixes require this deployment.
3. Verify production `/robots.txt` allows public paths, both XML sitemaps return 200 with the production origin, and sampled main/season/watch pages have correct canonical/index tags. Confirm the host's CDN/WAF allows legitimate Googlebot, Bingbot and OAI-SearchBot; application robots rules cannot override host blocking.
4. Submit `/sitemap.xml` and `/video-sitemap.xml` in Google Search Console and Bing Webmaster Tools. Inspect representative main, season and episode URLs and request recrawling where appropriate.
5. Monitor indexing, queries, impressions, clicks and video-indexing issues. Semrush is optional for competitive research; it is not needed to deploy these fixes or prove indexing. No new keyword-volume figures were invented during this implementation.

## Six current primary references

Checked online 4 October 2026:

1. [Google title links](https://developers.google.com/search/docs/appearance/title-link): descriptive, distinct titles and a clear main heading. The project's 60-character limit is a requested editorial budget; Google displays titles according to available width and may rewrite them.
2. [Google snippets](https://developers.google.com/search/docs/appearance/snippet): accurate page-specific descriptions. The 160-character budget is not a Google guarantee; snippets may come from visible content and vary by query/device.
3. [Google AI features](https://developers.google.com/search/docs/appearance/ai-features): normal search eligibility, accessible textual content and useful internal links remain relevant. No special AI schema or purported GEO ranking guarantee was added.
4. [Google video SEO](https://developers.google.com/search/docs/appearance/video): dedicated watch pages, discoverable playable video and crawlable thumbnails/media underpin video discovery. Sitemap presence alone does not guarantee video indexing.
5. [Google VideoObject guidance](https://developers.google.com/search/docs/appearance/structured-data/video): factual required video fields; optional duration only where measured. Missing facts are not replaced with arbitrary upload dates or runtimes.
6. [OpenAI crawler documentation](https://developers.openai.com/api/docs/bots): OAI-SearchBot serves search discovery and is distinct from GPTBot. Production wildcard rules permit public crawling, subject to hosting/network access; staging remains blocked.
