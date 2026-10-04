# Mehmed SEO research brief

Prepared 3 October 2026. Status: provisional research, not deployed.

## Audience recommendation
Serve Urdu and English subtitle viewers through the existing episode pages. Begin research with Pakistan/Urdu queries and international English queries in parallel. No measured keyword volumes, difficulty scores, or Pakistan-localized ranking data are available. Search-result wording is evidence of publisher terminology, not search demand.

## Query families
- Urdu: Sultan Muhammad Fateh / Sultan Muhammad Fatih + season + episode + Urdu subtitles.
- English: Mehmed Fetihler Sultani / Mehmed the Conqueror + season + episode + English subtitles.
- Dubbed: use Urdu dubbed only for verified dubbed editions.

## Page requirements
- Drama: include the original series title and regional aliases naturally; available seasons; distinguish subtitle language from audio language.
- Season: actual available editions and episodes; explain numbering using verified sources.
- Episode: unique accurate title, visible subtitle availability, verified episode/Bolum label, original reviewed summary, previous/next and season links.
- Use one existing page per episode edition. Do not generate duplicate pages for spelling variations.
- Do not promise complete seasons or both languages without checking actual live availability.

## Blocking technical checks
The reviewed source blocks all crawlers in src/app/robots.ts and sets global noindex/nofollow in src/app/layout.tsx. Verify whether these are deliberate prelaunch controls before enabling production indexing. Production canonical domain must be correct. Live deployment could not be verified through the browsing tool.

## Validation before deployment
1. Check each mapped page against live publication status and playable renditions.
2. Verify episode/Bolum mappings against TRT episode records; never infer offset mappings from competitor titles.
3. Finalize titles after audience query evidence becomes available.
4. Validate indexability, canonicals, video schema and sitemap eligibility.
5. Measure Google/Bing impressions and clicks by query family and page; track organic playback starts and failures.

## Evidence
- Official series and episode identity: https://www.trt1.com.tr/diziler/mehmed-fetihler-sultani/bolum
- Urdu publisher wording: https://dirilispk.com/sultan-muhammad-fateh-season-2-with-urdu-subtitled/
- English publisher wording: https://turkision.com/episodes-title/mehmed-episode-1-english-subtitles/
- Google video requirements: https://developers.google.com/search/docs/appearance/video

See mehmed-keyword-map.csv for 106 local page candidates. Its titles and language labels are proposals, not verified live metadata. No keyword search volume is implied.
