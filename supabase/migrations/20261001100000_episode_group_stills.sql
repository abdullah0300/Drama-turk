-- Per-episode artwork: a still image for each episode group.
-- still_source records where it came from: TMDB episode stills, a unique
-- catalog thumbnail, or a frame captured from the video itself.
alter table public.episode_groups
  add column if not exists still_url text,
  add column if not exists still_source text;

alter table public.episode_groups
  drop constraint if exists episode_groups_still_source_check;
alter table public.episode_groups
  add constraint episode_groups_still_source_check
  check (still_source is null or still_source in ('tmdb', 'catalog', 'frame'));
