# Upcoming episode pages and weekly countdowns

The active default subtitled seasons now expose one upcoming episode on the same URL that will later serve the video. No catalog rows, fake video records or placeholder streams are inserted.

## Initial schedule evidence (reviewed 4 October 2026)

- Mehmed Season 4 Episode 4 / Bölüm 87: expected Tuesday 6 October 2026, 20:00 Europe/Istanbul (17:00 UTC, 22:00 Asia/Karachi). TRT 1 supplies the Tuesday 20:00 slot and the Bölüm 87 trailer, but the reviewed official pages did not expressly state 6 October; the date is therefore labelled an estimate. Sources: https://www.trt1.com.tr/diziler/mehmed-fetihler-sultani and https://www.trt1.com.tr/diziler/mehmed-fetihler-sultani/fragman/87-bolum-fragmani
- Aşk ve Taht Episode 5: Wednesday 7 October 2026, 20:00 Europe/Istanbul (17:00 UTC, 22:00 Asia/Karachi). ATV's official Episode 5 trailer expressly lists this date/time: https://www.atv.com.tr/ask-ve-taht/5-bolum-1-fragman/izle
- ATV's second Episode 5 trailer is paraphrased briefly for the upcoming preview: https://www.atv.com.tr/ask-ve-taht/5-bolum-2-fragman/izle
- Reports of Aşk ve Taht ending with Episode 5 make blind weekly episode generation inappropriate. The initial maximum is 5; further upcoming episodes need new official evidence before changing this limit. The page does not present the reported finale as an official confirmation.

## Automatic lifecycle

`src/config/release-schedules.json` holds each reviewed season, anchor local/broadcast number, timestamp, recurrence and optional upper limit. `getUpcomingEpisode` uses the current published, playable inventory to select the next local label. At most one upcoming episode is generated; time passing does not increment the episode number. The site uses request rendering and its existing 60-second anonymous catalog cache.

After an importer adds a usable rendition, the existing EpisodeView resolves that video on the very same URL. The next season card and sitemap entry are calculated from the updated inventory, without a separate weekly deployment. The two-hour import interval and 300-second sitemap/CDN cache can delay visibility. Language readiness is checked individually by the existing rendition selector.

Future weekly dates are forecasts rather than automatically confirmed broadcaster schedules. Breaks, postponements and season changes require updating or pausing the schedule config. The generator does not infer new seasons. A forecast more than seven days ahead is not published; distant speculative episode URLs receive the not-found/noindex boundary.

## Countdown and subtitle estimates

One circular countdown shows Turkish broadcast time. Separate Urdu and English counters use median delays from up to four recent, dated, playable subtitle renditions. Negative delays, delays exceeding 48 hours and unknown timestamps are excluded; at least two samples are required. These are publisher upload-time estimates, not fixed promises or exact site publication times. The initial valid sample counts are two per language for Mehmed and four for Aşk ve Taht.

The remaining circular arc shrinks anticlockwise, and dates are server rendered in both Türkiye and Pakistan time. At zero the subtitle counter says “Checking subtitle availability.” It never creates a video or announces readiness. After broadcast time, a visible upcoming page refreshes every two minutes so a real imported rendition can replace it.

## SEO

Upcoming pages have a description, canonical URL, one H1, sourced release information, links to the season and previous playable episode, ordinary TVEpisode/breadcrumb metadata and regular sitemap entries. They do not have a VideoObject, video-sitemap entry or false Watch Now button. Unknown future episodes are not indexed. Search engines still decide whether and when to index the pages.

## Email and deployment

There is no configured email sender or subscription infrastructure in this project. Email signup/delivery is not enabled, and no visitor email addresses are collected. The user was asked which service to connect. The timer/page feature works independently of email.

Changes are local and require the normal site deployment. No hosting configuration or deployment credentials were available; unrelated existing working-tree changes were retained.

## Validation

- Production build, TypeScript checks and existing SEO suites passed.
- Release schedule tests cover exact UTC conversion, local-to-broadcast numbering, weekly advancement after a playable release, no clock-only advancement, Episode 5 upper limit, old-preview exclusion, distant predictions and median delay filtering.
- Production HTTP checks verified both upcoming URLs, metadata, season links, regular sitemap inclusion, exclusion from video sitemap, absence of video markup and continued playback pages for the latest released episodes.
- A regression audit checked all 268 public drama/season/episode pages (266 existing plus two upcoming) and all 253 watch/video sitemap pages. The four previously documented Mehmed upload-date holds remain unchanged.
- Desktop and phone browser previews verified countdown rendering and responsive layout.

Run `node scripts/test-release-schedules.cjs`, `node scripts/test-seo.cjs`, and `npm run build`. With a production server on port 3180, run `python scripts/check-upcoming-pages.py` and `python scripts/check-seo-fixes-rendered.py`.
