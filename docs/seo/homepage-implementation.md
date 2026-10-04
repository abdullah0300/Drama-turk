# Homepage SEO and AI-search implementation

The existing dark/gold design, featured carousel, drama cards, watch history and saved list are retained. The homepage now has one permanent H1 and a factual introduction, while rotating drama titles use H2 headings.

## Search targeting

- Primary topics: Turkish dramas, Turkish historical dramas, Urdu subtitles and English subtitles.
- Supporting topic: available Urdu dubbed editions.
- Detailed drama/season/episode searches retain their dedicated pages; the homepage is a discovery directory.
- Absolute title: `Turkish & Historical Dramas | Urdu & English Subtitles` (54 characters).
- Description: `Browse Turkish and historical dramas with Urdu and English subtitles, plus available Urdu dubbed editions. Explore seasons and episodes on Great Nation.` (152 characters).
- Homepage canonical, index/follow production rules, Open Graph/Twitter previews and a local 1200×630 PNG social image are included. Next normalizes the homepage canonical to the origin without its trailing slash; these URLs are equivalent.

## Content and data

- Historical series use the database's existing Historical genre. Other catalog entries remain visible under More Dramas to Explore and Browse Dramas. Only four dramas currently have that tag; missing historical classifications will be reviewed when those dramas are optimized. No database classifications were changed.
- Language directories derive from published variants, published drama/edition/episode records and active stream sources marked reachable or browser-tested. The query is paginated and excludes the same unresolved identities and duplicate aliases as the episode pages. This reflects catalog health records, not a new full playback/translation audit.
- Counts show published series and viewing editions, rather than claiming that language renditions are unique episodes. Episode totals in the season carousel and featured saved-list data count eligible canonical episode pages in the default edition.
- Recent Episodes by Drama orders the latest eligible pick from each drama by its known source publication date. Only one current pick has a date exposed by the repository; undated picks are not falsely assigned release dates. This is not an exhaustive global release feed.
- Explore Seasons replaces an unsupported recency claim. Its existing selection behavior is retained.
- A visible viewing guide answers subtitle/dubbing differences, per-episode language availability and broadcast numbering. Historical drama is distinguished from documentary evidence.
- WebSite, CollectionPage and ItemList structured data describe the visible directory. No special AI schema or FAQ rich-result promise is introduced.

## Caching and deployment

Public homepage settings, viewing choices and episode picks use the shared 60-second catalog cache and existing admin tag invalidation. Drama and edition navigation reuse shared caches; slug/video Maps remain outside persistent JSON serialization. Authentication is not cached. Direct database/sync changes are reflected through cache refresh; expiration can serve stale data while background refresh runs.

The application remains dynamically rendered. Cold database-dependent requests can take seconds; warmed timings do not establish live Core Web Vitals. Deploy the workspace changes through the user's usual workflow, then check live indexing and mobile performance.

## Verification artifacts

- `scripts/check-homepage-seo.cjs` validates initial HTML metadata, one H1, structured data, database-derived counts, historical/language membership, date ordering, social-image access and all 25 drama links. Expected membership is an independent read-only Supabase query saved in `homepage-catalog-check-input.json`.
- `homepage-rendered-checks.json` records the most recent completed homepage verification and local response samples.
- Existing Fatih route and metadata tests cover its 107 routes, 102 sitemap pages and 95 video-sitemap pages.
- Desktop/mobile browser review verifies the maintained visual layout and section navigation.

No database writes, deployment or ranking guarantee are part of this homepage update. Other dramas still require their own editorial SEO review.

## Final verification — 4 October 2026

- Isolated production build, lint and TypeScript checks passed. `NEXT_BUILD_DIR=.next-seo-check` allowed verification alongside the existing development server; normal builds still use `.next`. Next's temporary tsconfig include was removed after the build.
- Homepage checks passed: one H1, title 54 characters, description 152 characters, production indexing enabled, self-canonical, matching structured data and all 25 drama links returning HTTP 200.
- Published inventory: 25 series and 65 viewing editions. Language membership matched the independent database query: 23 Urdu-subtitled, 7 English-subtitled and 4 Urdu-dubbed dramas. Counts are overlapping viewing choices, not distinct catalog totals.
- Fatih's carousel correctly shows 34 eligible default-edition episodes for Season 2 and 33 for Season 3, excluding duplicate aliases, unresolved identity and unavailable episodes. Seasons 1 and 4 show 15 and 3 respectively.
- All 107 Fatih route checks passed; all 104 canonical pages matched their approved metadata. Sitemaps retained 102 Fatih indexable pages and 95 video pages; 87 source-linked previews and 90 verified video durations remained intact.
- Desktop and 390×844 mobile checks passed. Mobile document width was 382 px within the 390 px viewport; the English-subtitle shortcut scrolled its heading below fixed navigation. Screenshots are `homepage-desktop.png` and `homepage-mobile.png`.
- Local performance remains variable. During concurrent verification an initial request took 7,843 ms to headers and 36,977 ms to complete HTML; the following two took 747–1,054 ms in total. A later isolated sample took 3,789 ms initially, followed by 358–388 ms. These are local measurements, not live Core Web Vitals or proof of a fast cold start. Keep post-deployment performance verification on the release checklist.

Remaining editorial work: richer descriptions for other dramas, missing historical genre classifications and reliable source dates for undated episode picks. These were not invented or silently corrected in the database.
