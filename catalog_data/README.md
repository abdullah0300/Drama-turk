# Organized drama catalog

All 3,269 source records are retained. This package includes a review of all 74 organization warnings; playback and remaining uncertainties are not fully verified.

## Files

- `catalog.json`: drama and source collection navigation, episode groups, and video references.
- `videos.json`: descriptions, article text, images, streams, and preserved source metadata.
- `review_queue.json`: source and organization issues to inspect.
- `duplicate_streams.json`: repeated URLs; records have not been deleted.
- `summary.json`: counts and processing limits.

## Decisions

Language variants are grouped within the same source collection when explicit numbering matches. Dubbed and subtitled source collections remain separate because episode cuts and numbering can differ. Bolum-only titles display their Bolum instead of an invented season-relative episode number. Parts are retained. Kosem remains a combined Seasons 1 & 2 collection. Episode/catalog season disagreements are preserved for review. The Alp Arslan alias is grouped with Alparslan; original names and collection IDs remain intact. Missing language/version is filled only where a stream path names it explicitly, with provenance recorded. Trailer and unnumbered extras are excluded from episode navigation but retained in the data.

Some unknown numbers are genuine Bolum-only titles; others are unnumbered extras. A record with a short description can still be a valid video. Source durations, dates, stream access, and completeness need independent verification.

## Website use

Look up a drama, then its collection IDs, then episode group IDs, then the video IDs to choose a language/version and stream. Do not automatically publish review records or merge collections by matching ordinal numbers alone. Direct stream URL presence does not verify playback or embedding permission.

## Drama inventory

| Drama | Catalog collections | Video records |
|---|---:|---:|
| Al Hashashin | 1 | 29 |
| Al Sancak | 1 | 19 |
| Alparslan: Büyük Selçuklu | 3 | 207 |
| Ates Kuslari | 1 | 33 |
| Barbaroslar | 2 | 104 |
| Destan | 1 | 28 |
| Dokuz Oguz | 1 | 6 |
| Ertugrul Ghazi | 5 | 425 |
| Halka | 1 | 22 |
| Kosem Sultan | 1 | 60 |
| Kurulus Orhan | 1 | 52 |
| Kurulus Osman | 12 | 1451 |
| Mehmed: Fetihler Sultani | 5 | 149 |
| Mendirman Jaloliddin | 2 | 30 |
| Mevlana Celaleddin Rumi | 1 | 20 |
| Salahuddin Ayyubi | 1 | 60 |
| Sevdan Bir Ates | 1 | 2 |
| Soz | 3 | 91 |
| Sultan Abdulhamid | 5 | 124 |
| Sumud (صمود) | 1 | 2 |
| Tasacak Bu Deniz | 1 | 1 |
| Teskilat | 7 | 186 |
| The Pit (Cukur) | 4 | 131 |
| Yunus Emre | 2 | 37 |

## Review pass

See `Review_Results.md` and `organization_review_results.json`. Thirteen records were resolved; 61 remain uncertain.
