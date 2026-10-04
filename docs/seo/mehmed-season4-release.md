# Main page and Season 4 release — 4 October 2026

The user will deploy this release. No code has been pushed or deployed by this task.

## Changes

- Refined eight published Supabase editorial records: the series, both Season 4 editions and their five episode pages. Descriptions now provide useful page-specific details without padding to a minimum character count. Every episode title includes the series name, season/episode identifiers and Bolum number within 60 characters.
- Added a live catalog-driven table on the main page linking all six season/edition pages. Each edition's available count updates with the eligible catalog inventory.
- Added a Season 4 episode table linking each local episode to its original broadcast number and language choices. Subtitled episodes 1–3 correspond to broadcasts 84–86; dubbed episodes 1–2 correspond to 84–85.
- Added server-rendered links between matching Season 4 dubbed and subtitled episode pages. Missing counterpart broadcasts are not invented.
- Changed episode article headings to H2 while preserving their visual styling.
- Replaced timeline labels claiming premiere/midseason/finale with first listed/episode order/last listed. A partially available release no longer implies its last available episode is the actual season finale.
- The initial video element now exposes the source URL and its real thumbnail poster. On HLS.js browsers, the playback effect clears the initial native source before attaching MediaSource; Safari's native HLS path remains supported.
- Switching a rendition resets the control state, current time and displayed duration while the new stream loads. The controls accurately show that the newly selected stream needs playback started.
- Video markup can use another visible selectable rendition when the initial preferred rendition lacks a verified upload date. The initial playback language remains unchanged. Moved subtitleLanguage from VideoObject to TVEpisode, matching its Schema.org domain.

## Evidence and limits

The production build, TypeScript check and focused metadata/eligibility suite pass. `scripts/check-fatih-season4.cjs` validates all eight updated pages, their exact approved metadata, indexability, source/poster HTML, valid language placement, guide tables and cross-edition links. Results are saved in `mehmed-season4-page-checks.json`.

Browser checks confirmed that Season 4 dubbed Episode 2 playback advanced to about 30 seconds with no media error, and its English subtitled rendition advanced to about 35 seconds. Urdu rendition switching exposed stale control state and prompted the reset fix described above. The final browser verification checks the corrected controls and actual Urdu playback. These are short playback checks, not a claim that every full episode was watched. Subtitled Episode 1 / Bolum 84 still has no reliable source upload date; it therefore omits VideoObject rather than borrowing the broadcast date.

The corrected Urdu controls showed Play at zero after switching; starting that rendition advanced playback to 22.5 seconds, readyState 4 with no media error. Both Episode 2 subtitled source records were subsequently marked browser-tested in Supabase, and the returned update rows were verified. Playback remains a short test of those renditions, not a full review of the entire episode or a guarantee of future upstream availability.

The final production build and all eight focused page checks passed after the timeline correction. The local browser preview is saved below.

![Updated Season 4 preview](D:/Webcraftio/Drama%20turk/docs/seo/mehmed-season4-preview.png)

All 107 planned Fatih route checks passed after this content/navigation release, including the three permanent redirects, 102 sitemap pages and 95 video sitemap pages. Earlier audit reports describe the previous implementation; this release specifically supersedes their observations about player source/poster discovery, H4 editorial headings and the main/Season 4 content.

TRT's official series and episode pages verify identity, cast and broadcasts 84–86. Its summary pages expose no readable plot text in this audit; no episode recaps were invented. Catalog availability is supplied by the verified playable-source inventory, not by TRT. Video upload dates remain source-reported upload dates rather than broadcast dates or catalog import dates.

The eight prior database records are in `mehmed-season4-before.json`; the approved revisions are in `mehmed-season4-approved.json`. The full approved batch and final metadata CSV have been updated to reflect this release. `scripts/refine-fatih-season4.cjs` generates content files only and does not publish database updates.

## Deployment settings

Set `NEXT_PUBLIC_SITE_DOMAIN=https://greatnation.webcraftio.com` and `CATALOG_RELEASE_MODE=production` in the hosting environment before building. Keep preview deployments in staging mode. Do not copy `.env.example` unchanged: it deliberately uses staging/local settings. Preserve Supabase keys privately. No new credentials, access grants or schema migration are required for this refinement; the earlier upload-date migration is already applied.

After deployment, check `/robots.txt` allows `/`, public Fatih pages have `index, follow`, both sitemap declarations use single slashes and duplicate episode aliases redirect. Keep admin/search/filter exclusions intact. Inspect representative URLs and video discovery in Search Console and validate structured data with the Rich Results Test. Crawling permission does not guarantee indexing, rankings or AI citations.

Main and Season 4 guides contain only verified identity, useful navigation and viewing facts. More distinctive episode analysis still requires actual viewing or reliable plot sources. Season 1–3 content refinement is the next separate stage.
