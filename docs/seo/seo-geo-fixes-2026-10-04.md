# SEO and AI search fixes — 4 October 2026

## Applied database changes

- Verified 214 Alparslan/Aşk ve Taht publisher timestamps against current source pages and preserved records; copied them to published video metadata without inventing dates.
- Replaced broad Alparslan Season 1 references with 27 exact TRT episode pages and concise attributed previews. Episode 23 has no episode-specific synopsis in the inspected official metadata, so the guide states that limitation. File-to-broadcast matching remains unconfirmed.
- Evidence, guarded SQL, before snapshots and date rollback are under `artifacts/seo-fixes/`.

## Code ready for deployment

- About now describes the current playable catalog and distinguishes subtitle renditions from separately segmented dubbed chapters.
- Shared navigation renders dynamically with the existing 60-second anonymous data cache, preventing static informational pages from retaining withdrawn catalog links.
- Video JSON-LD and the video sitemap select the same playable rendition, preferring verified dates.
- Season pages explicitly explain internal numbering gaps without creating missing chapters or renumbering the release.
- New imports retain explicit, timezone-qualified publisher upload dates; invalid, future or ambiguous values remain absent.
- Existing working-tree homepage metadata, canonical, actual catalog counts, spoiler HTML and legacy redirects were preserved and verified in this build. Those changes were already present when this fix pass began.

## Validation

- Production build passed compilation, linting and type checks.
- Existing 107-record SEO regression suite passed; new metadata selection/gap tests and importer date checks passed.
- HTTP audit checked all 266 public drama/season/watch pages: 3 dramas, 10 season/edition pages, 253 watch pages. Every page returned 200 with one H1, a description and its expected canonical.
- 249 watch pages contain VideoObject metadata with required date/thumbnail/content fields; sitemap dates match the selected objects.
- Four Mehmed pages remain without VideoObject dates: Season 1 Episodes 3 and 9, Season 3 Episode 70, Season 4 Episode 1. Their source dates remain held as unreliable; page indexing does not require VideoObject.

## Remaining limits

Code has not been deployed. The database edits are applied, subject to application/CDN cache refresh. No deployment credentials or linked deployment configuration were available in this workspace. Existing unrelated working-tree changes were retained.

Episode previews describe official broadcasts, not independently watched full hosted files. Dubbed chapter mapping and unsupported plot summaries still require editorial verification. Full playback and field Core Web Vitals were not established by HTTP/markup checks. Search eligibility does not guarantee indexing, rankings or AI citations.

## Primary guidance

- [Google: AI features and your website](https://developers.google.com/search/docs/appearance/ai-features)
- [Google: Video SEO best practices](https://developers.google.com/search/docs/appearance/video)
- [Google: Video structured data](https://developers.google.com/search/docs/appearance/structured-data/video)
- [Google: Canonical URLs](https://developers.google.com/search/docs/crawling-indexing/consolidate-duplicate-urls)
- [Google: Helpful, reliable content](https://developers.google.com/search/docs/fundamentals/creating-helpful-content)
- [Original GEO research](https://arxiv.org/abs/2311.09735)

No special AI schema or `llms.txt` requirement was introduced: Google's AI search guidance uses ordinary search eligibility, clear text, internal links and factual metadata.
