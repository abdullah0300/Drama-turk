# Fast season workflow

The reusable runner is `scripts/seo-ai/season.cjs`. Run it from the project root with the existing Node environment. No extra dependencies, public AI endpoint or database schema change is required.

## Prepare a season in one command

```bash
node scripts/seo-ai/season.cjs run --drama alparslan-buyuk-selcuklu --season 1 --collection collection-27 --out artifacts/seo-ai/alparslan-s1-fast
```

Always select a collection explicitly: subtitled and dubbed editions can use different numbering. The runner exports one published collection and its published episode groups. Unpublished records, ambiguous multi-season collections and missing local episode numbers are excluded or rejected. It uses the catalog's original drama display name, not an existing SEO override, as its name label.

The default run uses **zero AI calls**. Code prepares unique metadata from local catalog identity, enforces the 60/160 character limits, and leaves original broadcast numbers and language availability out unless supplied in reviewed evidence. Existing metadata and article sections are preserved by default. `--rewrite-metadata` deliberately regenerates metadata; existing sections remain preserved. Long names that cannot fit with required numbering need an explicit `approved_short_name` in evidence.

Open `review.html` for all pages, content, character counts and unresolved checks. `review-report.json` lists changes and flags; `import.json` holds existing-endpoint-compatible request bodies; `plan.json` binds content, sources, target UUIDs, previous database rows and project to a SHA-256 review hash. `snapshot.json` saves complete prior editorial rows for these targets.

This runner prepares navigation metadata without a synopsis when evidence is missing. It does not invent episode events, prove subtitle completeness, determine search volume or guarantee rankings. Zero structural errors is not factual approval. Reviewing exceptions and sampling the remaining records is useful triage, but source support for AI-authored factual content still requires review.

## Optional AI content

Supply a reviewed evidence packet in the existing `core.cjs` input format:

```bash
node scripts/seo-ai/season.cjs run --drama alparslan-buyuk-selcuklu --season 1 --collection collection-27 --out artifacts/seo-ai/alparslan-s1-fast --evidence artifacts/seo-ai/alparslan-s1/full-season-evidence.json --ai --batch-size 4 --max-calls 6 --retries 3
```

Gemma writes **article sections only**, for records with evidence and no existing sections. Metadata stays in code. Existing published sections are not used as new source evidence. Only supplied extracts are sent; the runner does not research websites or send raw database snapshots, media URLs or credentials to Google.

`--max-calls` counts HTTP attempts including retries. Retryable network errors, HTTP 429 and server errors receive bounded backoff, up to three attempts. A failed content batch leaves metadata intact and lets later batches continue, subject to the remaining budget. Authentication failures stop AI processing. Failures remain visible in the review report. No other model or manual fallback is silently substituted.

Rerun the same command to reuse content files with matching input/rules/model hashes. Changed evidence produces a new content cache entry. Budget-limited records can be processed on the next run. Cache files are structurally validated again before reuse. A regenerated review report can change the plan hash; approval must match the final plan, not an earlier run.

## Review and apply

After reviewing the actual content and its flags, approve that exact hash locally:

```bash
node scripts/seo-ai/season.cjs approve --out artifacts/seo-ai/alparslan-s1-fast --hash HASH_FROM_REPORT --reviewer "Your name" --acknowledge-unresolved
```

Acknowledging flags records the review decision; it does not clear uncertainty or add verified facts. Do not approve unsupported content merely because automated checks pass.

Export a guarded SQL transaction for the existing connected Supabase tool or Supabase SQL editor:

```bash
node scripts/seo-ai/season.cjs sql --out artifacts/seo-ai/alparslan-s1-fast
```

For a rollback-only transaction test, `sql --out FOLDER --dry-run` exports `dry-run.sql` without requiring local approval. It never executes SQL itself.

For unattended CLI execution, the runner optionally uses a privately configured `SUPABASE_ACCESS_TOKEN` through the [Supabase Management API](https://supabase.com/docs/reference/api/v1-run-a-query). This is a management access token, not the publishable key or Google key. Keep it outside commands, artifacts, Git and browser code. The Management API query endpoint is currently documented as beta; the SQL-file/connected-tool route avoids depending on it for execution. No new token is required to keep using the connected Supabase tool as before.

```bash
node scripts/seo-ai/season.cjs apply --out artifacts/seo-ai/alparslan-s1-fast --hash HASH_FROM_REPORT
node scripts/seo-ai/season.cjs verify --out artifacts/seo-ai/alparslan-s1-fast
```

Apply checks the configured project and exact approval hash, reads and saves a fresh backup, checks previous content and catalog identity, locks targets and performs all writes in one database transaction. Changed numbering, target inventory, publication state, target identity or editorial content aborts the transaction. Readback compares every requested editorial field. No numbering, video IDs, media files or publication-state fields are modified.

Writes are never automatically retried: a timeout can mean a transaction committed. `apply-started.json` prevents a blind second attempt. Use `verify` to establish state first. If verification proves no write committed, review the failure and remove the attempt marker manually before another authorized apply. Successful verification saves `verified-after.json`; a successful CLI apply also saves `apply-receipt.json` and a `rollback.sql` that refuses to overwrite subsequent editorial changes. The rollback file is not automatically executed.

The CLI does not deploy or call Next cache invalidation. Current season/episode routes are dynamic; cached homepage/sitemap data and production CDN behavior still need expiry/revalidation and deployed-page checks. Bulk JSON upload UI is outside this CLI workflow. The earlier `run.cjs` draft worker remains available with its original behavior.

## Verification performed

Automated tests cover metadata identities, evidence conflicts, AI record/citation/language validation, preview disclosure, tampered plans, retries and budgets, failed-batch continuation, resume, readback, backup/rollback export and protection from retrying uncertain database writes.

A real Alparslan run exported 28 records, proposed zero changes and used zero AI calls. Its database transaction was executed through the connected tool with `ROLLBACK`; every complete editorial row, including timestamps, matched the prior snapshot afterward. A deliberately stale snapshot was rejected before writes. Live Management API authentication and a committing CLI apply were not exercised; apply was tested with mocked API responses. No production content was changed while implementing this runner.

```bash
node --test scripts/seo-ai/test.cjs scripts/seo-ai/season.test.cjs
```
