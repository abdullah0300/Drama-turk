# Fatih: live database and code SEO/GEO update plan

Prepared 3 October 2026. Scope: planning only; no application code, production configuration, or database records changed. This report supersedes the inventory in the earlier local-catalog plan.

## Recommendation and order of work

Make the production website crawlable, correct episode identities and availability, connect approved Supabase editorial content to the rendered pages, then publish original page content and measure results. Treat GEO as making these same pages useful and reliable for AI-assisted discovery. Ranking, video indexing, and AI citations cannot be promised.

Prioritize Pakistan and Urdu viewer demand initially, while preserving English subtitle access. The earlier OpenRush research supports this priority; it does not prove that English demand is absent. Reuse existing URLs and one subtitled episode page with language choices. Urdu dubbed releases serve a different viewing intent and keep their distinct routes.

Do not buy Semrush before fixing the foundation. Existing OpenRush research, Google Search Console, and Bing Webmaster Tools are enough to start this rollout. Reassess a paid competitive-research tool only if it solves a recurring reporting, competitor, or link-analysis need that the existing workflow cannot answer.

## Research: six official sources

These are six official publications from Google and Microsoft, checked online for this plan; they are not six independent publishers.

| Official source | Relevant guidance | Project decision |
| --- | --- | --- |
| [Google: optimizing for generative AI search](https://developers.google.com/search/docs/fundamentals/ai-optimization-guide) | Search foundations and useful original content remain relevant; eligibility does not guarantee appearance. Google does not require special AI schema or llms.txt. | Fix crawl/index policy and factual content; avoid a separate collection of speculative GEO pages. |
| [Google: video SEO](https://developers.google.com/search/docs/appearance/video) | Video discovery depends on accessible media and thumbnails, and a dedicated watch page where the video is prominent. | Keep the player central on episode routes; verify both the watch page and its media. |
| [Google: VideoObject](https://developers.google.com/search/docs/appearance/structured-data/video) | Required properties include name, thumbnailUrl, and uploadDate. contentUrl describes the media; embedUrl describes an actual player. | Supply real metadata and remove the current watch-page embedUrl unless a real embed player exists. |
| [Google: spam policies](https://developers.google.com/search/docs/essentials/spam-policies) | Scaled low-value content and copied material created to manipulate rankings are risky. | Write reviewed episode-specific content; do not mass-produce pages for spelling variants or unavailable episodes. |
| [Google: multilingual sites](https://developers.google.com/search/docs/specialty/international/managing-multi-regional-sites) | Language targeting depends on page content and genuine language versions. | Subtitle selections alone do not justify separate hreflang pages; translate visible content first. |
| [Microsoft: Bing AI Performance](https://blogs.bing.com/webmaster/2026/2/Introducing-AI-Performance-in-Bing-Webmaster-Tools-Public-Preview/) | Bing offers reporting on citations and referenced pages in AI experiences. | Monitor citations separately from clicks and successful playback. |

The implementation steps below are recommendations based on this project's code and records, not claims that every item is a ranking factor.

## Verified live inventory

The connected Supabase project is Turkish Dramas, ref `zvwltfqhbpqtnjbsflvk`. Its ref matches this checkout's configured Supabase URL. Only read-only SQL was used. The attached JSON preserves the relevant snapshot without media delivery URLs or credentials.

Fatih is published and marked as the pilot. There are six published collections, 100 published episode groups, and 180 published video variants. These are catalog groups and renditions, not 100 verified unique broadcast episodes. A stream marked reachable in the database is a stored observation, not a fresh playback test.

| Season/edition | Collection | Groups | Variants | Stored stream observations |
| --- | --- | ---: | ---: | --- |
| Season 1 subtitled | collection-62 | 15 | 30 | 30 reachable |
| Season 1 Urdu dubbed | collection-72 | 8 | 9 | 9 reachable |
| Season 2 subtitled | collection-68 | 36 | 68 | 68 reachable |
| Season 3 subtitled | collection-76 | 36 | 65 | 62 reachable; 3 unavailable |
| Season 4 subtitled, as labeled by source | collection-82 | 3 | 6 | 7 reachable sources |
| Season 4 Urdu dubbed, as labeled by source | collection-88 | 2 | 2 | 2 reachable |

The old local inventory had 99 groups. Live Season 4 dubbed now includes local episode 2 / broadcast 85.

Other findings:
- No `published_editorial` rows target Fatih, its collections, or its groups in this snapshot.
- The drama overview still says “Preserved catalog records ... 149 video entries,” while its stored video count is 180. Neither belongs in a viewer-facing synopsis.
- 92 groups have a still image. Every variant has a thumbnail value, but URL presence does not establish image quality or accessibility.
- 51 variants lack duration. Omit unknown durations until measured.
- Video `created_at` values are database ingestion timestamps. They must not be reused as original upload or broadcast dates.
- Collection-level Urdu/English language lists do not establish that both choices work on every episode.

## Code findings and exact implementation targets

| Area | Current behavior | Planned change |
| --- | --- | --- |
| `src/app/robots.ts` | Disallows every crawler from the whole site. | Environment-aware production policy; keep previews blocked, allow eligible public pages and assets on the released domain. |
| `src/app/layout.tsx` | Root metadata sets index:false and follow:false. | Replace blanket production noindex with consistent page eligibility; keep private, draft, and preview pages noindex. |
| `src/config/site.ts` | Canonical origin falls back to localhost; this checkout explicitly configures localhost. | Require and validate the deployed HTTPS origin. Local configuration is not proof that production is misconfigured; inspect deployed HTML. |
| `src/lib/repository/supabase-catalog-repository.ts` | Selects editorial but uses its first row for title/overview; drops SEO fields, article, duration, and upload metadata. | Return a typed, locale-selected approved editorial model and trustworthy media metadata. |
| Same repository | Active streams are exposed even when verification is unavailable; errors or empty results can fall back to local records. | Centralize source eligibility and make production fallback behavior explicit so quarantined records do not reappear. |
| `src/components/episode/EpisodeView.tsx` | Uses generic descriptions and first stream-present rendition; editorial comes from local approved drafts; embedUrl is the watch URL. | Use approved database content and verified eligible rendition metadata; preserve local drafts as an editorial input, not the production source of truth. |
| `src/components/episode/WatchClient.tsx` | Displays local draft sections and language choices. | Render approved facts and synopsis from the server payload; make unavailable language choices honest and clear. |
| `src/components/season/SeasonView.tsx` | Says “every episode”; lists groups without a shared eligibility filter. | Use accurate available counts, reviewed overview, numbering notes, and filtered episode links. |
| `src/app/drama/[dramaId]/page.tsx` | Uses catalog name/overview and derived counts. | Render reviewed series identity, aliases, available editions, accurate counts, and shared entity identifiers. |
| `src/app/sitemap.ts` | Includes all groups under published editions and uses a fixed last-modified date. | Include only canonical eligible pages; use actual meaningful content-update dates. |
| `src/app/video-sitemap.xml/route.ts` | Pilot-only inventory, generic fallbacks, no shared group eligibility, hand-built XML. | Use eligible watch records, proper XML escaping, truthful video fields, and predictable refresh. |
| `src/lib/routes.ts`, `src/lib/catalog-nav.ts` | Duplicate episode slugs receive ordering-based suffixes. | Freeze current URL mappings before fixing identities; preserve or explicitly redirect changed URLs. |
| Admin editorial route and sync scripts | Need to support and preserve the new editorial pipeline. | Validate the complete publication payload and ensure catalog resync cannot overwrite approved copy or identity corrections. |

## Phase 1: identity and availability corrections

Create a reviewed mapping for every episode: source group ID, edition, source label, verified season, broadcast episode, local episode where applicable, evidence URL, verification date, and reviewer. Keep imported labels separate from verified facts.

Seven groups require identity review before indexing:
- Season 2: `collection-68-episode-1`, `collection-68-bolum-149`, `collection-68-bolum-49`.
- Season 3: both groups for episode 52 and both groups for episode 61.

For each duplicate, compare the actual media, languages, runtime, story, and source page. Determine whether these are alternate renditions of one episode, genuine parts, or different episodes. Do not merge or renumber by matching labels alone. If they represent one episode, consolidate renditions under the chosen group and prepare permanent redirects for obsolete watch URLs. If distinct parts exist, describe those parts explicitly.

For Season 4, the database reports local episodes 1–3 as broadcast 84–86, and dubbed 1–2 as 84–85. This is source labeling, not independently verified official season history. Verify with original broadcaster records and the actual release source before promoting this as authoritative numbering. Where official and distributor season labels differ, explain both rather than inventing agreement.

Known unavailable sources:
- `video-3946`: Season 3 broadcast 64, Urdu; the only variant in this group.
- `video-3949`: broadcast 65, English; Urdu has a reachable observation.
- `video-3968`: broadcast 69, English; Urdu has a reachable observation.

Recheck manifest, media segments, browser playback, and applicable subtitle/audio choice. If still unavailable, prevent the affected rendition from being advertised as playable. Episodes 65 and 69 may remain eligible through a working Urdu rendition, with accurate language copy. Episode 64 needs a functioning source before it can be an eligible watch page.

Record verification separately from publication. A nonempty URL does not mean playback works. Preserve corrections through future imports. Export the affected records and current routes before any later writes.

## Phase 2: publication and indexing foundation

Define one shared public-eligibility resolver used by metadata, page rendering, cards, previous/next links, and both sitemaps.

For an episode, require: published drama, edition, group, and rendition; reviewed identity; an eligible active media source; and a meaningful watch page. Keep web-page eligibility distinct from video rich-result eligibility: missing uploadDate can block complete VideoObject markup without automatically requiring a useful page to be noindexed.

For non-watch informational pages, allow indexation only when they contain useful, accurate information and appropriate links. Do not treat all empty season shells as watch inventory.

Use one production HTTPS origin for canonicals, sitemap URLs, Open Graph URLs, and JSON-LD IDs. Preserve existing clean routes and legacy redirects. Do not change URLs solely to add keyword aliases. Keep edition pages self-canonical when they provide distinct viewing choices; do not collapse all Urdu dubbed pages into subtitled URLs.

Inspect HTTP headers as well as HTML for noindex. Exclude admin, private drafts, previews, and internal APIs from public indexing. A robots block is not a substitute for access control.

Publication acceptance: released eligible pages return 200, can be crawled, have the intended robots directive, and have a correct self-canonical. Redirects resolve in one permanent hop where practical. Held pages are absent from sitemaps and public watch navigation. Check the deployed domain, not only localhost.

## Phase 3: Supabase editorial and metadata pipeline

Reuse `published_editorial` fields already present:
- `approved_display_title`: visible editorial title.
- `short_description`: original page synopsis/summary.
- `seo_title` and `seo_description`: page metadata.
- `structured_article`: typed approved content sections.
- `locale`: explicit page language.
- `published_at` and `updated_at`: editorial publication and modification, not video broadcast dates.

Resolve editorial by target and locale, with a documented fallback. Inspect live target/locale indexes before designing upserts; never select an arbitrary first joined row. Validate structured sections before rendering, preserve spoiler flags, and keep unapproved drafts out of public responses.

Extend repository types and metadata builders so the same approved content reaches the visible page, metadata, and structured data. Ensure core identity, language availability, and synopsis appear in the initial server-rendered HTML.

Add fields only where existing data cannot express the facts: verified numbering, verification provenance, reviewer/source references, actual media upload date, and separate audio/subtitle languages are candidates. Choose target ownership and constraints before a migration. Keep video upload, original broadcast, and editorial dates separate.

Admin publication should preview the exact title, description, visible article, language claims, and eligible media. Publishing should invalidate affected drama/season/episode and sitemap caches; inspect current Next.js cache behavior before choosing mechanisms. Audit sync scripts so metadata survives reimport.

## Phase 4: page content and keyword ownership

One page owns one viewing intent. Spelling variations such as Muhammad/Muhammed, Fateh/Fatih, and the original Turkish title belong naturally on relevant pages; they do not need separate URLs. Avoid repeating every spelling in titles.

### Drama page

Own broad series queries: “Sultan Muhammad Fateh,” “Mehmed Fetihler Sultani,” and subtitle/edition discovery.

Draft title: **Mehmed: Fetihler Sultani — Sultan Muhammad Fateh**. Use the description to explain available Urdu/English subtitles and Urdu dubbed releases without stuffing the title.

Write an original overview, identify the exact modern series, distinguish it from similarly named older productions, and link available season editions. Explain Turkish audio with subtitles versus Urdu dubbed audio. Display counts as available reviewed episodes, not video variants or presumed complete broadcast totals. Use legitimate editorial attribution and official identity references.

### Season 1 subtitled: collection-62

Review all 15 groups, episodes 1–15. Prioritize episode 1 and the season hub for evergreen discovery. Provide an original season introduction and links to all eligible episodes. Explain that this edition offers selectable Urdu/English releases only where verified. Do not claim a complete season until completeness is independently established.

### Season 1 dubbed: collection-72

Review eight groups and nine variants. Determine why variant count exceeds episode count before displaying completeness claims. Own Urdu dubbed intent; keep links between corresponding subtitled and dubbed episodes only after matching identity. Write separate edition availability copy.

### Season 2 subtitled: collection-68

Resolve the episode-1 and 49/149 issues first. Review episodes 16–48 and the resolved ending records. Prioritize episode 49 after resolution, then 36, 40, 43, and 46 based on the earlier measured candidates. Explain continuous broadcast numbering only when verified; do not automatically relabel episode 16 as season-local episode 1.

There is no live Season 2 dubbed collection in this snapshot. Earlier keyword demand for it is a content gap, not authorization to create a false watch page.

### Season 3 subtitled: collection-76

Resolve duplicates 52 and 61, and verify the affected 64/65/69 renditions. Prioritize reviewed pages for episodes 70, 63, 71–74, 69, and 82. Build accurate coverage for remaining groups rather than generic generated summaries.

The earlier research found Pakistan estimates including episode 70 at 1,300/month, 63 and 71–74 at 1,000, and 69/82 at 880. These are provider estimates from earlier queries, not current Search Console traffic or guaranteed demand. Overlapping spelling variants must not be summed.

### Source-labeled Season 4 subtitled: collection-82

Review local 1/broadcast 84, local 2/85, and local 3/86 individually. Verify the season designation before SEO publication. If justified, show both identifiers clearly in the page facts and synopsis. Existing local-number URLs may remain stable. Treat freshness as a reason to review quickly, not evidence of high measured volume.

### Source-labeled Season 4 dubbed: collection-88

Review local 1/84 and newly present local 2/85. Confirm actual Urdu dubbing. Link matched subtitled editions. Do not advertise dubbed episode 3/86 because no corresponding group exists here.

### Every episode page

Use the attached 100-row episode inventory as the work queue. It gives the current route, ID, draft title, query candidate, priority, and specific blockers for each group.

Each eligible page needs:
1. A clear H1 identifying series, verified season/episode, and edition.
2. A prominent working player with honest language controls.
3. A unique, human-reviewed spoiler-free synopsis based on the actual episode.
4. A compact facts block: numbering, edition, verified audio/subtitle choices, and known dates/runtime.
5. Useful episode-specific context or review, with sources for historical assertions.
6. Optional spoiler section, clearly labeled.
7. Breadcrumbs, season link, and previous/next eligible episodes.
8. Relevant still image, sensible alt text, source/reviewer attribution, and meaningful updated date.

Draft title pattern: **Sultan Muhammad Fateh Season 3 Episode 70 — Urdu & English Subtitles**, shortened if the full brand template becomes unwieldy and amended if either language is unavailable. This is an editorial starting point, not a strict character-count rule. Descriptions should summarize this episode and its actual viewing choices rather than merely repeat the title.

## Phase 5: video discovery and structured data

Create shared schema builders and stable entity IDs for the series, seasons, episodes, and videos. Mark up visible verified facts. TVSeries/TVSeason/TVEpisode relationships describe the catalog; they do not themselves promise a Google rich result.

For eligible video markup, select a playable public rendition and use its actual name, original description, stable crawlable thumbnail, and truthful upload date. Keep the schema consistent with the default player. Use a public media URL only if it represents actual accessible content. Omit embedUrl until a dedicated usable embed-player URL exists. Add duration only when verified. Escape JSON-LD safely before embedding it.

Video sitemap output must use proper XML escaping, valid absolute URLs, eligible watch pages, accessible thumbnails, and truthful dates/titles/descriptions. Do not use the fixed import date as video publication. Refresh after catalog/editorial changes.

Verify thumbnail HTTP response, image dimensions, relevance, and stability. Test manifest and segment access from a normal visitor context; document geographic or access limits. Do not represent a browser-only restricted stream as universally crawlable.

## Phase 6: GEO content and language strategy

Make the series and episode identity easy to understand in visible prose. Answer viewer questions from verified facts: which production this is, how numbering works, which editions exist, and which languages work for this episode. Include sources next to specific factual claims. Clearly distinguish fictional storytelling from historical commentary.

Keep reviewer names and experience truthful. Use an editorial policy and correction process that the team actually follows. Do not invent expertise, reviews, statistics, or external mentions.

Start with the current English page interface and Roman-script Urdu query aliases. Subtitle language is not the same as page language. Urdu-script demand was not measured by the prior English-language OpenRush requests.

If later research justifies Urdu page localization, translate navigation, synopsis, facts, and supporting text; introduce distinct stable language URLs, reciprocal hreflang, self-canonicals, and a visible language switch. Do not create language URLs that only swap the video while retaining identical English copy.

GEO success depends on usefulness and discovery, not adding a mandatory llms.txt file. Track AI references separately from organic visits. No automated schema or keyword trick can ensure citations.

## Phase 7: measurement and quality checks

Before rollout, capture baseline index coverage, impressions, queries, clicks, and available AI citation reporting. Verify Google Search Console and Bing Webmaster Tools on the released domain. Review Google's current generative-feature eligibility/settings guidance in Search Console as part of setup.

Tag analytics events for drama-to-season clicks, episode clicks, language selection, playback starts, and playback failures without sending personal or subtitle content. Segment by page, country, device, and edition.

Release checks:
- Production crawl policy and canonical origin validated in actual responses.
- Initial HTML includes the intended title, synopsis, identity, and links.
- Every public route maps to the intended live group; duplicate-resolution redirects tested.
- No held or unavailable-only watch page in either sitemap.
- Sitemap and video XML parse correctly, with no localhost URLs.
- Video schema validates and matches the playable rendition.
- Urdu/English claims agree with actual media.
- Playback verified on representative mobile/desktop browsers, including the unavailable cases after repair.
- Run build and appropriate existing catalog/lint checks for the eventual code changes.
- Check actual page performance and player layout; avoid preloading full video or all sidebar assets. Fix measured image/layout/player loading problems.
- Submit corrected sitemaps, inspect representative series/season/watch URLs, and watch indexing/video reports.

Review weekly initially: new query impressions, CTR, canonical/indexing issues, playback success, and citations. Use those findings to update titles or content; do not make changes solely because a rank fluctuates. No fixed time-to-rank target is justified by this audit.

## Delivery sequence and completion gates

| Stage | Scope | Completion gate |
| --- | --- | --- |
| 1 | Route snapshot, identity conflicts, known unavailable streams | Evidence-backed mappings; affected languages and publication decisions recorded |
| 2 | Public eligibility, robots, canonicals, sitemap consistency | Production responses and inventory agree |
| 3 | Supabase editorial model, repository/admin/rendering integration | One reviewed pilot renders approved visible content and matching metadata |
| 4 | Drama hub and six edition hubs | Accurate counts, unique content, complete eligible navigation |
| 5 | Priority episodes and rest of the 100-group queue | Each row reviewed, repaired/published or explicitly held |
| 6 | Video metadata/schema, image/media verification | Valid markup/XML and truthful media facts |
| 7 | Search Console/Bing measurement and iterative improvement | Baseline recorded and recurring review process operating |

These stages can overlap for independent work, but held identities must be resolved before publishing their SEO copy. Content review effort depends on watching and verifying the actual episodes; code automation cannot substitute for that work.

## Attached working files and limitations

- `mehmed-live-audit.json`: read-only database snapshot.
- `mehmed-live-page-plan.csv`: 107 page rows, including all 100 live episode groups.
- Earlier `mehmed-openrush-keywords.csv` and `mehmed-openrush-query-log.json`: provider keyword evidence; retain market/query/date context.
- Earlier `mehmed-season-episode-research.md`: supporting search research, superseded here for live counts.

CSV routes reproduce current ordering-based slug rules. Freeze them against actual rendered routes before any data edits, particularly duplicate suffixes. CSV titles and primary queries are candidates; they require identity and language review and do not carry an invented volume.

This audit read the relevant source files and live database; it did not verify deployed headers, fresh playback, every thumbnail, or the content of every episode. Those are explicit acceptance tasks. No keyword-provider data was refreshed in this pass. No production changes were made.

