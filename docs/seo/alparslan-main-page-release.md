# Alparslan main drama page release

Completed 2026-10-04 for /drama/alparslan-buyuk-selcuklu. The user will deploy the code.

The main drama has a new English editorial override: original display title, a sourced short overview, a 52-character SEO title, a 156-character meta description, and seven visible article sections. The project metadata budgets are 60/160 characters; these are editorial constraints, not fixed Google display guarantees.

The article covers the official premise and English title, two-season navigation, 27 plus 34 subtitled episode pages, season-local versus Bolum numbering, episode-specific subtitle choices, the separate dubbed edition, official series-level cast and a starting guide. Series information is supported by [tabii](https://www.tabii.com/en/detail/8730/alparslan-buyuk-selcuklu); the finale identity is supported by [TRT 1](https://www.trt1.com.tr/diziler/alparslan-buyuk-selcuklu/bolum/61bolum-final). Catalog counts and language options were checked against the database and previously reviewed season evidence.

The dedicated release table links directly to subtitled Season 1, subtitled Season 2 and the separately catalogued Season 1 Urdu dubbed edition. The dubbed edition's 93 chapter pages are not added to the 61 subtitled story-episode count. Its detailed editorial and playback work remains pending. Catalog language labels do not certify subtitle completeness, translation accuracy or exact matching of every local media file to the original broadcast.

TVSeries schema now includes Alparslan's official English alternate name and the eligible default-edition episode total. It retains the series URL, original display title, visible overview, two-season count and breadcrumbs. The original drama row, artwork, collection identities, video sources and season/episode editorial records were not changed by this main-page publication.

The guarded database transaction was tested with rollback before committing. Exact readback matches all five editorial fields. Before/after snapshots, reviewed import, SQL, guarded rollback and receipt are stored in artifacts/seo-ai/alparslan-main. The main-page review is review.html in that folder. Publication used the connected Supabase tool, with no Gemma requests.

Verification includes a production build and a local production render: HTTP 200, exact title and description, metadata budgets, public-domain canonical, indexable robots metadata, one H1, visible overview and all seven sourced sections in initial HTML, TVSeries/BreadcrumbList schema, two seasons and 61 default-edition episodes, all three release links, starting episode link and canonical sitemap inclusion. The machine-readable result is rendered-verification.json. Deployment, live CDN/WAF behavior, Google indexing and search/AI visibility are separate checks after the user's deployment.

Current subtitled release status: main page + two season pages + 61 episode pages = 64 reviewed editorial pages. This is not a claim that the separate dubbed edition has received the same editorial review.
