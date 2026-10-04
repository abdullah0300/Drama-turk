# Alparslan Season 2 catalog identity corrections

Reviewed and applied on 2026-10-04. Scope: collection-37 only.

## Evidence and interpretation

The [English source entry 1879](https://play.niazitv.pk/drama/37/single-serie?watch=1&episode=1879) explicitly calls its release Season 2 Episode 10 (37), and its description calls it Bolum 37. The [Urdu entry 1880](https://play.niazitv.pk/drama/37/single-serie?watch=1&episode=1880) explicitly calls its release Season 2 Episode 10 Bolum 37. Both imported renditions also have the same episode thumbnail. This supports treating them as catalog language renditions of one episode; it does not verify the entirety of either media file.

The source catalog consistently pairs season-local Episodes 1–30 with broadcast episodes 28–57. Its final four entries switch to broadcast numbers 58–61. TRT publishes [58](https://www.trt1.com.tr/diziler/alparslan-buyuk-selcuklu/bolum/58-bolum), [59](https://www.trt1.com.tr/diziler/alparslan-buyuk-selcuklu/bolum/59-bolum), [60](https://www.trt1.com.tr/diziler/alparslan-buyuk-selcuklu/bolum/60-bolum) and [61, the finale](https://www.trt1.com.tr/diziler/alparslan-buyuk-selcuklu/bolum/61bolum-final) as broadcast identities. Continuing the catalog's established local sequence yields season-local Episodes 31–34. That local convention is an editorial normalization, not a claim that TRT uses these season-local labels.

## Database changes

- Moved video-1879 to collection-37-bolum-37; kept both rendition IDs and all stream sources.
- Archived the now-empty collection-37-episode-10 alias. No rows deleted.
- Corrected the final four groups to local Episodes 31–34 and Bolum 58–61, including sorting and rendition labels. Kept group IDs stable.
- Verified 34 published episode groups and all 60 existing video variants.
- No editorial records existed or were published by this identity fix.

Before/after snapshots, guarded transaction, receipt and draft review are in artifacts/seo-ai/alparslan-s2-fast. The SQL checks the complete season snapshot under locks before making changes; it cannot be blindly rerun after applying.

## URLs and deployment

next.config.mjs adds permanent redirects from episode-10-b to episode-10, episode-58–61 to episode-31–34, and the archived legacy watch route to episode-10. Deploy these code changes alongside the database corrections. Restart an already-running production server after changing Next configuration. These redirects were checked locally; deployed behavior is still unverified.

## Remaining limits

This resolves catalog identities and the failed processor run. It does not certify media completeness, subtitle accuracy, every original broadcast/file match, or search rankings. Source catalogue numbering evidence must not be silently relabelled as full video verification. Full plot summaries require separate reviewed evidence. Future imports must preserve these corrections instead of restoring the original parsing errors.

## Completed editorial release — 2026-10-04

At the user's request to complete Season 2, the season page and all 34 published episode pages were reviewed and saved as 35 English editorial overrides. Exact database readback matches all five editorial fields on every record. Titles are unique and at most 60 characters; descriptions are unique and at most 148 characters. Every episode title includes both the season-local episode number and the reviewed catalog broadcast number. Source headings also support adding Bolum 28–36 to the first nine groups; these labels now agree across visible navigation and editorial metadata.

The season guide explains its 34-episode range, local versus broadcast numbering, and actual catalog language choices. Urdu options are listed throughout; English options are listed for Episodes 9–16 and 18–34. The malformed video-1974 record remains draft and is not advertised as an English option for Episode 17.

All episode pages contain attributed numbering and viewing guidance. Thirty-three have short, original English paraphrases of their official TRT description, explicitly labelled as publisher context with full local media-file matching unconfirmed. TRT's description metadata for broadcasts 53 and 54 repeats the same excerpt; a distinct story preview was withheld for broadcast 54. No full-viewing, subtitle-quality or translation-accuracy claims were added. Official HTML and reviewed extracts are retained in the local evidence package. Codex curated this content; no Gemma API calls were required for this release.

The renderer now includes spoiler text in initial HTML inside a closed native details element. Readers can open it without JavaScript, and sources remain in the HTML. Alparslan season pages also receive the episode/Bolum viewing table; season schema includes the current eligible episode count.

Verification passed: 24 workflow tests, TypeScript checks, production build, all 35 locally rendered production pages, six permanent redirects, production robots rules and all 35 canonical sitemap entries. Render checks compared exact title/description, lengths, a single H1, public-domain canonical, indexable robots metadata, episode/season schema identities, cited sources and all article sections in initial HTML. Old episode-58–61 URLs are excluded from the sitemap.

The full release package is artifacts/seo-ai/alparslan-s2-complete: review.html, plan.json, evidence-input.json, database-backup.json, verified-after.json, apply-receipt.json, rollback.sql, rendered-verification.json and completion-summary.json. The guarded rollback restores editorial fields only; separate identity backups/transactions remain in alparslan-s2-fast. Do not rerun the packaging script against an already-applied snapshot or re-import stale original catalog identities.

Deployment remains the user's responsibility. Deploy the updated Next configuration and renderer, then check live canonical pages, old URL redirects, robots.txt and sitemap.xml. This local production verification does not establish deployed CDN/WAF behavior, Google indexing, rankings or AI citations. The main Alparslan drama page and other collections are outside this Season 2 release.
