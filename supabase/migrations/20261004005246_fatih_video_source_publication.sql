-- Same version and SQL as the migration applied through Supabase MCP.
alter table public.video_variants add column if not exists source_uploaded_at timestamptz;
comment on column public.video_variants.source_uploaded_at is 'Source-reported rendition upload time; not database import time or original broadcast date. Unknown or conflicting dates remain null.';
