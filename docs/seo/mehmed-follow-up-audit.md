# Fatih live SEO and AI-search audit

**Repair update:** The actionable image, citation, copy, cache and sync issues were subsequently fixed. See [repair report](./mehmed-repair-report.md) for verified results, deployment requirements and remaining source-dependent limits. The findings below describe the original audit state.

Verified 4 October 2026 against the current workspace, live site, Supabase catalog and current official documentation. This was an audit: no application code, published editorial or database records were changed. New audit scripts and evidence artifacts were saved.

## Verdict

The main SEO foundation is working on the live site. Everything is **not** correct or fully verified. Concrete remaining failures are two broken episode thumbnails, an incorrect cast citation URL, false About-page claims and slow sampled HTML responses. Several content/media facts and actual search-indexing outcomes remain unresolved. Prior passing route tests did not verify external thumbnail/citation availability; this expanded audit did.

## Verified on the live site

| Check | Result |
|---|---|
| Complete Fatih route inventory | 107 checked: 104 return 200, three return permanent 308 redirects |
| Indexing directives | 102 indexable canonical pages; two intentionally noindex |
| Headings | Exactly one H1 on each of the 104 rendered canonical pages |
| Metadata vs approved content | No live title/description mismatches; 107 Supabase editorial records have no missing metadata |
| Character budgets | Maximum title 60; maximum description 158; no budget violations |
| Live vs local | Title, robots and schema-type inventories match across all 107 routes |
| Public robots | Allow `/`; block admin/API/preview; both sitemaps declared |
| Live sitemaps | Both HTTP 200; 102 Fatih standard-sitemap pages and 95 Fatih video-sitemap pages |
| Watch-page discovery | Video elements present on all 95 indexable watch pages |
| VideoObject | Present on 91 pages, including 90 with measured runtime; required image accessibility has one confirmed failure described below |
| Structured data | Breadcrumbs, TVSeries/TVSeason/TVEpisode structure and VideoObject where required facts exist; missing dates are not fabricated |
| Source-linked content | Sources remain in initial HTML; 87 eligible episode pages have brief official-preview paraphrases |
| Simulated crawler requests | Googlebot, bingbot and OAI-SearchBot User-Agent requests to a representative episode return 200/indexable |
| External assets | 89 distinct sitemap thumbnails checked: 87 respond, two return 404. Of 96 distinct official citation URLs, 95 respond and one returns 404 |

Simulated User-Agent requests do not prove access from genuine crawler IPs. Search Console URL Inspection, hosting logs and webmaster tools are needed to establish actual crawling/indexing. No claim of confirmed Google indexing, ranking or AI citations is made.

## Confirmed problems, in priority order

### 1. Two public video thumbnails are broken

Season 1 subtitled Episode 3 uses `https://play.niazitv.pk/images/episode_1710295171.webp`; Episode 4 uses `https://play.niazitv.pk/images/episode_1710898518.webp`. Both returned 404 in two independent GET checks.

They are still referenced in the video sitemap. Episode 4 additionally emits VideoObject using the broken image; Episode 3 currently emits no VideoObject because its publication date is withheld. This affects poster rendering and video discovery even though the pages and media streams respond. Replace the thumbnails with accessible, episode-relevant images, then recheck the rendered poster, video schema and sitemap. A nonempty URL is insufficient verification.

[Google video guidance](https://developers.google.com/search/docs/appearance/video) requires accessible video/thumbnail assets. [VideoObject documentation](https://developers.google.com/search/docs/appearance/structured-data/video) makes thumbnailUrl a required factual property.

Fifteen other thumbnail responses omit Content-Type. Additional ranged reads confirmed RIFF/WEBP signatures for all fifteen; they are not counted as broken. Correct image response headers remain an upstream quality improvement.

### 2. The main drama's cast citation URL is wrong

The published source link ends in `/oyuncular` and returns 404. TRT's own series navigation points to the working [cast page at `/oyuncu`](https://www.trt1.com.tr/diziler/mehmed-fetihler-sultani/oyuncu). That page supports the named Serkan Çayoğlu, Hilmi Cem İntepe and Rüzgar Aksoy roles. Correct the citation URL; the verified cast facts themselves do not require invention or replacement.

### 3. About-page claims contradict the catalog

The live `/about` page and `src/app/about/page.tsx:47` claim Season 2 has "36 complete episodes with verified dual-language Urdu and English subtitles." The public Season 2 guide has **34 eligible canonical episode pages**, after the identity hold and duplicate merge. Manifest reachability is also not proof of full-length viewing or subtitle quality for every episode.

Line 50 claims the remaining 23 dramas are previews. Supabase currently contains **25 dramas, all marked published**. That sentence is both numerically stale and inconsistent with publication status. Replace these statements with accurate current scope and explain how verification works without claiming every episode was watched. Accurate site-wide trust information supports the Fatih content too.

### 4. HTML response latency needs work

The live 104-page sample had median complete-response time **3.292 seconds**, 95th percentile **5.442 seconds**. Three subsequent sequential requests to Season 4 Episode 2 received headers after **4.281, 3.662 and 2.910 seconds**, and completed after **4.484, 3.671 and 3.061 seconds**. All three reported cache MISS.

These measurements include this audit client's network path; they are not field Core Web Vitals or a mobile Lighthouse score. Nevertheless, repeated multi-second initial responses warrant profiling the server/Supabase query path and caching. The code's React `cache` helpers are per-request; they do not themselves establish a shared cross-request cache. The [official TTFB guidance](https://web.dev/articles/ttfb) explains why slow initial responses can delay rendering and distinguishes TTFB from Core Web Vitals.

An attempted PageSpeed Insights mobile/SEO request returned API HTTP 429/quota exceeded. Therefore mobile performance, LCP, INP, CLS and field Core Web Vitals remain **unverified**, rather than being declared passed.

## Unresolved facts and limitations

- Season 1 dubbed Episodes 1–8 have no independently verified Bolum mapping. Keeping their second numbers unclaimed is correct handling of uncertainty.
- The ambiguous Season 2 source Episode 1 remains noindex. Season 3 Bolum 64 has no usable media. English 65/69 fail, and English 70 is a nine-second file. These remain excluded; usable Urdu versions stay listed.
- Ten imported variants still have unknown publication dates. One is hidden; nine published variants have unknown dates. Four otherwise indexable episode pages consequently lack VideoObject: Season 1 Episodes 3 and 9, Season 3 Bolum 70, and Season 4 Episode 1. The English Season 4 Episode 3 VideoObject omits unknown runtime, an optional property.
- Reachability/playlist-duration checks do not certify end-to-end playback, subtitles, synchronization or translation accuracy for every rendition. Only selected episodes were browser-playback tested; published language labels are based on source metadata.
- Most episode context is a brief 7–13-word official-preview paraphrase plus viewing/numbering guidance. This is useful factual material, but a limited editorial offering compared with richer independently verified summaries, analysis or guides. Eight Season 1 dubbed pages cannot safely receive broadcast-specific plot context until matched. More word count alone is not a ranking solution.
- Actual indexing, video-indexing reports, search impressions/clicks and AI citations have not been verified from Search Console/Bing accounts. Public indexability is distinct from indexing.

## Future ingestion risks found in code

These are maintenance findings, not evidence that all current published values are wrong:

- `scripts/catalog_sync.py:216` prioritizes the publisher's declared duration over a freshly measured playlist runtime. An inaccurate publisher value can therefore reintroduce inaccurate durations on future imports.
- `scripts/catalog_sync.py:326` discards measured duration during link rechecks; installing a replacement media source does not refresh its variant runtime. A newly cut replacement can leave schema duration stale.
- `src/lib/seo/catalog-seo.ts:98` still has a fallback description saying "check both numbers" even where the Bolum mapping is null. Current reviewed dubbed descriptions correctly override it; future unreviewed records could inherit misleading text.

## SEO/GEO interpretation

The episode/Bolum tables, clear edition distinctions, canonical hierarchy, internal links, readable server-rendered answers and official citations are sensible foundations for normal and AI search. English page text with Urdu/English subtitle options does not itself require fabricated translated page URLs or hreflang alternates; genuine translated HTML pages would need a separate localization strategy. [Google localized-page guidance](https://developers.google.com/search/docs/specialty/international/localized-versions) explains alternates for language/regional page versions.

There is no special "GEO schema" that makes a site rank. [Google AI-feature guidance](https://developers.google.com/search/docs/appearance/ai-features) emphasizes standard search eligibility, accessible helpful content, internal linking and matching visible facts/structured data. [OpenAI crawler documentation](https://developers.openai.com/api/docs/bots) distinguishes search crawling from training crawling. The current public rules permit search crawlers in principle, but access and citations still need actual observation.

The requested 60/160 character limits are met. They are editorial budgets, not Google's strict display limits or guarantees: Google may shorten/rewrite [title links](https://developers.google.com/search/docs/appearance/title-link) and choose different [snippets](https://developers.google.com/search/docs/appearance/snippet). Stronger verified originality and trustworthy site information remain relevant under [Google's helpful-content guidance](https://developers.google.com/search/docs/fundamentals/creating-helpful-content).

## Evidence

- `mehmed-comparative-audit.json`: all 107 live/local page observations.
- `mehmed-live-infrastructure-audit.json`: robots, sitemap inventories, crawler-UA checks, About claims and unavailable PSI result.
- `mehmed-reference-asset-audit.json`: all 185 distinct thumbnail/reference checks and 15 supplementary image-signature checks.
- Existing published-content, media and browser-playback evidence remains in the all-season release artifacts.

The next priorities are thumbnail replacement, cast-link correction, truthful About copy, then server-response profiling and Search Console verification. The site is substantially improved and publicly crawlable; calling it perfect or guaranteed to rank would be inaccurate.
