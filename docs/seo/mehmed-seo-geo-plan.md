# Fatih / Mehmed SEO and GEO implementation plan

Prepared 3 October 2026. Scope: the drama, six existing season editions, and all 99 local episode groups (106 page candidates). This is a plan, not deployment approval or a claim of verified live catalog coverage. The companion mehmed-page-action-plan.csv supplies a row for each page: URL, candidate queries, evidence, draft title, priority, content, GEO, schema, links and release checks.

## Strategy and evidence

Serve both Urdu and English subtitle audiences on the existing watch pages. Lead Pakistan-facing copy with Sultan Muhammad Fateh; identify the same series as Mehmed: Fetihler Sultanı and include Fatih as a natural regional alias. Retain existing clean URLs. Distinct dubbed releases retain their edition routes. Do not create pages per spelling or per keyword.

OpenRush estimates support season-3 and specific episode opportunities. Most returned trend history ends in August 2026, so it cannot measure current October or season-4 demand. The latest retry successfully reproduced season-3 estimates. Unknown/zero coverage does not prove no demand. Country samples do not represent worldwide English viewers; competition labels are not organic difficulty scores. Never sum overlapping variants into unique searches. Query matching in the CSV is conditional on episode identity; proposed targets are labeled where no measured evidence exists.

## Phase 0: make the catalog and production eligibility trustworthy

Owner: engineering with an editorial reviewer. Complete before releasing optimized affected pages.

1. Resolve seven held episode records: collection-68-episode-1; collection-68-bolum-149; collection-68-bolum-49; collection-76-bolum-52; collection-76-episode-52; collection-76-episode-61; collection-76-bolum-61. Compare source videos, original TRT numbering, cut/duration and language. Duplicate numbers may represent separate cuts: never merge based solely on a number. Record the approved identity and decision.
2. Reconcile local 36-group season-2 and season-3 counts against actual unique episodes. Keep extras distinct. Confirm each edition and rendition is published and playable in the live database; local JSON is inventory, not proof.
3. When production is ready for indexing, replace the blanket robots disallow and inherited noindex/nofollow with deliberate public/private rules. Preserve staging restrictions. Keep admin/auth/private/internal-search pages out of indexing. Robots blocking is not authentication, and robots must allow crawlers to see any noindex directive intended to remove a public URL.
4. Require the actual production HTTPS canonical domain. Canonicalize each legitimate episode/edition to its own stable URL; use permanent redirects for verified legacy aliases. Do not canonicalize distinct dubbed cuts to subtitled cuts.
5. Make XML and video sitemaps list canonical HTTP-200 eligible pages. Exclude held/private/draft/redirecting/unavailable watch URLs. Replace artificial uniform lastmod dates with genuine meaningful changes. Include all eligible Mehmed episodes, not only a hero-dependent subset. Escape XML values correctly.
6. Validate third-party media access and stable thumbnails. A HEAD success does not prove playback, and browser playback does not prove crawler access. Use rendered mobile checks and Search Console URL Inspection.

Acceptance: representative drama, each edition and reviewed episodes are crawlable/indexable on production, with correct canonical/HTTP state and consistent publication decisions. No held record receives an unverified SEO identity.

## Drama page

URL: /drama/mehmed-fetihler-sultani. Priority P1, following phase 0.

Draft title: Sultan Muhammad Fateh (Mehmed) - Urdu & English Subtitles. The application appends the brand once. Mention Urdu dubbed in the visible editions list when actually available rather than making the title a list of aliases.

Content: original reviewed synopsis; original title and regional aliases; genuine genre/cast facts sourced to TRT; available seasons and edition links; original Turkish audio versus subtitle/dubbed language; named editorial reviewer; real update date. Counts must reflect verified unique episodes, not video-rendition totals.

GEO: visibly answer what this drama is, how it differs from other Mehmed productions, and which viewing editions Great Nation offers. Cite official series identity and separate dramatised events from documented history. Use stable entity identifiers for Great Nation and the series. Do not describe Great Nation as the producer or original broadcaster.

Schema: TVSeries and BreadcrumbList where applicable; Organization on a genuine site/about identity. Schema matches visible facts; TVSeries alone does not guarantee a Google rich result.

## Season-by-season plan

| Existing edition | Priority | Candidate title | Specific content and GEO task |
|---|---|---|---|
| Season 1 subtitled, collection-62 | P2 evergreen | Sultan Muhammad Fateh Season 1 - Urdu & English Subtitles | Starting-point synopsis, exact available languages, episode list, viewing order. Explain the original series title. Do not claim the dubbed release has identical cuts or counts. |
| Season 1 dubbed, collection-72 | P2 evergreen | Mehmed Fatih Al Sultani Season 1 - Urdu Dubbed | Verify that the broadcast/distributor identity supports this alias; describe Urdu audio, actual released episodes and numbering. Link to subtitled season as an alternative edition. |
| Season 2 subtitled, collection-68 | P2 after identity review | Sultan Muhammad Fateh Season 2 - Urdu & English Subtitles | Explain verified original broadcast numbering. Resolve episode-1 and episode-49/149 conflicts. Prioritize eligible episodes 49, 40, 36, 43 and 46 using measured queries. |
| Season 3 subtitled, collection-76 | P1 measured demand | Sultan Muhammad Fateh Season 3 - Urdu & English Subtitles | TRT confirms opening broadcast episode 50. Explain local episode-1 alias on that same page. Prioritize eligible 70, 63, 71, 72, 73, 74, then remaining mapped episodes. Resolve duplicate 52 and 61 records. |
| Season 4 subtitled, collection-82 | P1 freshness | Mehmed Season 4 - Urdu & English Subtitles | Clear source-verified local/broadcast labels: 1/84, 2/85, 3/86. Latest available episode and actual update date. No fabricated future episodes or unsupported release promises. |
| Season 4 dubbed, collection-88 | P1 edition accuracy | Mehmed Season 4 - Urdu Dubbed | Verify the one locally cataloged release and its actual availability. Explain audio and numbering; avoid claiming all three subtitled episodes are dubbed. |

Language wording in every draft is conditional on current live availability. The CSV contains row-specific drafts for the 99 episode groups. No season-2 or season-3 dubbed pages are proposed because those editions are absent from the local catalog, despite search demand.

## Every episode page

Use one canonical page per verified episode edition, with both subtitle renditions available through the player when present. For season 4 a concise draft is: Mehmed Season 4 Episode 1 (Bolum 84) - Urdu & English Subtitles. For season 3 use: Sultan Muhammad Fateh Season 3 Episode 70 - Urdu & English Subtitles. Titles are drafts, not rigid length/keyword-density rules; keep them readable and avoid duplicate brand suffixes.

Visible page order:
1. Accurate episode heading and prominent playable video; subtitle/audio selector clearly labeled.
2. Short availability and numbering facts: original title, season, broadcast number, verified local alias, subtitle versus audio languages, duration and original publication date if known.
3. Original spoiler-free episode synopsis reviewed against the actual video; no automatic plot invention from a title or competitor article.
4. Optional reviewed recap with clear spoilers, relevant historical context with authoritative citations, and practical answers to genuine viewer questions.
5. Crawlable breadcrumb, season link, previous/next eligible episodes and edition switch. Use descriptive link text and preserve saved-history routes.

GEO: answer exact episode identity and language availability clearly in server-rendered text. Show reviewer/source and accurate updates; keep the answers consistent with player, metadata, schema and sitemap. Answer blocks help viewers but are not an AI ranking guarantee. No fixed word count or paragraph-chunking requirement. FAQs are ordinary visible content; do not assume entertainment FAQs earn FAQ rich results.

Video schema: use actual rendition title, unique stable thumbnailUrl and genuine uploadDate; truthful description and duration when known; valid contentUrl and series relationship. The existing embedUrl points to a watch page: omit it unless there is a real dedicated player URL. Never invent dates or claim verification from missing data. Add Clip/SeekToAction only after reliable timestamps and working deep links exist. Keep schema/thumbnail/stream metadata aligned with the video users actually see.

Acceptance per row: identity approved, working playback, truthful language controls, unique reviewed content/title, self-canonical, visible facts match schema, valid sitemap state, rendered mobile QA and representative Rich Results/URL Inspection validation.

## Language and GEO rules

Subtitle language and webpage language are separate. Keep the existing page in its actual written language while explaining both subtitle choices. Do not create hreflang entries for a player toggle. If genuine Urdu-written pages are later authored, use distinct URLs, reviewed Urdu content, reciprocal hreflang, self-canonicals and an explicit language switch. Avoid automatic location redirects. Do not translate only boilerplate and call it a localized page.

Google states foundational SEO applies to AI features, and that special AI schema and llms.txt are not required for its search visibility. No hidden AI prompts, fake citations, manufactured third-party mentions, keyword stuffing, or mass-produced pages. Seek genuine editorial references through useful content and authentic outreach, not paid ranking links. Other AI providers have their own access policies; this plan does not claim llms.txt or crawler rules behave identically everywhere.

## Implementation order and measurement

Batch A: phase 0, drama page and season-3/4 hubs; reviewed season-3 high-demand episodes and current season-4 episodes. Batch B: season-2 reviewed opportunities; season-1 starting and dubbed pages. Batch C: remaining verified episodes with original editorial treatment. Hold unresolved identities independently rather than delaying unaffected pages. Dates depend on catalog verification and editorial capacity, not an arbitrary deadline.

Before release, establish Search Console/Bing baselines and track organic playback-start, successful progress and player-error events in existing analytics. Do not send personal information or full tokenized stream URLs in events. After release, inspect discovery/video indexing weekly initially and compare 28-day query/page/country trends. Separate season-local and broadcast query families. Record denominator/availability changes. Do not attribute seasonal demand changes automatically to SEO work or promise results within a fixed number of weeks.

GEO measurement: use available Google generative-search reporting, Bing AI Performance citations and actual referral visits. OpenRush Google AI Overview coverage is not ChatGPT/Claude/Perplexity coverage. Citations, mentions, visits and successful playback are different measures. Manual prompt samples are observations, not a complete visibility metric.

Maintain the plan when new verified episodes arrive: importer preserves source identity; editorial review confirms numbering/languages; published page links, schema and sitemaps update together. Recheck rankings and query wording rather than publishing separate pages for every new query variation.

## Official guidance consulted

- Google AI search: https://developers.google.com/search/docs/fundamentals/ai-optimization-guide
- Google video SEO: https://developers.google.com/search/docs/appearance/video
- Google VideoObject requirements: https://developers.google.com/search/docs/appearance/structured-data/video
- Google multilingual sites: https://developers.google.com/search/docs/specialty/international/managing-multi-regional-sites
- Google spam policies: https://developers.google.com/search/docs/essentials/spam-policies
- Bing citation measurement: https://blogs.bing.com/webmaster/2026/2/Introducing-AI-Performance-in-Bing-Webmaster-Tools-Public-Preview/
- Official season-3 broadcast opening: https://www.trt.net.tr/tabii/mehmed-fetihler-sultani-yeni-sezon-basliyor-27718381

These sources establish eligibility and best practices, not guaranteed ranking or AI inclusion.
