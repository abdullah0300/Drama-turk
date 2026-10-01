-- Per-season artwork. Subtitled and dubbed releases of the same season share one poster.
alter table public.collections add column if not exists poster_url text;
comment on column public.collections.poster_url is 'Season poster (portrait). Falls back to dramas.poster_url when null.';
