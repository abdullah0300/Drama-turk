# Fatih SEO/GEO quality audit — 4 October 2026

## Verdict

The implementation provides a useful technical foundation. It is not accurate to call the live site fully optimized, fully crawlable, or guaranteed to rank. The public site still runs the earlier frontend. This audit reads the code, checks rendered HTTP responses and compares official guidance; it does not claim that every episode was watched in full.

## Coverage and evidence

The planned inventory has 107 routes: one series, six season/edition pages and 100 imported episode groups. The local production route test passes all 107, including three permanent redirects. Two episode identities are intentionally noindex, leaving 95 eligible episode pages. The standard sitemap contains 102 Fatih pages and the video sitemap 95. The before-update inventory, exact metadata CSV, route-test results and a local/live comparative HTTP audit are saved beside this report.

The completed comparative audit fetched every planned route from both environments: local returned 104 HTTP 200 pages and three 308 redirects; live returned 107 HTTP 200 pages, all with noindex. Both environments have exactly one H1 per HTTP 200 page. The local 95 eligible watch pages contain a video element; 78 include VideoObject and 17 omit it because the selected initial variant lacks the necessary verified facts. These numbers are observed HTML results, not Google rich-result validation.

| Release | Eligible episode pages | Important limitation |
|---|---:|---|
| Season 1 subtitled | 15 | Initial variants lack reliable upload dates |
| Season 1 Urdu dubbed | 8 | Independent broadcast-number mapping not verified |
| Season 2 subtitled | 34 | Ambiguous source Episode 1 excluded; duplicate broadcast 49 redirects |
| Season 3 subtitled | 33 | Broadcast 64 unavailable; duplicate broadcasts 52 and 61 redirect; some English sources unavailable |
| Season 4 subtitled | 3 | Broadcasts 84–86 paired with local episodes 1–3 |
| Season 4 Urdu dubbed | 2 | Broadcasts 84–85 paired with local episodes 1–2 |

## Confirmed strengths in the implemented code

- Absolute, page-specific titles and descriptions respect the project's 60/160 character budgets. The database maximums are 59/158. Both numbers appear when supported, and language labels derive from playable renditions.
- Self-canonical episode URLs, preserved historical slugs and 308 duplicate redirects consolidate identities. Eligible season and episode links are actual HTML links.
- Editorial text and source references appear in server-rendered HTML. This supports crawlers that do not execute JavaScript.
- Breadcrumb, TVSeries, TVSeason and TVEpisode entities identify the hierarchy. Conditional VideoObject avoids invented upload dates and durations. JSON and XML output escape unsafe characters.
- Production robots permit public crawling through the wildcard rule; preview/admin/search/filter indexing protections are separately controlled. No per-bot allow rule is required when the wildcard already allows the public site.
- The video sitemap uses actual media URLs and thumbnails. Known failed media choices are excluded. Manifest reachability and browser-tested playback are recorded distinctly.

## Confirmed live blockers

The public `/robots.txt` returns HTTP 200 with `User-Agent: *` and `Disallow: /`. Its sitemap declarations also contain double slashes. The live main page and sampled episode return `noindex, nofollow`. The episode title still uses the earlier branded title exceeding the selected budget. These are deployment blockers, not evidence that the new code is failing.

Ordinary requests using Googlebot, bingbot, OAI-SearchBot and Claude-SearchBot user-agent strings return HTTP 200 on the main page, but still receive noindex content. Spoofing an agent string does not establish access from actual provider IPs. Hosting firewall, CDN rules and bot logs have not been inspected, so real crawler access cannot be certified.

## Remaining SEO and GEO work

1. **Deploy and verify indexing first.** Correct production release environment, robots and page meta; inspect live main, each edition and representative watch pages in Search Console. Submit both sitemaps. Validate redirects, selected canonicals and video indexing after Google fetches them.
2. **Improve distinctive content.** Episode articles mainly repeat number-matching and rendition instructions. Different numbers make titles distinct but do not create substantial unique editorial value. Add genuinely verified episode summaries, original viewing notes and useful season context where evidence exists. Do not invent plot details or publish repetitive keyword filler. Source links explain provenance; they do not prove every sentence was independently reviewed.
3. **Complete verified video metadata.** Supply missing original publication dates and real durations from trusted evidence. VideoObject is intentionally absent when required facts are missing. A video sitemap does not guarantee a video rich result.
4. **Strengthen player discovery.** The server HTML contains a video element with no `src`, `source` or `poster`; JavaScript/HLS attaches the stream afterwards. The sitemap and existing VideoObject help discovery, but pages without VideoObject rely more heavily on rendering. Add an accurate poster and evaluate an SSR-safe media source strategy without breaking HLS playback. Confirm Google sees the prominent player in its rendered page.
5. **Verify third-party media access.** Fatih uses cdn4.niazitv.pk, cdn.videas.fr and video.twimg.com, with thumbnails on play.niazitv.pk/image.tmdb.org. The first two media hosts returned 404 for robots; that is not itself a crawl prohibition. play.niazitv.pk allows crawling. video.twimg.com explicitly permits Googlebot/Bingbot but disallows wildcard agents, so some AI bots cannot crawl its media. Public page text is separate from media crawling. Actual provider-IP access, stable URLs and thumbnail quality still require confirmation.
6. **Resolve source identity and reliability.** Do not index ambiguous Season 2 source Episode 1 or assert unverified Season 1 dubbed broadcast numbers. Replace unavailable media with verified sources before making availability promises.
7. **Measure performance and indexing.** No current field Core Web Vitals, Search Console coverage, Rich Results Test verdict or server crawler logs were available in this audit. HTTP success, valid JSON and local build success cannot substitute for these measurements. Middleware calls Supabase auth on public requests; assess its latency before optimizing it.
8. **Maintain truthful language targeting.** Page text is English even when video subtitles are Urdu. `lang=en` is appropriate. Do not add Urdu hreflang merely because the player offers Urdu subtitles; create an actual Urdu page translation first if that audience warrants it.

Counts in authored season descriptions are snapshots and can become stale when catalog availability changes; maintain them alongside publishing or make those particular counts dynamic. Generic additions such as “See viewing details” only fill the character budget; there is no SEO need to reach 160 characters. Prefer more useful descriptions when verified episode information becomes available. Episode editorial sections currently use H4 headings beneath the page H1; use a clearer H2/H3 hierarchy for accessibility and reader navigation. This is a minor improvement, not a proven ranking blocker.

## Official guidance used

- [Google AI optimization guidance](https://developers.google.com/search/docs/fundamentals/ai-optimization-guide): normal SEO, indexability, useful original content and understandable structure underpin AI Search visibility. Google does not require llms.txt or special GEO markup.
- [Google title links](https://developers.google.com/search/docs/appearance/title-link) and [snippets](https://developers.google.com/search/docs/appearance/snippet): descriptive page-specific text matters; 60 and 160 are our editing budgets, not fixed Google character requirements.
- [Google video SEO](https://developers.google.com/search/docs/appearance/video) and [VideoObject](https://developers.google.com/search/docs/appearance/structured-data/video): discoverable prominent video, stable accessible media, accurate metadata and live validation matter.
- [Google robots guidance](https://developers.google.com/search/docs/crawling-indexing/robots/intro): crawl permission is distinct from page indexing directives.
- [Google localized pages](https://developers.google.com/search/docs/specialty/international/localized-versions): hreflang describes genuine localized page alternatives.
- [OpenAI crawler documentation](https://developers.openai.com/api/docs/bots): OAI-SearchBot serves search; GPTBot serves model training. Allowing training is not required to permit search discovery.
- [Anthropic crawler documentation](https://support.claude.com/en/articles/8896518-does-anthropic-crawl-data-from-the-web-and-how-can-site-owners-block-the-crawler): crawler purposes and owner controls are distinct.

This review did not deploy code or change database content. It adds evidence and identifies the next corrections; it does not label unresolved work as complete.
