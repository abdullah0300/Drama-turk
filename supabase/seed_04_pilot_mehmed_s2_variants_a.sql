INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3207'),
  'video-3207',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-1'),
  'Episode 1',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1725767445.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3220'),
  'video-3220',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-16'),
  'Episode 16',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1727192324.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3222'),
  'video-3222',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-17'),
  'Episode 17',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1727453937.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3226'),
  'video-3226',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-17'),
  'Episode 17',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1727831919.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3231'),
  'video-3231',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-18'),
  'Episode 18',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1728311998.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3232'),
  'video-3232',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-18'),
  'Episode 18',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1728312466.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3238'),
  'video-3238',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-19'),
  'Episode 19',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1728956315.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3241'),
  'video-3241',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-19'),
  'Episode 19',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729011931.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3247'),
  'video-3247',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-20'),
  'Episode 20',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729528840.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3248'),
  'video-3248',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-20'),
  'Episode 20',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729560578.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3259'),
  'video-3259',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-21'),
  'Episode 21',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1730159787.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3260'),
  'video-3260',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-21'),
  'Episode 21',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1730160385.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3271'),
  'video-3271',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-22'),
  'Episode 22',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1730606161.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3272'),
  'video-3272',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-22'),
  'Episode 22',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1730606447.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3279'),
  'video-3279',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-23'),
  'Episode 23',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1731446449.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3280'),
  'video-3280',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-23'),
  'Episode 23',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1731474652.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3289'),
  'video-3289',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-24'),
  'Episode 24',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1732052292.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3290'),
  'video-3290',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-24'),
  'Episode 24',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1732061054.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3296'),
  'video-3296',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-25'),
  'Episode 25',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1732634147.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3297'),
  'video-3297',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-25'),
  'Episode 25',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1732635000.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3303'),
  'video-3303',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-26'),
  'Episode 26',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1733239509.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3304'),
  'video-3304',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-26'),
  'Episode 26',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1733240066.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3388'),
  'video-3388',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-27'),
  'Episode 27',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1733847869.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3389'),
  'video-3389',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-27'),
  'Episode 27',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1733883401.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3414'),
  'video-3414',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-28'),
  'Episode 28',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1734449995.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3415'),
  'video-3415',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-28'),
  'Episode 28',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1734450621.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3421'),
  'video-3421',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-29'),
  'Episode 29',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1735056162.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3422'),
  'video-3422',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-29'),
  'Episode 29',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1735056525.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3428'),
  'video-3428',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-30'),
  'Episode 30',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1735659741.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3429'),
  'video-3429',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-30'),
  'Episode 30',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1735660177.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3435'),
  'video-3435',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-31'),
  'Episode 31',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1736874235.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3436'),
  'video-3436',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-31'),
  'Episode 31',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1736875257.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3476'),
  'video-3476',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-32'),
  'Episode 32',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1737478811.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3477'),
  'video-3477',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-32'),
  'Episode 32',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1737479093.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();
