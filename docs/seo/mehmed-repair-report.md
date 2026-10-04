# Fatih SEO and AI-search repairs — 4 October 2026

## Completed

- Replaced broken Season 1 subtitled Episode 3 and Episode 4 thumbnail URLs in Supabase with episode-specific images from TRT's official episode listing. Kept a before-state backup in `mehmed-repair-before.json`. The database's supported `catalog` provenance value is used; the actual source is TRT 1, not Niazi. Source pages: https://www.trt1.com.tr/diziler/mehmed-fetihler-sultani/bolum/3bolum and https://www.trt1.com.tr/diziler/mehmed-fetihler-sultani/bolum/4bolum.
- Corrected the main page's cast citation to https://www.trt1.com.tr/diziler/mehmed-fetihler-sultani/oyuncu in Supabase, approved artifacts and generators. Historical audit/backup files retain the original failure for traceability.
- Replaced unsupported About-page catalog counts and full-verification claims with accurate statements about per-episode availability and the limits of sampled playback checks.
- Removed the fallback description's instruction to check two numbers when a broadcast mapping is unknown.
- Reduced navigation's latest-episode lookup to five playable picks, preserving configured priority order and fallback to later dramas. The homepage's complete drama list is retained.
- Added a 60-second shared cache for anonymous drama/navigation data and latest-episode notifications. Cached payloads are plain JSON; slug/video Maps are rebuilt per request. Successful admin editorial/publication/settings updates invalidate the shared tag. Authentication and admin reads are not cached. Direct database/sync edits rely on the short cache refresh interval; expiration can serve stale data while refreshing, so this is not a hard maximum staleness guarantee.
- Episode imports now use measured complete-playlist durations rather than potentially guessed publisher values. A replacement primary stream updates its variant's runtime, or clears it when the new runtime is unknown.

## Verification

- Production build, lint and TypeScript checks passed.
- All 107 Fatih route checks passed: 104 HTTP 200 routes, three permanent duplicate redirects, 102 indexable sitemap pages and 95 video-sitemap pages.
- All 104 canonical pages matched approved titles and descriptions; 87 official episode previews rendered; 90 VideoObjects contained verified durations. Optional unknown facts remain omitted.
- Main/Season 4 checks and all eight Season 1 dubbed description checks passed.
- All 89 distinct thumbnail URLs and 96 official reference URLs returned HTTP 200. All 15 third-party thumbnail responses missing Content-Type were verified to contain RIFF/WEBP bytes. These external server headers cannot be repaired in this repository.
- Regression tests passed for notification ordering, unplayable-release fallback, bounded scans, complete versus sliding playlist duration, and replacement-stream runtime updates/clearing.
- Repeated route requests exercised the serialized cache and retained episode numbering/navigation/schema behavior.

## Performance evidence

Local production-server measurements only, on the Season 4 Episode 2 subtitled page:

| Sample | Headers | Complete HTML |
|---|---:|---:|
| Before, initial request | 12,143 ms | 12,195 ms |
| Before, repeat requests | 2,339–2,834 ms | 2,347–2,963 ms |
| After, first sampled request | 221 ms | 2,672 ms |
| After, following four requests | 33–63 ms | 39–107 ms |

The after samples followed the route verification run, which had populated caches. They demonstrate warmed-cache performance, not a fresh deployment's cold start. Database-dependent uncached renders still take seconds. Raw samples are saved in `mehmed-performance-before-fix.json` and `mehmed-performance-after-fix.json`. This does not establish live TTFB, mobile Core Web Vitals, or a PageSpeed score. The previous PageSpeed API attempt was quota limited.

## Deployment and remaining limits

Supabase image/citation repairs are saved immediately. The application, admin cache invalidation, About copy, image configuration and sync-script repairs require the user's deployment/update of the sync runtime. No deployment was performed.

Missing reliable upload dates, unmapped Season 1 dubbed broadcast identities, the unresolved Season 2 source identity and unavailable source renditions remain explicitly withheld or excluded. These need verifiable source evidence rather than invented values. Brief official previews can still benefit from richer original editorial work based on actual episode viewing. No complete-episode subtitle accuracy verification was performed.

The existing live crawl/sitemap audit passed basic accessibility and simulated crawler user agents. Actual Google/Bing indexing and AI citations require search-console/crawler evidence after deployment; HTTP access alone does not establish indexing or rankings. There is no guarantee of ranking or AI inclusion.

This report updates the historical findings in `mehmed-follow-up-audit.md`; it does not erase the before-repair audit evidence.
