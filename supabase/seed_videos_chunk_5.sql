-- Video Variants Chunk 5

INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3399'),
  'video-3399',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-34'),
  'Episode 34',
  6,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729925112.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3399'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-34.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3499'),
  'video-3499',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-45'),
  'Episode 45',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1739807470.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3499'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3503'),
  'video-3503',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-181'),
  'Episode 181',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1739979505.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3503'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-181.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3684'),
  'video-3684',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-145'),
  'Episode 145',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1748175181.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3684'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-145.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3236'),
  'video-3236',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-126'),
  'Episode 126',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1728796051.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3236'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-126.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2635'),
  'video-2635',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-34'),
  'Episode 34',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1704290869.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2635'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-34.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2665'),
  'video-2665',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-145'),
  'Episode 145',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706144136.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2665'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-145.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1080'),
  'video-1080',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-34'),
  'Episode 34',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1080'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-34.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1033'),
  'video-1033',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-78'),
  'Episode 78',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1033'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-78.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-243'),
  'video-243',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-34'),
  'Episode 34',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612448555.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-243'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-34.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-133'),
  'video-133',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-53'),
  'Episode 53',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1605545344.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-133'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-53.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4'),
  'video-4',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-4'),
  'Episode 4',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1604244480.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-4.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3810'),
  'video-3810',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-39'),
  'Episode 39',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706598103.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3810'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-39.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2535'),
  'video-2535',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-67'),
  'Episode 67',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1694880725.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2535'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-67.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1968'),
  'video-1968',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-34'),
  'Episode 34',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671202485.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1968'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-34.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2237'),
  'video-2237',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-49'),
  'Episode 17 · Bolum 49',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671860399.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2237'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-17.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1978'),
  'video-1978',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-115'),
  'Bolum 115',
  4,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1664814333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1978'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-115.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2077'),
  'video-2077',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-48'),
  'Episode 21 · Bolum 48',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1663665353.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2077'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2042'),
  'video-2042',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-84'),
  'Episode 84',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1660049849.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2042'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-84.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1369'),
  'video-1369',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-34'),
  'Episode 34',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638977009.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1369'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-34.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1739'),
  'video-1739',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-48'),
  'Episode 48',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638711499.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1739'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1768'),
  'video-1768',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-43'),
  'Episode 43',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638708551.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1768'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1568'),
  'video-1568',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-17'),
  'Episode 17',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638676629.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1568'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-17.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-836'),
  'video-836',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-29'),
  'Episode 29',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638540439.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-836'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1640'),
  'video-1640',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-26'),
  'Episode 26',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1632669643.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1640'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-90.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1659'),
  'video-1659',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-28'),
  'Episode 28',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1631808953.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1659'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-678'),
  'video-678',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-34'),
  'Episode 34',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1620192333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-678'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-34.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-511'),
  'video-511',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-88'),
  'Episode 88',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613387473.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-511'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-88.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-440'),
  'video-440',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-48'),
  'Episode 48',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613387473.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-440'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-363'),
  'video-363',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-34'),
  'Episode 34',
  NULL,
  '{}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613383927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-363'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/34.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-660'),
  'video-660',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-31'),
  'Episode 31',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613630045.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-660'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3995'),
  'video-3995',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-18'),
  'Episode 18',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1773851083.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3995'),
  'https://video.twimg.com/amplify_video/2034560197771874304/pl/Ah7znkbDp1p9IWN1.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4040'),
  'video-4040',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-episode-183'),
  'Episode 183',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1780278524.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4040'),
  'https://video.twimg.com/amplify_video/2063964025638068224/pl/HIQ_yU8D_OM-kscJ.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3962'),
  'video-3962',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-68'),
  'Episode 68 · Bolum 68',
  3,
  '{"English"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1770134967.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3962'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-68.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3400'),
  'video-3400',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-35'),
  'Episode 35',
  6,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729925112.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3400'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-35.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3505'),
  'video-3505',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-46'),
  'Episode 46',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1740414162.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3505'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-46.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3509'),
  'video-3509',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-182'),
  'Episode 182',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1740588149.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3509'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-182.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3691'),
  'video-3691',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-146'),
  'Episode 146',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1748798681.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3691'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-146.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3244'),
  'video-3244',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-127'),
  'Episode 127',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729340465.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3244'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-127.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2637'),
  'video-2637',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-35'),
  'Episode 35',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1704290869.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2637'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-35.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2666'),
  'video-2666',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-145'),
  'Episode 145',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706144761.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2666'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-145.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1081'),
  'video-1081',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-35'),
  'Episode 35',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1081'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-35.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1034'),
  'video-1034',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-79'),
  'Episode 79',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1034'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-79.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-244'),
  'video-244',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-35'),
  'Episode 35',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612448555.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-244'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-35.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-134'),
  'video-134',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-54'),
  'Episode 54',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1605545344.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-134'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-54.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-40'),
  'video-40',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-40'),
  'Episode 40',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1604244480.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-40'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-40.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3811'),
  'video-3811',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-40'),
  'Episode 40',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706598103.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3811'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-40.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1970'),
  'video-1970',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-35'),
  'Episode 35',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671202485.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1970'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-35.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2261'),
  'video-2261',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-50'),
  'Episode 18 · Bolum 50',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671860399.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2261'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-18.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2010'),
  'video-2010',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-116'),
  'Bolum 116',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1664814333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2010'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-116.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2100'),
  'video-2100',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-49'),
  'Episode 22 · Bolum 49',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1663665353.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2100'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1370'),
  'video-1370',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-35'),
  'Episode 35',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638977009.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1370'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-35.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1776'),
  'video-1776',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-44'),
  'Episode 44',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638708551.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1776'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1583'),
  'video-1583',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-18'),
  'Episode 18',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638676629.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1583'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-18.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-837'),
  'video-837',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-30'),
  'Episode 30',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638540439.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-837'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-30.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1655'),
  'video-1655',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-27'),
  'Episode 27',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1632669643.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1655'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-91.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1674'),
  'video-1674',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-29'),
  'Episode 29',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1631808953.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1674'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-679'),
  'video-679',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-35'),
  'Episode 35',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1620192333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-679'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-35.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-441'),
  'video-441',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-49'),
  'Episode 49',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613387473.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-441'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-364'),
  'video-364',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-35'),
  'Episode 35',
  NULL,
  '{}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613383927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-364'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/35.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-665'),
  'video-665',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-32'),
  'Episode 32',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613630045.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-665'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S2/Episode-59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3996'),
  'video-3996',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-18'),
  'Episode 18',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1773851379.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3996'),
  'https://video.twimg.com/amplify_video/2034430550572724224/pl/5ufjEtiXx8ltoV44.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4041'),
  'video-4041',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-episode-184'),
  'Episode 184',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1780887433.png'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4041'),
  'https://video.twimg.com/amplify_video/2063961511627001856/pl/5jQN8ffPXXQ2wwEh.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3967'),
  'video-3967',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-69'),
  'Episode 69 · Bolum 69',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1770740436.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3967'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-69.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3401'),
  'video-3401',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-36'),
  'Episode 36',
  6,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729925112.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3401'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-36.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3506'),
  'video-3506',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-46'),
  'Episode 46',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1740414557.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3506'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3510'),
  'video-3510',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-182'),
  'Episode 182',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1740588835.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3510'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-182.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3698'),
  'video-3698',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-147'),
  'Episode 147',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1749631740.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3698'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-147.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3255'),
  'video-3255',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-128'),
  'Episode 128',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1730080541.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3255'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-128.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2640'),
  'video-2640',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-36'),
  'Episode 36',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1704290869.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2640'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-36.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2692'),
  'video-2692',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-146'),
  'Episode 146',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706717589.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2692'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-146.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1082'),
  'video-1082',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-36'),
  'Episode 36',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1082'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-36.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1035'),
  'video-1035',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-80'),
  'Episode 80',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1035'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-80.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-245'),
  'video-245',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-36'),
  'Episode 36',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612448555.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-245'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-36.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-135'),
  'video-135',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-55'),
  'Episode 55',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1605545344.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-135'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-55.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-41'),
  'video-41',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-41'),
  'Episode 41',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1604244480.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-41'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3812'),
  'video-3812',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-41'),
  'Episode 41',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706598103.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3812'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1973'),
  'video-1973',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-36'),
  'Episode 36',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671202485.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1973'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-36.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2262'),
  'video-2262',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-50'),
  'Episode 18 · Bolum 50',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671860399.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2262'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-18.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2028'),
  'video-2028',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-116'),
  'Bolum 116',
  4,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1664814333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2028'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-116.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2101'),
  'video-2101',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-49'),
  'Episode 22 · Bolum 49',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1663665353.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2101'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1378'),
  'video-1378',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-36'),
  'Episode 36',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638977009.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1378'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-36.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1782'),
  'video-1782',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-45'),
  'Episode 45',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638708551.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1782'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1584'),
  'video-1584',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-18'),
  'Episode 18',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638676629.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1584'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-18.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-838'),
  'video-838',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-31'),
  'Episode 31',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638540439.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-838'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-31.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1656'),
  'video-1656',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-27'),
  'Episode 27',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1632669643.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1656'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-91.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1675'),
  'video-1675',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-29'),
  'Episode 29',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1631808953.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1675'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-680'),
  'video-680',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-36'),
  'Episode 36',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1620192333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-680'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-36.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-442'),
  'video-442',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-50'),
  'Episode 50',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613387473.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-442'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-365'),
  'video-365',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-36'),
  'Episode 36',
  NULL,
  '{}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613383927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-365'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/36.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-666'),
  'video-666',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-32'),
  'Episode 32',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613630045.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-666'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4000'),
  'video-4000',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-19'),
  'Episode 19',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1774487376.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4000'),
  'https://video.twimg.com/amplify_video/2037030891747237888/pl/z-QcSTOhlJor-6zk.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3968'),
  'video-3968',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-69'),
  'Episode 69 · Bolum 69',
  3,
  '{"English"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1770741639.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3968'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/temp/Episode-69.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3402'),
  'video-3402',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-37'),
  'Episode 37',
  6,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729925112.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3402'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-37.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3554'),
  'video-3554',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-47'),
  'Episode 47',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1741019290.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3554'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-47.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3558'),
  'video-3558',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-183'),
  'Episode 183',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1741192420.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3558'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-183.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3699'),
  'video-3699',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-148'),
  'Episode 148',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1750004475.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3699'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-148.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3256'),
  'video-3256',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-129'),
  'Episode 129',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1730081121.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3256'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-129.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2641'),
  'video-2641',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-37'),
  'Episode 37',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1704290869.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2641'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-37.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2693'),
  'video-2693',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-146'),
  'Episode 146',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706719050.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2693'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-146.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1083'),
  'video-1083',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-37'),
  'Episode 37',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1083'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-37.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1036'),
  'video-1036',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-81'),
  'Episode 81',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1036'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-81.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-246'),
  'video-246',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-37'),
  'Episode 37',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612448555.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-246'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-37.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-136'),
  'video-136',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-56'),
  'Episode 56',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1605545344.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-136'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-56.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-42'),
  'video-42',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-42'),
  'Episode 42',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1604244480.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-42'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3813'),
  'video-3813',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-42'),
  'Episode 42',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706598103.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3813'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1976'),
  'video-1976',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-37'),
  'Episode 37',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671202485.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1976'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-37.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2288'),
  'video-2288',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-episode-19'),
  'Episode 19',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671860399.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2288'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-19.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2051'),
  'video-2051',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-117'),
  'Bolum 117',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1664814333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2051'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-117.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2127'),
  'video-2127',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-50'),
  'Episode 23 · Bolum 50',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1663665353.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2127'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1381'),
  'video-1381',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-37'),
  'Episode 37',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638977009.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1381'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-37.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1786'),
  'video-1786',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-46'),
  'Episode 46',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638708551.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1786'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1600'),
  'video-1600',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-19'),
  'Episode 19',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638676629.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1600'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-19.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-840'),
  'video-840',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-32'),
  'Episode 32',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638540439.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-840'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-32.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1671'),
  'video-1671',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-28'),
  'Episode 28',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1632669643.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1671'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-92.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1700'),
  'video-1700',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-30'),
  'Episode 30',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1631808953.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1700'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-30.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-681'),
  'video-681',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-37'),
  'Episode 37',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1620192333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-681'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-37.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-443'),
  'video-443',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-51'),
  'Episode 51',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613387473.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-443'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-366'),
  'video-366',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-37'),
  'Episode 37',
  NULL,
  '{}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613383927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-366'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/37.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-711'),
  'video-711',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-33'),
  'Episode 33',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613630045.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-711'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S2/Episode-60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4001'),
  'video-4001',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-19'),
  'Episode 19',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1774487554.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4001'),
  'https://video.twimg.com/amplify_video/2036978072038084608/pl/9ZLKYoqYaU7IQ_SM.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3974'),
  'video-3974',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-70'),
  'Episode 70 · Bolum 70',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1771348307.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3974'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-70.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3403'),
  'video-3403',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-38'),
  'Episode 38',
  6,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729925112.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3403'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-38.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3555'),
  'video-3555',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-47'),
  'Episode 47',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1741019697.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3555'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3559'),
  'video-3559',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-183'),
  'Episode 183',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1741192919.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3559'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-183.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3283'),
  'video-3283',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-130'),
  'Episode 130',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1731699777.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3283'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-130.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2642'),
  'video-2642',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-38'),
  'Episode 38',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1704290869.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2642'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-38.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2701'),
  'video-2701',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-147'),
  'Episode 147',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706717589.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2701'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-147.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1084'),
  'video-1084',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-38'),
  'Episode 38',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1084'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-38.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1037'),
  'video-1037',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-82'),
  'Episode 82',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1037'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-82.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-247'),
  'video-247',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-38'),
  'Episode 38',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612448555.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-247'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-38.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-137'),
  'video-137',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-57'),
  'Episode 57',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1605545344.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-137'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-43'),
  'video-43',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-43'),
  'Episode 43',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1604244480.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-43'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3814'),
  'video-3814',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-43'),
  'Episode 43',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706598103.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3814'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1977'),
  'video-1977',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-38'),
  'Episode 38',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671202485.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1977'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-38.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2289'),
  'video-2289',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-episode-19'),
  'Episode 19',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671860399.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2289'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-19.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2052'),
  'video-2052',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-117'),
  'Bolum 117',
  4,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1664814333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2052'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-117.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2128'),
  'video-2128',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-50'),
  'Episode 23 · Bolum 50',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1663665353.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2128'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1382'),
  'video-1382',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-38'),
  'Episode 38',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638977009.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1382'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-38.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1789'),
  'video-1789',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-47'),
  'Episode 47',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638708551.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1789'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1601'),
  'video-1601',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-19'),
  'Episode 19',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638676629.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1601'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-19.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-842'),
  'video-842',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-33'),
  'Episode 33',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638540439.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-842'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-33.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1672'),
  'video-1672',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-28'),
  'Episode 28',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1632669643.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1672'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-92.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1702'),
  'video-1702',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-30'),
  'Episode 30',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1631808953.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1702'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-30.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-682'),
  'video-682',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-38'),
  'Episode 38',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1620192333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-682'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-38.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-571'),
  'video-571',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-52'),
  'Episode 52',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613387473.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-571'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-367'),
  'video-367',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-38'),
  'Episode 38',
  NULL,
  '{}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613383927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-367'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/38.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-712'),
  'video-712',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-33'),
  'Episode 33',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613630045.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-712'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4005'),
  'video-4005',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-20'),
  'Episode 20',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1775070364.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4005'),
  'https://video.twimg.com/amplify_video/2039582558082719744/pl/VniEbaGihEBof_70.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3975'),
  'video-3975',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-70'),
  'Episode 70 · Bolum 70',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1771348561.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3975'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/cs.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3404'),
  'video-3404',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-39'),
  'Episode 39',
  6,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729925112.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3404'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-39.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3561'),
  'video-3561',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-48'),
  'Episode 48',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1741611155.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3561'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-48.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3565'),
  'video-3565',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-184'),
  'Episode 184',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1741795503.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3565'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-184.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3284'),
  'video-3284',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-131'),
  'Episode 131',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1731700358.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3284'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-131.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2643'),
  'video-2643',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-39'),
  'Episode 39',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1704290869.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2643'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-39.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2702'),
  'video-2702',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-147'),
  'Episode 147',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706719050.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2702'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-147.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1085'),
  'video-1085',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-39'),
  'Episode 39',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1085'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-39.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1038'),
  'video-1038',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-83'),
  'Episode 83',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1038'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-83.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-248'),
  'video-248',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-39'),
  'Episode 39',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612448555.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-248'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-39.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-138'),
  'video-138',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-58'),
  'Episode 58',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1605545344.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-138'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-44'),
  'video-44',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-44'),
  'Episode 44',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1604244480.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-44'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3815'),
  'video-3815',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-44'),
  'Episode 44',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706598103.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3815'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1979'),
  'video-1979',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-39'),
  'Episode 39',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671202485.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1979'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-39.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2305'),
  'video-2305',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-episode-20'),
  'Episode 20',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671860399.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2305'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-20.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2064'),
  'video-2064',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-118'),
  'Bolum 118',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1664814333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2064'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-118.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2151'),
  'video-2151',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-51'),
  'Episode 24 · Bolum 51',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1663665353.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2151'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1383'),
  'video-1383',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-39'),
  'Episode 39',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638977009.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1383'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-39.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1794'),
  'video-1794',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-48'),
  'Episode 48',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638708551.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1794'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1615'),
  'video-1615',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-20'),
  'Episode 20',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638676629.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1615'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-20.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-844'),
  'video-844',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-34'),
  'Episode 34',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638540439.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-844'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-34.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1697'),
  'video-1697',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-29'),
  'Episode 29',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1632669643.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1697'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-93.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1718'),
  'video-1718',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-31'),
  'Episode 31',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1631808953.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1718'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-31.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-683'),
  'video-683',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-39'),
  'Episode 39',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1620192333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-683'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-39.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-572'),
  'video-572',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-53'),
  'Episode 53',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613387473.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-572'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/53.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-368'),
  'video-368',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-39'),
  'Episode 39',
  NULL,
  '{}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613383927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-368'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/39.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-716'),
  'video-716',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-34'),
  'Episode 34',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613630045.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-716'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-61.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4006'),
  'video-4006',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-20'),
  'Episode 20',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1775070561.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4006'),
  'https://video.twimg.com/amplify_video/2039526711822323712/pl/mnhQYQqm9FOgBmvm.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3987'),
  'video-3987',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-71'),
  'Episode 71 · Bolum 71',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1772556271.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3987'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-71.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3405'),
  'video-3405',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-40'),
  'Episode 40',
  6,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729925112.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3405'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-40.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3562'),
  'video-3562',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-48'),
  'Episode 48',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1741611901.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3562'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3566'),
  'video-3566',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-184'),
  'Episode 184',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1741795894.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3566'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-184.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2644'),
  'video-2644',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-40'),
  'Episode 40',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1704290869.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2644'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-40.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2721'),
  'video-2721',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-148'),
  'Episode 148',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1707930514.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2721'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-148.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1086'),
  'video-1086',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-40'),
  'Episode 40',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1086'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-40.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1039'),
  'video-1039',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-84'),
  'Episode 84',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1039'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-84.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-249'),
  'video-249',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-40'),
  'Episode 40',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612448555.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-249'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-40.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-139'),
  'video-139',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-59'),
  'Episode 59',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1605545344.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-139'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-45'),
  'video-45',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-45'),
  'Episode 45',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1604244480.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-45'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3816'),
  'video-3816',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-45'),
  'Episode 45',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706598103.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3816'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1980'),
  'video-1980',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-40'),
  'Episode 40',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671202485.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1980'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-40.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2306'),
  'video-2306',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-episode-20'),
  'Episode 20',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671860399.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2306'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-20.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2067'),
  'video-2067',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-118'),
  'Bolum 118',
  4,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1664814333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2067'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-118.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2152'),
  'video-2152',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-51'),
  'Episode 24 · Bolum 51',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1663665353.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2152'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1384'),
  'video-1384',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-40'),
  'Episode 40',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638977009.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1384'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-40.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1795'),
  'video-1795',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-49'),
  'Episode 49',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638708551.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1795'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1616'),
  'video-1616',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-20'),
  'Episode 20',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638676629.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1616'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-20.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-845'),
  'video-845',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-35'),
  'Episode 35',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638540439.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-845'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-35.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1698'),
  'video-1698',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-29'),
  'Episode 29',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1632669643.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1698'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-93.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1719'),
  'video-1719',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-31'),
  'Episode 31',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1631808953.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1719'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-31.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-684'),
  'video-684',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-40'),
  'Episode 40',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1620192333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-684'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-40.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-573'),
  'video-573',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-54'),
  'Episode 54',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613387473.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-573'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/54.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-369'),
  'video-369',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-40'),
  'Episode 40',
  NULL,
  '{}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613383927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-369'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/40.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-719'),
  'video-719',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-35'),
  'Episode 35',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613630045.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-719'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S2/Episode-62.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4010'),
  'video-4010',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-21'),
  'Episode 21',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1775668435.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4010'),
  'https://video.twimg.com/amplify_video/2042217039272525824/pl/XE7KmCX84cKiIwbw.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3988'),
  'video-3988',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-71'),
  'Episode 71 · Bolum 71',
  3,
  '{"English"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1772556577.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3988'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-71.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3406'),
  'video-3406',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-41'),
  'Episode 41',
  6,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729925112.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3406'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3568'),
  'video-3568',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-49'),
  'Episode 49',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1742228145.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3568'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-49.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3573'),
  'video-3573',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-185'),
  'Episode 185',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1742390193.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3573'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-185.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2646'),
  'video-2646',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-41'),
  'Episode 41',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1705156295.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2646'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2722'),
  'video-2722',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-148'),
  'Episode 148',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1707930931.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2722'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-148.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1087'),
  'video-1087',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-41'),
  'Episode 41',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1087'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1040'),
  'video-1040',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-85'),
  'Episode 85',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1040'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-85.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-250'),
  'video-250',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-41'),
  'Episode 41',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612448555.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-250'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-140'),
  'video-140',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-60'),
  'Episode 60',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1605545344.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-140'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-46'),
  'video-46',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-46'),
  'Episode 46',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1604244480.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-46'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3817'),
  'video-3817',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-46'),
  'Episode 46',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706598103.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3817'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1983'),
  'video-1983',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-41'),
  'Episode 41',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671202485.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1983'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2082'),
  'video-2082',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-119'),
  'Bolum 119',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1664814333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2082'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-119.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2175'),
  'video-2175',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-52'),
  'Episode 25 · Bolum 52',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1663665353.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2175'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1387'),
  'video-1387',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-41'),
  'Episode 41',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638977009.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1387'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1796'),
  'video-1796',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-50'),
  'Episode 50',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638708551.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1796'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1632'),
  'video-1632',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-21'),
  'Episode 21',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638676629.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1632'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-21.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-846'),
  'video-846',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-36'),
  'Episode 36',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638540439.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-846'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-36.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1714'),
  'video-1714',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-30'),
  'Episode 30',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1632669643.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1714'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-94.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1734'),
  'video-1734',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-32'),
  'Episode 32',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1631808953.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1734'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-32.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-685'),
  'video-685',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-41'),
  'Episode 41',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1620192333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-685'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-370'),
  'video-370',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-41'),
  'Episode 41',
  NULL,
  '{}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613383927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-370'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-720'),
  'video-720',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-35'),
  'Episode 35',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613630045.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-720'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-62.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4011'),
  'video-4011',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-21'),
  'Episode 21',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1775668605.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4011'),
  'https://video.twimg.com/amplify_video/2042053276729012227/pl/htyIjiEEfxJQRkOu.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3992'),
  'video-3992',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-72'),
  'Episode 72 · Bolum 72',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1773167564.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3992'),
  'https://video.twimg.com/amplify_video/2034204558272995328/pl/RziBLZDanAQ9KrJC.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3407'),
  'video-3407',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-42'),
  'Episode 42',
  6,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729925112.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3407'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3569'),
  'video-3569',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-49'),
  'Episode 49',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1742228835.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3569'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3574'),
  'video-3574',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-185'),
  'Episode 185',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1742390334.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3574'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-185.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2648'),
  'video-2648',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-42'),
  'Episode 42',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1705156295.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2648'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2736'),
  'video-2736',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-149'),
  'Episode 149',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1708565310.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2736'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-149.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1088'),
  'video-1088',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-42'),
  'Episode 42',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1088'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1041'),
  'video-1041',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-86'),
  'Episode 86',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1041'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-86.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-251'),
  'video-251',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-42'),
  'Episode 42',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612448555.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-251'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-141'),
  'video-141',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-61'),
  'Episode 61',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1605545344.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-141'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-61.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-47'),
  'video-47',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-47'),
  'Episode 47',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1604244480.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-47'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3818'),
  'video-3818',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-47'),
  'Episode 47',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706598103.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3818'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1986'),
  'video-1986',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-42'),
  'Episode 42',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671202485.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1986'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2083'),
  'video-2083',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-119'),
  'Bolum 119',
  4,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1664814333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2083'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-119.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2176'),
  'video-2176',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-52'),
  'Episode 25 · Bolum 52',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1663665353.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2176'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1392'),
  'video-1392',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-42'),
  'Episode 42',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638977009.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1392'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1633'),
  'video-1633',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-21'),
  'Episode 21',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638676629.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1633'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-21.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-847'),
  'video-847',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-37'),
  'Episode 37',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638540439.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-847'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-37.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1715'),
  'video-1715',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-30'),
  'Episode 30',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1632669643.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1715'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-94.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1735'),
  'video-1735',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-32'),
  'Episode 32',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1631808953.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1735'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-32.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-686'),
  'video-686',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-42'),
  'Episode 42',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1620192333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-686'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-371'),
  'video-371',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-42'),
  'Episode 42',
  NULL,
  '{}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613383927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-371'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-723'),
  'video-723',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-36'),
  'Episode 36',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613630045.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-723'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-63.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4015'),
  'video-4015',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-22'),
  'Episode 22',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1776272627.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4015'),
  'https://video.twimg.com/amplify_video/2049727255186685952/pl/xRqfB009jKa0cKrD.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3993'),
  'video-3993',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-72'),
  'Episode 72 · Bolum 72',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1773167763.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3993'),
  'https://video.twimg.com/amplify_video/2034081845986447360/pl/6Eh29env3oLRkVsF.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3408'),
  'video-3408',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-43'),
  'Episode 43',
  6,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729925112.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3408'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3576'),
  'video-3576',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-50'),
  'Episode 50',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1742829844.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3576'),
  'https://cdn10.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-50.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3580'),
  'video-3580',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-186'),
  'Episode 186',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1743004160.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3580'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-186.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2650'),
  'video-2650',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-43'),
  'Episode 43',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1705156295.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2650'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2737'),
  'video-2737',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-149'),
  'Episode 149',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1708566204.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2737'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-149.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1089'),
  'video-1089',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-43'),
  'Episode 43',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1089'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1042'),
  'video-1042',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-87'),
  'Episode 87',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1042'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-87.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-252'),
  'video-252',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-43'),
  'Episode 43',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612448555.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-252'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-142'),
  'video-142',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-62'),
  'Episode 62',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1605545344.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-142'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-62.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-48'),
  'video-48',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-48'),
  'Episode 48',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1604244480.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-48'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3819'),
  'video-3819',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-48'),
  'Episode 48',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706598103.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3819'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1988'),
  'video-1988',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-43'),
  'Episode 43',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671202485.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1988'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2107'),
  'video-2107',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-120'),
  'Bolum 120',
  4,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1664814333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2107'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-120.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2196'),
  'video-2196',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-53'),
  'Episode 26 · Bolum 53',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1663665353.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2196'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-53.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1395'),
  'video-1395',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-43'),
  'Episode 43',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638977009.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1395'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1649'),
  'video-1649',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-22'),
  'Episode 22',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638676629.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1649'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-22.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-848'),
  'video-848',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-38'),
  'Episode 38',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638540439.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-848'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-38.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1731'),
  'video-1731',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-31'),
  'Episode 31',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1632669643.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1731'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-95.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-731'),
  'video-731',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-1'),
  'Episode 1',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1631808953.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-731'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-1.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-687'),
  'video-687',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-43'),
  'Episode 43',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1620192333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-687'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-372'),
  'video-372',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-43'),
  'Episode 43',
  NULL,
  '{}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613383927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-372'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-724'),
  'video-724',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-36'),
  'Episode 36',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613630045.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-724'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-63.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4016'),
  'video-4016',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-22'),
  'Episode 22',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1776272825.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4016'),
  'https://video.twimg.com/amplify_video/2049662995609927680/pl/seGXdqShodjgZKCS.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3998'),
  'video-3998',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-73'),
  'Episode 73',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1774372708.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3998'),
  'https://video.twimg.com/amplify_video/2036727720256626688/pl/DRWqMqtI1prWxVfm.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3409'),
  'video-3409',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-44'),
  'Episode 44',
  6,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729925112.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3409'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3577'),
  'video-3577',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-50'),
  'Episode 50',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1742830238.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3577'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3581'),
  'video-3581',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-186'),
  'Episode 186',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1743004723.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3581'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-186.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2653'),
  'video-2653',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-44'),
  'Episode 44',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1705156295.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2653'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2751'),
  'video-2751',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-150'),
  'Episode 150',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1709177807.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2751'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-150.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1090'),
  'video-1090',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-44'),
  'Episode 44',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1090'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1043'),
  'video-1043',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-88'),
  'Episode 88',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1043'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-88.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-253'),
  'video-253',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-44'),
  'Episode 44',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612448555.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-253'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-143'),
  'video-143',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-43'),
  'Episode 43',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1605545344.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-143'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-63.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-49'),
  'video-49',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-49'),
  'Episode 49',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1604244480.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-49'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3820'),
  'video-3820',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-49'),
  'Episode 49',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706598103.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3820'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1989'),
  'video-1989',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-44'),
  'Episode 44',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671202485.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1989'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2108'),
  'video-2108',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-120'),
  'Bolum 120',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1664814333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2108'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-120.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2197'),
  'video-2197',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-53'),
  'Episode 26 · Bolum 53',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1663665353.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2197'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-53.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1398'),
  'video-1398',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-44'),
  'Episode 44',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638977009.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1398'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1650'),
  'video-1650',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-22'),
  'Episode 22',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638676629.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1650'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-22.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-849'),
  'video-849',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-39'),
  'Episode 39',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638540439.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-849'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-39.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1732'),
  'video-1732',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-31'),
  'Episode 31',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1632669643.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1732'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-95.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-732'),
  'video-732',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-1'),
  'Episode 1',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1631808953.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-732'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-1.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-781'),
  'video-781',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-44'),
  'Episode 44',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1620192333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-781'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-373'),
  'video-373',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-44'),
  'Episode 44',
  NULL,
  '{}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613383927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-373'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-728'),
  'video-728',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-37'),
  'Episode 37',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613630045.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-728'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-64.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4025'),
  'video-4025',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-23'),
  'Episode 23',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1778088204.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4025'),
  'https://video.twimg.com/amplify_video/2052421274907848705/pl/u5yVwfo_p6gAYc2M.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3999'),
  'video-3999',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-73'),
  'Episode 73',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1774374182.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3999'),
  'https://video.twimg.com/amplify_video/2036616436924174336/pl/g9E1y1oA14qD9uhW.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3410'),
  'video-3410',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-45'),
  'Episode 45',
  6,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729925112.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3410'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3610'),
  'video-3610',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-51'),
  'Episode 51',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1743439480.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3610'),
  'https://cdn10.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-51.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3614'),
  'video-3614',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-187'),
  'Episode 187',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1743612209.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3614'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-187.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2654'),
  'video-2654',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-45'),
  'Episode 45',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1705156295.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2654'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2752'),
  'video-2752',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-150'),
  'Episode 150',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1709191927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2752'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-150.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1091'),
  'video-1091',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-45'),
  'Episode 45',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1091'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1044'),
  'video-1044',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-89'),
  'Episode 89',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1044'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-89.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-254'),
  'video-254',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-45'),
  'Episode 45',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612448555.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-254'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-144'),
  'video-144',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-64'),
  'Episode 64',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1605545344.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-144'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-64.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-5'),
  'video-5',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-5'),
  'Episode 5',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1604244480.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-5'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-5.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3821'),
  'video-3821',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-50'),
  'Episode 50',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706598103.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3821'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1990'),
  'video-1990',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-45'),
  'Episode 45',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671202485.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1990'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2158'),
  'video-2158',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-121'),
  'Bolum 121',
  4,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1664814333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2158'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-121.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2213'),
  'video-2213',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-54'),
  'Episode 27 · Bolum 54',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1663665353.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2213'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-54.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1401'),
  'video-1401',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-45'),
  'Episode 45',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638977009.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1401'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1665'),
  'video-1665',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-23'),
  'Episode 23',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638676629.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1665'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-23.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-850'),
  'video-850',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-40'),
  'Episode 40',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638540439.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-850'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-40.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1747'),
  'video-1747',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-32'),
  'Episode 32',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1632669643.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1747'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-96.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-735'),
  'video-735',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-2'),
  'Episode 2',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1631808953.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-735'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-2.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-782'),
  'video-782',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-45'),
  'Episode 45',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1620192333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-782'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-374'),
  'video-374',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-45'),
  'Episode 45',
  NULL,
  '{}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613383927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-374'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-729'),
  'video-729',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-37'),
  'Episode 37',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613630045.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-729'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-64.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4026'),
  'video-4026',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-23'),
  'Episode 23',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1778088352.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4026'),
  'https://video.twimg.com/amplify_video/2052186045077131269/pl/3OcHEznBeeM1ADOP.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4003'),
  'video-4003',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-74'),
  'Episode 74',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1774976973.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4003'),
  'https://video.twimg.com/amplify_video/2039241930765156352/pl/eV38A3jV7QW75pIy.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3437'),
  'video-3437',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-46'),
  'Episode 46',
  6,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729925112.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3437'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3611'),
  'video-3611',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-51'),
  'Episode 51',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1743440037.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3611'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3615'),
  'video-3615',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-187'),
  'Episode 187',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1743612663.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3615'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-187.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2657'),
  'video-2657',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-46'),
  'Episode 46',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1705156295.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2657'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2772'),
  'video-2772',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-151'),
  'Episode 151',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1709740034.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2772'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-151.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1092'),
  'video-1092',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-46'),
  'Episode 46',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1092'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1045'),
  'video-1045',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-90'),
  'Episode 90',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1045'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-90.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-255'),
  'video-255',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-46'),
  'Episode 46',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612448555.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-255'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-145'),
  'video-145',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-65'),
  'Episode 65',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1605545344.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-145'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-65.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-50'),
  'video-50',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-50'),
  'Episode 50',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1604244480.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-50'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3822'),
  'video-3822',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-51'),
  'Episode 51',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706598103.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3822'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1991'),
  'video-1991',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-46'),
  'Episode 46',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671202485.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1991'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2159'),
  'video-2159',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-121'),
  'Bolum 121',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1664814333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2159'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-121.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2214'),
  'video-2214',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-54'),
  'Episode 27 · Bolum 54',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1663665353.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2214'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-54.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1403'),
  'video-1403',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-46'),
  'Episode 46',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638977009.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1403'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1666'),
  'video-1666',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-23'),
  'Episode 23',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638676629.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1666'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-23.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-851'),
  'video-851',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-41'),
  'Episode 41',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638540439.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-851'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1748'),
  'video-1748',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-32'),
  'Episode 32',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1632669643.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1748'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-96.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-736'),
  'video-736',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-2'),
  'Episode 2',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1631808953.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-736'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-2.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-783'),
  'video-783',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-46'),
  'Episode 46',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1620192333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-783'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-375'),
  'video-375',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-46'),
  'Episode 46',
  NULL,
  '{}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613383927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-375'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4030'),
  'video-4030',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-24'),
  'Episode 24',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1778725843.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4030'),
  'https://video.twimg.com/amplify_video/2057345894622629889/pl/mngC9nzXBIjPfdFc.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4004'),
  'video-4004',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-74'),
  'Episode 74',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1774977161.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4004'),
  'https://video.twimg.com/amplify_video/2039158696366821376/pl/URGXnQv0BfJI-JBl.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3438'),
  'video-3438',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-47'),
  'Episode 47',
  6,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729925112.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3438'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3617'),
  'video-3617',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-52'),
  'Episode 52',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1744653755.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3617'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-52.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3621'),
  'video-3621',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-188'),
  'Episode 188',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1744823191.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3621'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-188.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2658'),
  'video-2658',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-47'),
  'Episode 47',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1705156295.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2658'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2773'),
  'video-2773',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-151'),
  'Episode 151',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1709740527.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2773'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-151.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1093'),
  'video-1093',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-47'),
  'Episode 47',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1093'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1046'),
  'video-1046',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-91'),
  'Episode 91',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1046'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-91.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-256'),
  'video-256',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-47'),
  'Episode 47',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612448555.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-256'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-146'),
  'video-146',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-66'),
  'Episode 66',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1605545344.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-146'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-66.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-51'),
  'video-51',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-51'),
  'Episode 51',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1604244480.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-51'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3823'),
  'video-3823',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-52'),
  'Episode 52',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706598103.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3823'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1992'),
  'video-1992',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-47'),
  'Episode 47',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671202485.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1992'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2182'),
  'video-2182',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-122'),
  'Bolum 122',
  4,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1664814333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2182'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-122.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2232'),
  'video-2232',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-55'),
  'Episode 28 · Bolum 55',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1663665353.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2232'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-55.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1404'),
  'video-1404',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-47'),
  'Episode 47',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638977009.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1404'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1690'),
  'video-1690',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-24'),
  'Episode 24',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638676629.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1690'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-852'),
  'video-852',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-42'),
  'Episode 42',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638540439.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-852'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1760'),
  'video-1760',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-33'),
  'Episode 33',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1632669643.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1760'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-97.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-742'),
  'video-742',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-3'),
  'Episode 3',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1631808953.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-742'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-3.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-784'),
  'video-784',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-47'),
  'Episode 47',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1620192333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-784'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-376'),
  'video-376',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-47'),
  'Episode 47',
  NULL,
  '{}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613383927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-376'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4031'),
  'video-4031',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-24'),
  'Episode 24',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1778727109.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4031'),
  'https://video.twimg.com/amplify_video/2057267416648830976/pl/FaCCWm6SU0NtsTkl.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4008'),
  'video-4008',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-75'),
  'Episode 75',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1775589194.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4008'),
  'https://video.twimg.com/amplify_video/2041787087863619584/pl/X6ojKQBg7LnBe9NC.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3439'),
  'video-3439',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-48'),
  'Episode 48',
  6,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729925112.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3439'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3618'),
  'video-3618',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-52'),
  'Episode 52',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1744654099.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3618'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3622'),
  'video-3622',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-188'),
  'Episode 188',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1744823519.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3622'),
  'https://cdn.fastmotion.io/48538920-ad24-4188-899d-4c58fc1aeeb8/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2659'),
  'video-2659',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-48'),
  'Episode 48',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1705764782.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2659'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2789'),
  'video-2789',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-152'),
  'Episode 152',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1710350919.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2789'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-152.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1094'),
  'video-1094',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-48'),
  'Episode 48',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1094'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-689'),
  'video-689',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-1'),
  'Episode 1',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1621820585.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-689'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-1.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-257'),
  'video-257',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-48'),
  'Episode 48',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612448555.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-257'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-147'),
  'video-147',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-67'),
  'Episode 67',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1605545344.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-147'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-67.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-52'),
  'video-52',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-52'),
  'Episode 52',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1604244480.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-52'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3824'),
  'video-3824',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-53'),
  'Episode 53',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706598103.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3824'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-53.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1993'),
  'video-1993',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-48'),
  'Episode 48',
  4,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1671202485.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1993'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2183'),
  'video-2183',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-122'),
  'Bolum 122',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1664814333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2183'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-122.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2233'),
  'video-2233',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-55'),
  'Episode 28 · Bolum 55',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1663665353.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2233'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-55.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1406'),
  'video-1406',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-48'),
  'Episode 48',
  3,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638977009.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1406'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1691'),
  'video-1691',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-24'),
  'Episode 24',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638676629.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1691'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-853'),
  'video-853',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-43'),
  'Episode 43',
  2,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638540439.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-853'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1761'),
  'video-1761',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-33'),
  'Episode 33',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1632669643.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1761'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-97.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-743'),
  'video-743',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-3'),
  'Episode 3',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1631808953.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-743'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-3.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-785'),
  'video-785',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-48'),
  'Episode 48',
  1,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1620192333.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-785'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-377'),
  'video-377',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-48'),
  'Episode 48',
  NULL,
  '{}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1613383927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-377'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4038'),
  'video-4038',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-25'),
  'Episode 25',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1780021061.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4038'),
  'https://video.twimg.com/amplify_video/2062440845538693120/pl/zZu4IGW7NZFphCwq.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4009'),
  'video-4009',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-75'),
  'Episode 75',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1775589343.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4009'),
  'https://video.twimg.com/amplify_video/2041788817045106688/pl/CL6IpbC8BUuHJv01.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3440'),
  'video-3440',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-49'),
  'Episode 49',
  6,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1729925112.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3440'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3654'),
  'video-3654',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-53'),
  'Episode 53',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1745253720.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3654'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-53.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3658'),
  'video-3658',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-189'),
  'Episode 189',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1745429221.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3658'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-189.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2663'),
  'video-2663',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-49'),
  'Episode 49',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1705764782.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2663'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2790'),
  'video-2790',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-152'),
  'Episode 152',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1710351229.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2790'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-152.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;
