# Local Gemma drafting workflow

For the faster reusable season pipeline, see [fast-season-workflow.md](fast-season-workflow.md). It prepares metadata without AI, optionally drafts sourced article content, resumes failed batches, and exports/applies guarded transactions. The commands below describe the original draft-only worker.

Run from `D:\Webcraftio\Drama turk` using Node 18+ and existing project dependencies. The model runs on Google, not on this computer. There is no public-site AI request, database migration, publication endpoint or automatic editorial update in this implementation.

## Configuration

Store `GEMINI_API_KEY` and `SEO_AI_MODEL=gemma-4-31b-it` in ignored `.env.local`. The CLI explicitly loads Next's development environment, preserving already-set process variables. Never put keys in commands, public environment variables, draft files or Git. Model availability and project quota are checked by a tiny actual API call. Google REST requests use the `x-goog-api-key` header, never a credential-bearing URL. Provider bodies and prompt text are not printed on failure.

Official model/API reference: https://ai.google.dev/gemma/docs/core/gemma_on_gemini_api

## Commands

```powershell
node scripts/seo-ai/run.cjs check-key
node scripts/seo-ai/run.cjs prepare --drama alparslan-buyuk-selcuklu --season 1 --out artifacts/seo-ai/alparslan-s1/input.json
```

Preparation is read-only using the existing public repository. It includes a drama record, matching published edition records and imported episode groups. It is not a complete unpublished/admin audit. It fails without a configured public connection; no silent local fallback. It does not refresh/check media, read sources, verify numbering or invent source text. Imported media availability is only prior catalog evidence. No media stream URLs or credentials are included in the model packet.

Before generation, review the exported file. Add official source extracts and map sources to records:

```json
{
  "id": "official-episode-1",
  "name": "Official broadcaster episode preview",
  "url": "https://example.org/episode-1",
  "extract": "Insert the actual reviewed source text here."
}
```

Each record has `source_ids`, `imported_facts`, `existing` and `verified_facts`. Populate verified facts only after evidence review: episode/broadcast/season/part numbers, languages, edition, approved_short_name and notes. The draft generator does not fetch URLs: the extract is its evidence. Empty verified facts must not be filled by guessing. Keep imported facts for investigating discrepancies. Original audio language still needs independent review; a language review flag is not a definitive availability checker.

```powershell
node scripts/seo-ai/run.cjs generate --input artifacts/seo-ai/alparslan-s1/input.json --out artifacts/seo-ai/alparslan-s1/drafts --batch-size 5 --max-calls 2
node scripts/seo-ai/run.cjs report --out artifacts/seo-ai/alparslan-s1/drafts
node --test scripts/seo-ai/test.cjs
```

`--guidance-only` explicitly permits a no-source navigation draft, which remains flagged for review. It is not a verified synopsis. For full generation, supply reviewed sources first. Start with two requests and inspect quality before increasing `--max-calls`. This budget counts all generation/correction requests and the batch worker disables automatic network retries, so a quota/auth/network failure stops the run. Rerun later to resume. The adapter supports bounded retry for future callers, but this worker uses one attempt per call. Interrupt with Ctrl+C; after confirming the process stopped, remove a leftover output `.lock` before resuming.

Each batch saves its input, draft, model, input/rules hash, usage metrics and errors/review flags. Same completed batches are reused; changed inputs or rules produce new files. Use a fresh output folder after changing scope/batch size, since reports include older batch files too. Invalid output can get one targeted correction within the request budget. Incomplete responses never count as successful drafts. Default output budget is 4096 tokens; reduce the batch size if truncated. You can set `--max-output-tokens` up to 16384. No provider-specific strict JSON mode is assumed; JSON is parsed and checked locally with Zod.

## Review and publication boundary

`validated_draft` means mechanical checks passed, not approved, factual, indexable or published. All drafts retain `requires_human_review`. Reports revalidate saved output. Tests cover numbering errors, missing/duplicate records, unsupported citations, metadata lengths, unknown-language flags, extra fields and redacted API failures. These checks cannot prove that a cited extract supports a claim or that an episode's subtitles are complete.

Bring the generated report and batches into Codex for evidence review. Approved fields can later be applied through the existing editorial workflow with before/after backups, stale-record checks and cache invalidation. This script intentionally has no database write command. Shared-code fixes, crawling/schema checks, media verification and final route tests remain separate work. Do not treat generation as completing SEO/GEO.

Private run artifacts live in ignored `artifacts/seo-ai/`. Keep credentials and sensitive/nonpublic data out of prompts. Record usage totals; no pricing estimates are invented. This prototype doesn't provide an admin dashboard, automatic web research, scheduling or a second-model reviewer.
