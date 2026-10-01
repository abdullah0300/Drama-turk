-- Video Variants Chunk 6

INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1095'),
  'video-1095',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-49'),
  'Episode 49',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1095'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-692'),
  'video-692',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-2'),
  'Episode 2',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-692'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-2.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-258'),
  'video-258',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-49'),
  'Episode 49',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-258'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-148'),
  'video-148',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-68'),
  'Episode 68',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-148'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-68.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-53'),
  'video-53',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-53'),
  'Episode 53',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-53'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-53.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3825'),
  'video-3825',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-54'),
  'Episode 54',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3825'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-54.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1995'),
  'video-1995',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-49'),
  'Episode 49',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1995'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2199'),
  'video-2199',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-123'),
  'Bolum 123',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2199'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-123.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2247'),
  'video-2247',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-56'),
  'Episode 29 · Bolum 56',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2247'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-56.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1409'),
  'video-1409',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-49'),
  'Episode 49',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1409'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1708'),
  'video-1708',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-25'),
  'Episode 25',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1708'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-854'),
  'video-854',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-44'),
  'Episode 44',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-854'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1772'),
  'video-1772',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-34'),
  'Episode 34',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1772'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-98.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-745'),
  'video-745',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-4'),
  'Episode 4',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-745'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-4.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-786'),
  'video-786',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-49'),
  'Episode 49',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-786'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-378'),
  'video-378',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-49'),
  'Episode 49',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-378'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4039'),
  'video-4039',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-25'),
  'Episode 25',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1780021512.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4039'),
  'https://video.twimg.com/amplify_video/2062343707194503168/pl/8wYa6PxeD4HZFkg9.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4013'),
  'video-4013',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-76'),
  'Episode 76',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1776190055.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4013'),
  'https://video.twimg.com/amplify_video/2044389923411685376/pl/uFTUVQ_RGU518XXH.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3441'),
  'video-3441',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-50'),
  'Episode 50',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3441'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3655'),
  'video-3655',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-53'),
  'Episode 53',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1745253927.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3655'),
  'https://cdn.fastmotion.io/7d2364cc-0ae4-45c1-892f-8216a3e86dc9/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3659'),
  'video-3659',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-188'),
  'Episode 188',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1745429458.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3659'),
  'https://cdn.fastmotion.io/644f3aff-f8fe-4be8-9a4c-8124d3b497e5/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2664'),
  'video-2664',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-50'),
  'Episode 50',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2664'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2805'),
  'video-2805',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-153'),
  'Episode 153',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1710952684.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2805'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-153.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1096'),
  'video-1096',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-50'),
  'Episode 50',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1096'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-693'),
  'video-693',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-3'),
  'Episode 3',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-693'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-3.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-259'),
  'video-259',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-50'),
  'Episode 50',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-259'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-149'),
  'video-149',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-69'),
  'Episode 69',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-149'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-69.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-54'),
  'video-54',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-54'),
  'Episode 54',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-54'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-54.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3826'),
  'video-3826',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-55'),
  'Episode 55',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3826'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-55.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1996'),
  'video-1996',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-50'),
  'Episode 50',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1996'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2200'),
  'video-2200',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-123'),
  'Bolum 123',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2200'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-123.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2248'),
  'video-2248',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-56'),
  'Episode 29 · Bolum 56',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2248'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-56.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1413'),
  'video-1413',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-50'),
  'Episode 50',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1413'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1709'),
  'video-1709',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-25'),
  'Episode 25',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1709'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-855'),
  'video-855',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-45'),
  'Episode 45',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-855'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1773'),
  'video-1773',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-34'),
  'Episode 34',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1773'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-98.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-746'),
  'video-746',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-4'),
  'Episode 4',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-746'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-4.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-787'),
  'video-787',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-50'),
  'Episode 50',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-787'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-379'),
  'video-379',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-50'),
  'Episode 50',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-379'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4044'),
  'video-4044',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-26'),
  'Episode 26',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1781147414.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4044'),
  'https://video.twimg.com/amplify_video/2064906556563484672/pl/YvfiwtFFy5n199ry.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4014'),
  'video-4014',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-76'),
  'Episode 76',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1776190222.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4014'),
  'https://video.twimg.com/amplify_video/2046760910987968512/pl/bGXTkLZLZpQeFLD4.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3442'),
  'video-3442',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-51'),
  'Episode 51',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3442'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3661'),
  'video-3661',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-54'),
  'Episode 54',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1745861026.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3661'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-54.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3665'),
  'video-3665',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-190'),
  'Episode 190',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1746028956.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3665'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-190.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2667'),
  'video-2667',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-51'),
  'Episode 51',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2667'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2806'),
  'video-2806',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-153'),
  'Episode 153',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1710952967.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2806'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-153.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1097'),
  'video-1097',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-51'),
  'Episode 51',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1097'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-694'),
  'video-694',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-4'),
  'Episode 4',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-694'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-4.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-260'),
  'video-260',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-51'),
  'Episode 51',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-260'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-150'),
  'video-150',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-70'),
  'Episode 70',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-150'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-70.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-55'),
  'video-55',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-55'),
  'Episode 55',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-55'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-55.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3827'),
  'video-3827',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-56'),
  'Episode 56',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3827'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-56.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1997'),
  'video-1997',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-51'),
  'Episode 51',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1997'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2217'),
  'video-2217',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-124'),
  'Bolum 124',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2217'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-124.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2270'),
  'video-2270',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-57'),
  'Episode 30 · Bolum 57',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2270'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1417'),
  'video-1417',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-51'),
  'Episode 51',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1417'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1725'),
  'video-1725',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-26'),
  'Episode 26',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1725'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-856'),
  'video-856',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-46'),
  'Episode 46',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-856'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-738'),
  'video-738',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-1'),
  'Episode 1',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-738'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-65.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-752'),
  'video-752',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-5'),
  'Episode 5',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-752'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-5.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-788'),
  'video-788',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-51'),
  'Episode 51',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-788'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-380'),
  'video-380',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-51'),
  'Episode 51',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-380'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4045'),
  'video-4045',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-episode-26'),
  'Episode 26',
  1,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1781148093.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4045'),
  'https://video.twimg.com/amplify_video/2064913281316233216/pl/A35yqcgJLlO-roy2.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4018'),
  'video-4018',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-77'),
  'Episode 77',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1776788723.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4018'),
  'https://video.twimg.com/amplify_video/2046853993406537728/pl/cdu6AR__S2T3t3Cu.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3443'),
  'video-3443',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-52'),
  'Episode 52',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3443'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3662'),
  'video-3662',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-54'),
  'Episode 54',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1745861307.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3662'),
  'https://cdn.fastmotion.io/6f4310d5-81ec-4555-9d8f-97794c55ddd0/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3666'),
  'video-3666',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-190'),
  'Episode 190',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1746029374.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3666'),
  'https://cdn.fastmotion.io/85e6bf78-0797-4e9d-b3de-e07f1a4d63e0/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2668'),
  'video-2668',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-52'),
  'Episode 52',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2668'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2822'),
  'video-2822',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-154'),
  'Episode 154',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1711555424.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2822'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-154.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1098'),
  'video-1098',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-52'),
  'Episode 52',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1098'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-695'),
  'video-695',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-5'),
  'Episode 5',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-695'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-5.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-261'),
  'video-261',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-52'),
  'Episode 52',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-261'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-151'),
  'video-151',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-71'),
  'Episode 71',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-151'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-71.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-56'),
  'video-56',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-56'),
  'Episode 56',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-56'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-56.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3828'),
  'video-3828',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-57'),
  'Episode 57',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3828'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1998'),
  'video-1998',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-52'),
  'Episode 52',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1998'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2218'),
  'video-2218',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-124'),
  'Bolum 124',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2218'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-124.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2271'),
  'video-2271',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-57'),
  'Episode 30 · Bolum 57',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2271'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1420'),
  'video-1420',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-52'),
  'Episode 52',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1420'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1726'),
  'video-1726',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-26'),
  'Episode 26',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1726'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-857'),
  'video-857',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-47'),
  'Episode 47',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-857'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-744'),
  'video-744',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-1'),
  'Episode 1',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-744'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-65.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-753'),
  'video-753',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-5'),
  'Episode 5',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-753'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-5.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-789'),
  'video-789',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-52'),
  'Episode 52',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-789'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-381'),
  'video-381',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-52'),
  'Episode 52',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-381'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4019'),
  'video-4019',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-77'),
  'Episode 77',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1776789016.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4019'),
  'https://video.twimg.com/amplify_video/2046756811118702593/pl/kGkotXNbinokSYEU.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3444'),
  'video-3444',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-53'),
  'Episode 53',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3444'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-53.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3668'),
  'video-3668',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-55'),
  'Episode 55',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1746463977.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3668'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-55.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3672'),
  'video-3672',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-191'),
  'Episode 191',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1746626565.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3672'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-191.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2669'),
  'video-2669',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-53'),
  'Episode 53',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2669'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-53.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2823'),
  'video-2823',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-154'),
  'Episode 154',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1711556230.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2823'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-154.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1099'),
  'video-1099',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-53'),
  'Episode 53',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1099'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-53.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-696'),
  'video-696',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-6'),
  'Episode 6',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-696'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-6.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-262'),
  'video-262',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-53'),
  'Episode 53',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-262'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-53.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-152'),
  'video-152',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-72'),
  'Episode 72',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-152'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-72.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-57'),
  'video-57',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-57'),
  'Episode 57',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-57'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3829'),
  'video-3829',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-58'),
  'Episode 58',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3829'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2000'),
  'video-2000',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-53'),
  'Episode 53',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2000'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-53.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2234'),
  'video-2234',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-125'),
  'Bolum 125',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2234'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-125.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2296'),
  'video-2296',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-episode-58'),
  'Episode 58',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2296'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1421'),
  'video-1421',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-53'),
  'Episode 53',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1421'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-53.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1741'),
  'video-1741',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-27'),
  'Episode 27',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1741'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-858'),
  'video-858',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-48'),
  'Episode 48',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-858'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-748'),
  'video-748',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-2'),
  'Episode 2',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-748'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-66.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-756'),
  'video-756',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-6'),
  'Episode 6',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-756'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-6.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-790'),
  'video-790',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-53'),
  'Episode 53',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-790'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-53.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-382'),
  'video-382',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-53'),
  'Episode 53',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-382'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/53.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4020'),
  'video-4020',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-78'),
  'Episode 78',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1777427020.jpeg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4020'),
  'https://video.twimg.com/amplify_video/2049420336916033536/pl/TfeWNLKOxoXUUsb2.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3445'),
  'video-3445',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-54'),
  'Episode 54',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3445'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-54.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3669'),
  'video-3669',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-bolum-55'),
  'Episode 55 · Bolum 55',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1746465680.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3669'),
  'https://cdn.fastmotion.io/9bcf29bc-0a42-41b3-8a76-2ad3503fb0e8/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3673'),
  'video-3673',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-191'),
  'Episode 191',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1746627140.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3673'),
  'https://cdn.fastmotion.io/5c9459da-fcf1-44ab-bb09-441fc81b37b3/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2670'),
  'video-2670',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-54'),
  'Episode 54',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2670'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-54.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2838'),
  'video-2838',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-155'),
  'Episode 155',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1712163343.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2838'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-155.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1100'),
  'video-1100',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-54'),
  'Episode 54',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1100'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-54.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-697'),
  'video-697',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-7'),
  'Episode 7',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-697'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-7.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-263'),
  'video-263',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-54'),
  'Episode 54',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-263'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-54.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-153'),
  'video-153',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-73'),
  'Episode 73',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-153'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-73.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-58'),
  'video-58',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-58'),
  'Episode 58',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-58'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3830'),
  'video-3830',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-59'),
  'Episode 59',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3830'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2001'),
  'video-2001',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-54'),
  'Episode 54',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2001'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-54.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2235'),
  'video-2235',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-125'),
  'Bolum 125',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2235'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-125.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2297'),
  'video-2297',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-episode-58'),
  'Episode 58',
  2,
  '{"Urdu","English"}',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2297'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1423'),
  'video-1423',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-54'),
  'Episode 54',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1423'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-54.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1742'),
  'video-1742',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-27'),
  'Episode 27',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1742'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-859'),
  'video-859',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-49'),
  'Episode 49',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-859'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-749'),
  'video-749',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-2'),
  'Episode 2',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-749'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-66.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-757'),
  'video-757',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-6'),
  'Episode 6',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-757'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-6.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-791'),
  'video-791',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-54'),
  'Episode 54',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-791'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-54.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-383'),
  'video-383',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-54'),
  'Episode 54',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-383'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/54.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4021'),
  'video-4021',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-78'),
  'Episode 78',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1777427994.jpeg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4021'),
  'https://video.twimg.com/amplify_video/2049308830295556096/pl/c-YU_LAlcl_PhanU.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3446'),
  'video-3446',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-55'),
  'Episode 55',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3446'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-55.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3675'),
  'video-3675',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-56'),
  'Episode 56',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1747058109.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3675'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-56.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3677'),
  'video-3677',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-192'),
  'Episode 192',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1747232103.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3677'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-192.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2672'),
  'video-2672',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-55'),
  'Episode 55',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2672'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-55.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2839'),
  'video-2839',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-155'),
  'Episode 155',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1712163789.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2839'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-155.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1101'),
  'video-1101',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-55'),
  'Episode 55',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1101'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-55.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-698'),
  'video-698',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-8'),
  'Episode 8',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-698'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-8.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-264'),
  'video-264',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-55'),
  'Episode 55',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-264'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-55.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-154'),
  'video-154',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-74'),
  'Episode 74',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-154'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-74.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-59'),
  'video-59',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-59'),
  'Episode 59',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-59'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3831'),
  'video-3831',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-60'),
  'Episode 60',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3831'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2002'),
  'video-2002',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-55'),
  'Episode 55',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2002'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-55.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2251'),
  'video-2251',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-episode-126'),
  'Episode 126',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2251'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-126.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2312'),
  'video-2312',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-episode-59'),
  'Episode 59',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2312'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1427'),
  'video-1427',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-55'),
  'Episode 55',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1427'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-55.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-860'),
  'video-860',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-50'),
  'Episode 50',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-860'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-754'),
  'video-754',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-3'),
  'Episode 3',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-754'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-67.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-760'),
  'video-760',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-7'),
  'Episode 7',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-760'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-7.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-792'),
  'video-792',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-55'),
  'Episode 55',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-792'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-55.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-384'),
  'video-384',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-55'),
  'Episode 55',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-384'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/55.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4023'),
  'video-4023',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-79'),
  'Episode 79',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1778029388.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4023'),
  'https://video.twimg.com/amplify_video/2051969012158902280/pl/f-BXgWpnf35jJJox.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3447'),
  'video-3447',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-56'),
  'Episode 56',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3447'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-56.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3676'),
  'video-3676',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-56'),
  'Episode 56',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1747058438.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3676'),
  'https://cdn.fastmotion.io/c636dd30-328a-49de-834b-9fdef5d76a80/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3678'),
  'video-3678',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-192'),
  'Episode 192',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1747232731.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3678'),
  'https://cdn.fastmotion.io/9f28ebe2-bd69-40a4-9b1f-452b01700bc7/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2673'),
  'video-2673',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-56'),
  'Episode 56',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2673'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-56.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2855'),
  'video-2855',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-156'),
  'Episode 156',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1712767754.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2855'),
  'https://cdn.videas.fr/v-medias/s5/hlsv1/80/87/8087e702-941d-4067-beec-97c228538032/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1102'),
  'video-1102',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-56'),
  'Episode 56',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1102'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-56.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-699'),
  'video-699',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-9'),
  'Episode 9',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-699'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-9.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-265'),
  'video-265',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-56'),
  'Episode 56',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-265'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-56.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-155'),
  'video-155',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-75'),
  'Episode 75',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-155'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-75.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-6'),
  'video-6',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-6'),
  'Episode 6',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-6'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-6.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3832'),
  'video-3832',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-61'),
  'Episode 61',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3832'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-61.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2003'),
  'video-2003',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-56'),
  'Episode 56',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2003'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-56.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2252'),
  'video-2252',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-episode-126'),
  'Episode 126',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2252'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-126.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2313'),
  'video-2313',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-episode-59'),
  'Episode 59',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2313'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1430'),
  'video-1430',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-56'),
  'Episode 56',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1430'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-56-n.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-861'),
  'video-861',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-51'),
  'Episode 51',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-861'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-755'),
  'video-755',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-3'),
  'Episode 3',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-755'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-67.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-761'),
  'video-761',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-7'),
  'Episode 7',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-761'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-7.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-793'),
  'video-793',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-56'),
  'Episode 56',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-793'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-56.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-385'),
  'video-385',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-56'),
  'Episode 56',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-385'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/56.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4024'),
  'video-4024',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-79'),
  'Episode 79',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1778030369.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4024'),
  'https://video.twimg.com/amplify_video/2051836397850341383/pl/j9Uj7r7vNexQQQYL.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3448'),
  'video-3448',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-57'),
  'Episode 57',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3448'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3680'),
  'video-3680',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-57'),
  'Episode 57',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1747671463.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3680'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-57.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3689'),
  'video-3689',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-193'),
  'Episode 193',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1748454865.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3689'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-193.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2676'),
  'video-2676',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-57'),
  'Episode 57',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2676'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2856'),
  'video-2856',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-156'),
  'Episode 156',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1712803461.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2856'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-156.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1103'),
  'video-1103',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-57'),
  'Episode 57',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1103'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-700'),
  'video-700',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-10'),
  'Episode 10',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-700'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-10.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-266'),
  'video-266',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-57'),
  'Episode 57',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-266'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-156'),
  'video-156',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-76'),
  'Episode 76',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-156'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-76.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-60'),
  'video-60',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-60'),
  'Episode 60',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-60'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3833'),
  'video-3833',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-62'),
  'Episode 62',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3833'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-62.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2004'),
  'video-2004',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-57'),
  'Episode 57',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2004'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2264'),
  'video-2264',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-episode-127'),
  'Episode 127',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2264'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-127.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2331'),
  'video-2331',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-episode-60'),
  'Episode 60',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2331'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1436'),
  'video-1436',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-57'),
  'Episode 57',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1436'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-862'),
  'video-862',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-52'),
  'Episode 52',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-862'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-758'),
  'video-758',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-4'),
  'Episode 4',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-758'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-68.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-766'),
  'video-766',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-8'),
  'Episode 8',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-766'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-8.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-794'),
  'video-794',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-57'),
  'Episode 57',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-794'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-386'),
  'video-386',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-57'),
  'Episode 57',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-386'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4028'),
  'video-4028',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-80'),
  'Episode 80',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1778634801.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4028'),
  'https://video.twimg.com/amplify_video/2054503536809979904/pl/bGpcZQXISBDuqzaD.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3449'),
  'video-3449',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-58'),
  'Episode 58',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3449'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3681'),
  'video-3681',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-57'),
  'Episode 57',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1747671886.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3681'),
  'https://cdn.fastmotion.io/8e277fd9-afaa-44ee-882d-d691e011da77/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3690'),
  'video-3690',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-193'),
  'Episode 193',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1748455268.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3690'),
  'https://cdn.fastmotion.io/6e19aea1-4b34-460d-b445-010f247a484f/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2690'),
  'video-2690',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-58'),
  'Episode 58',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2690'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2895'),
  'video-2895',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-157'),
  'Episode 157',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1713974931.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2895'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-157.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1104'),
  'video-1104',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-58'),
  'Episode 58',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1104'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-701'),
  'video-701',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-11'),
  'Episode 11',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-701'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-11.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-267'),
  'video-267',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-58'),
  'Episode 58',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-267'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-81'),
  'video-81',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-1'),
  'Episode 1',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-81'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-1.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-61'),
  'video-61',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-61'),
  'Episode 61',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-61'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-61.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3834'),
  'video-3834',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-63'),
  'Episode 63',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3834'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-63.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2005'),
  'video-2005',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-58'),
  'Episode 58',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2005'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2265'),
  'video-2265',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-episode-127'),
  'Episode 127',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2265'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-127.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2332'),
  'video-2332',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-episode-60'),
  'Episode 60',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2332'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1440'),
  'video-1440',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-58'),
  'Episode 58',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1440'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-863'),
  'video-863',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-53'),
  'Episode 53',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-863'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-53.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-759'),
  'video-759',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-4'),
  'Episode 4',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-759'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-68.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-767'),
  'video-767',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-8'),
  'Episode 8',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-767'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-8.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-795'),
  'video-795',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-58'),
  'Episode 58',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-795'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-387'),
  'video-387',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-58'),
  'Episode 58',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-387'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4029'),
  'video-4029',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-79'),
  'Episode 79',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1778635542.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4029'),
  'https://video.twimg.com/amplify_video/2054500771178205184/pl/vkzsvA-qy4bXgVyX.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3450'),
  'video-3450',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-59'),
  'Episode 59',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3450'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3685'),
  'video-3685',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-58'),
  'Episode 58',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1748265046.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3685'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-58.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3694'),
  'video-3694',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-194'),
  'Episode 194',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1749059246.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3694'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-194.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2691'),
  'video-2691',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-59'),
  'Episode 59',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2691'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2896'),
  'video-2896',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-157'),
  'Episode 157',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1713975819.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2896'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-157.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1105'),
  'video-1105',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-59'),
  'Episode 59',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1105'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-702'),
  'video-702',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-12'),
  'Episode 12',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-702'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-12.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-268'),
  'video-268',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-59'),
  'Episode 59',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-268'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-82'),
  'video-82',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-2'),
  'Episode 2',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-82'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-2.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-62'),
  'video-62',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-62'),
  'Episode 62',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-62'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-62.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3835'),
  'video-3835',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-64'),
  'Episode 64',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3835'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-64.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2006'),
  'video-2006',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-59'),
  'Episode 59',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2006'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2284'),
  'video-2284',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-episode-128'),
  'Episode 128',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2284'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-128.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2542'),
  'video-2542',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-episode-61'),
  'Episode 61',
  2,
  '{"Urdu","English"}',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2542'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/61-t.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1446'),
  'video-1446',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-59'),
  'Episode 59',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1446'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-864'),
  'video-864',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-54'),
  'Episode 54',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-864'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-54.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-762'),
  'video-762',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-5'),
  'Episode 5',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-762'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-69.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-770'),
  'video-770',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-9'),
  'Episode 9',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-770'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-9.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-796'),
  'video-796',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-59'),
  'Episode 59',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-796'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-388'),
  'video-388',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-59'),
  'Episode 59',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-388'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4033'),
  'video-4033',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-81'),
  'Episode 81',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1779270845.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4033'),
  'https://video.twimg.com/amplify_video/2057082298944688128/pl/kLbofddDr2gQWM91.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3451'),
  'video-3451',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-60'),
  'Episode 60',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3451'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3686'),
  'video-3686',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-58'),
  'Episode 58',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1748265994.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3686'),
  'https://cdn.fastmotion.io/7ab91bc9-65a7-4749-a62a-727f489e935a/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3695'),
  'video-3695',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-194'),
  'Episode 194',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1749059543.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3695'),
  'https://cdn.fastmotion.io/e2717a64-5519-4194-95e2-03a38246f538/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2694'),
  'video-2694',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-60'),
  'Episode 60',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2694'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2910'),
  'video-2910',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-158'),
  'Episode 158',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1714588668.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2910'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-158.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1106'),
  'video-1106',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-60'),
  'Episode 60',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1106'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-703'),
  'video-703',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-13'),
  'Episode 13',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-703'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-13.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-269'),
  'video-269',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-60'),
  'Episode 60',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-269'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-83'),
  'video-83',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-3'),
  'Episode 3',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-83'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-3.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-63'),
  'video-63',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-63'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-63.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3836'),
  'video-3836',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-65'),
  'Episode 65',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3836'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-65.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2011'),
  'video-2011',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-60'),
  'Episode 60',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2011'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2285'),
  'video-2285',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-episode-128'),
  'Episode 128',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2285'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-128.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2543'),
  'video-2543',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-episode-61'),
  'Episode 61',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2543'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-61.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1447'),
  'video-1447',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-60'),
  'Episode 60',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1447'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-865'),
  'video-865',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-55'),
  'Episode 55',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-865'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-55.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-763'),
  'video-763',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-5'),
  'Episode 5',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-763'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-69.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-771'),
  'video-771',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-9'),
  'Episode 9',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-771'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-9.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-797'),
  'video-797',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-60'),
  'Episode 60',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-797'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-389'),
  'video-389',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-60'),
  'Episode 60',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-389'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4034'),
  'video-4034',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-81'),
  'Episode 81',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1779271302.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4034'),
  'https://video.twimg.com/amplify_video/2057091884577705985/pl/_woaVokRvc95u8ZT.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3452'),
  'video-3452',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-61'),
  'Episode 61',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3452'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-61.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2695'),
  'video-2695',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-61'),
  'Episode 61',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2695'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-61.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2911'),
  'video-2911',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-158'),
  'Episode 158',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1714588928.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2911'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-158.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1107'),
  'video-1107',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-61'),
  'Episode 61',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1107'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-61.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-704'),
  'video-704',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-14'),
  'Episode 14',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-704'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-14.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-270'),
  'video-270',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-61'),
  'Episode 61',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-270'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-61.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-84'),
  'video-84',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-4'),
  'Episode 4',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-84'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-4.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-64'),
  'video-64',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-64'),
  'Episode 64',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-64'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-64.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3837'),
  'video-3837',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-66'),
  'Episode 66',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3837'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-66.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2014'),
  'video-2014',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-61'),
  'Episode 61',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2014'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-61.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2300'),
  'video-2300',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-episode-129'),
  'Episode 129',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2300'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-129.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1450'),
  'video-1450',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-61'),
  'Episode 61',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1450'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-61.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-866'),
  'video-866',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-56'),
  'Episode 56',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-866'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-56.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-764'),
  'video-764',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-6'),
  'Episode 6',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-764'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-70.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-774'),
  'video-774',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-10'),
  'Episode 10',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-774'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-10.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-798'),
  'video-798',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-61'),
  'Episode 61',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-798'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-61.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4036'),
  'video-4036',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-82'),
  'Episode 82',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1779814866.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4036'),
  'https://video.twimg.com/amplify_video/2062903337104936961/pl/PpORS-GdTrOHYORK.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3453'),
  'video-3453',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-62'),
  'Episode 62',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3453'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-62.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2697'),
  'video-2697',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-62'),
  'Episode 62',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2697'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-62.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2930'),
  'video-2930',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-159'),
  'Episode 159',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1715186394.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2930'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-159.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1108'),
  'video-1108',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-62'),
  'Episode 62',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1108'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-62.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-705'),
  'video-705',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-15'),
  'Episode 15',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-705'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-15.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-271'),
  'video-271',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-62'),
  'Episode 62',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-271'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-62.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-85'),
  'video-85',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-5'),
  'Episode 5',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-85'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-5.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-65'),
  'video-65',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-65'),
  'Episode 65',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-65'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-65.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3838'),
  'video-3838',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-67'),
  'Episode 67',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3838'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-67.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2015'),
  'video-2015',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-62'),
  'Episode 62',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2015'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-62.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2301'),
  'video-2301',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-episode-129'),
  'Episode 129',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2301'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-129.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1452'),
  'video-1452',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-62'),
  'Episode 62',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1452'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-62.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-867'),
  'video-867',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-57'),
  'Episode 57',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-867'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-765'),
  'video-765',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-6'),
  'Episode 6',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-765'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-70.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-775'),
  'video-775',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-10'),
  'Episode 10',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-775'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-10.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-799'),
  'video-799',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-62'),
  'Episode 62',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-799'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-62.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4037'),
  'video-4037',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-82'),
  'Episode 82',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1779815026.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4037'),
  'https://video.twimg.com/amplify_video/2061978190084509696/pl/0W7UOPjCFQ5qyfFo.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3454'),
  'video-3454',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-63'),
  'Episode 63',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3454'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-63.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2699'),
  'video-2699',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-63'),
  'Episode 63',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2699'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-63.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2931'),
  'video-2931',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-159'),
  'Episode 159',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1715186678.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2931'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-159.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1109'),
  'video-1109',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-63'),
  'Episode 63',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1109'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-63.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-706'),
  'video-706',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-16'),
  'Episode 16',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-706'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-16.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-272'),
  'video-272',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-63'),
  'Episode 63',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-272'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-63.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-86'),
  'video-86',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-6'),
  'Episode 6',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-86'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-6.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-66'),
  'video-66',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-66'),
  'Episode 66',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-66'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-66.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3839'),
  'video-3839',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-68'),
  'Episode 68',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3839'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-68.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2018'),
  'video-2018',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-63'),
  'Episode 63',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2018'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-63.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2317'),
  'video-2317',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-episode-130'),
  'Episode 130',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2317'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-130.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1458'),
  'video-1458',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-63'),
  'Episode 63',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1458'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-63.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-868'),
  'video-868',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-58'),
  'Episode 58',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-868'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-768'),
  'video-768',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-7'),
  'Episode 7',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-768'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-71.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-779'),
  'video-779',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-11'),
  'Episode 11',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-779'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-11.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-800'),
  'video-800',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-63'),
  'Episode 63',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-800'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-63.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4042'),
  'video-4042',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-83'),
  'Episode 83',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1781030175.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4042'),
  'https://video.twimg.com/amplify_video/2064530881759363072/pl/N6xbRCafQZeoCz99.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3455'),
  'video-3455',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-64'),
  'Episode 64',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3455'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-64.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2703'),
  'video-2703',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-64'),
  'Episode 64',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2703'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-64.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2946'),
  'video-2946',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-160'),
  'Episode 160',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1715791799.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2946'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-160.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1110'),
  'video-1110',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-64'),
  'Episode 64',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1110'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-64.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-707'),
  'video-707',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-17'),
  'Episode 17',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-707'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-17.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-273'),
  'video-273',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-64'),
  'Episode 64',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-273'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-64.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-87'),
  'video-87',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-7'),
  'Episode 7',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-87'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-7.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-67'),
  'video-67',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-67'),
  'Episode 67',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-67'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-67.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3840'),
  'video-3840',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-69'),
  'Episode 69',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3840'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-69.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2019'),
  'video-2019',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-64'),
  'Episode 64',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2019'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-64.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2318'),
  'video-2318',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-episode-130'),
  'Episode 130',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2318'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-130.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1462'),
  'video-1462',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-64'),
  'Episode 64',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1462'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-64.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-869'),
  'video-869',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-59'),
  'Episode 59',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-869'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-769'),
  'video-769',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-7'),
  'Episode 7',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-769'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-71.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-780'),
  'video-780',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-11'),
  'Episode 11',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-780'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-11.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-801'),
  'video-801',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-64'),
  'Episode 64',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-801'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-64.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4043'),
  'video-4043',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-83'),
  'Episode 83',
  3,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1781030374.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4043'),
  'https://video.twimg.com/amplify_video/2064532350093213696/pl/fnki8OYRQzNY3Lxj.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3456'),
  'video-3456',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-65'),
  'Episode 65',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3456'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-65.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2706'),
  'video-2706',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-65'),
  'Episode 65',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2706'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-65.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2947'),
  'video-2947',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-160'),
  'Episode 160',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1715792213.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2947'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-160.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1111'),
  'video-1111',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-65'),
  'Episode 65',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1111'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-65.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-708'),
  'video-708',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-18'),
  'Episode 18',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-708'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-18.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-274'),
  'video-274',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-65'),
  'Episode 65',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-274'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-65.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-88'),
  'video-88',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-8'),
  'Episode 8',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-88'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-8.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-68'),
  'video-68',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-68'),
  'Episode 68',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-68'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-68.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3841'),
  'video-3841',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-70'),
  'Episode 70',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3841'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-70.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2026'),
  'video-2026',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-65'),
  'Episode 65',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2026'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-65.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1468'),
  'video-1468',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-65'),
  'Episode 65',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1468'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-65.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-870'),
  'video-870',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-60'),
  'Episode 60',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-870'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-772'),
  'video-772',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-8'),
  'Episode 8',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-772'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-72.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-802'),
  'video-802',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-65'),
  'Episode 65',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-802'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-65.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3457'),
  'video-3457',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-66'),
  'Episode 66',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3457'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-66.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2708'),
  'video-2708',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-66'),
  'Episode 66',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2708'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-66.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2972'),
  'video-2972',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-161'),
  'Episode 161',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1716398803.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2972'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-161.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1112'),
  'video-1112',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-66'),
  'Episode 66',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1112'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-66.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-709'),
  'video-709',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-19'),
  'Episode 19',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-709'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-19.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-275'),
  'video-275',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-66'),
  'Episode 66',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-275'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-66.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-89'),
  'video-89',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-9'),
  'Episode 9',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-89'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-9.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-69'),
  'video-69',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-69'),
  'Episode 69',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-69'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-69.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3842'),
  'video-3842',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-71'),
  'Episode 71',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3842'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-71.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2027'),
  'video-2027',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-66'),
  'Episode 66',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2027'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-66.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1474'),
  'video-1474',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-66'),
  'Episode 66',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1474'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-66.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-871'),
  'video-871',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-61'),
  'Episode 61',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-871'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-61.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-773'),
  'video-773',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-8'),
  'Episode 8',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-773'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-72.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-803'),
  'video-803',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-66'),
  'Episode 66',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-803'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-66.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3458'),
  'video-3458',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-67'),
  'Episode 67',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3458'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-67.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2709'),
  'video-2709',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-67'),
  'Episode 67',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2709'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-67.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2973'),
  'video-2973',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-161'),
  'Episode 161',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1716399586.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2973'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-161.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1113'),
  'video-1113',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-67'),
  'Episode 67',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1113'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-67.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-975'),
  'video-975',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-20'),
  'Episode 20',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-975'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-20.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-276'),
  'video-276',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-67'),
  'Episode 67',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-276'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-67.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-90'),
  'video-90',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-10'),
  'Episode 10',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-90'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-10.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-7'),
  'video-7',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-7'),
  'Episode 7',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-7'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-7.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3843'),
  'video-3843',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-72'),
  'Episode 72',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3843'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-72.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2029'),
  'video-2029',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-67'),
  'Episode 67',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2029'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-67.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1475'),
  'video-1475',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-67'),
  'Episode 67',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1475'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-67.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-872'),
  'video-872',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-62'),
  'Episode 62',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-872'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-62.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-777'),
  'video-777',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-9'),
  'Episode 9',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-777'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-73.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-804'),
  'video-804',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-67'),
  'Episode 67',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-804'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-67.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3459'),
  'video-3459',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-68'),
  'Episode 68',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3459'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-68.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2710'),
  'video-2710',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-68'),
  'Episode 68',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2710'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-68.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2989'),
  'video-2989',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-162'),
  'Episode 162',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1717027910.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2989'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-162.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1114'),
  'video-1114',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-68'),
  'Episode 68',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1114'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-68.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-976'),
  'video-976',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-21'),
  'Episode 21',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-976'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-21.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-277'),
  'video-277',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-68'),
  'Episode 68',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-277'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-68.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-91'),
  'video-91',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-11'),
  'Episode 11',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-91'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-11.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-70'),
  'video-70',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-70'),
  'Episode 70',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-70'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-70.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3844'),
  'video-3844',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-73'),
  'Episode 73',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3844'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-73.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2032'),
  'video-2032',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-68'),
  'Episode 68',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2032'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-68.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1478'),
  'video-1478',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-68'),
  'Episode 68',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1478'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-68.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-873'),
  'video-873',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-63'),
  'Episode 63',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-873'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-63.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-778'),
  'video-778',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-9'),
  'Episode 9',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-778'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-73.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-805'),
  'video-805',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-68'),
  'Episode 68',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-805'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-68.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3460'),
  'video-3460',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-69'),
  'Episode 69',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3460'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-69.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2711'),
  'video-2711',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-69'),
  'Episode 69',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2711'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-69.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2990'),
  'video-2990',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-162'),
  'Episode 162',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1717028213.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2990'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-162.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1115'),
  'video-1115',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-69'),
  'Episode 69',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1115'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-69.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-977'),
  'video-977',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-22'),
  'Episode 22',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-977'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-22.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-278'),
  'video-278',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-69'),
  'Episode 69',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-278'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-69.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-92'),
  'video-92',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-12'),
  'Episode 12',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-92'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-12.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-71'),
  'video-71',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-71'),
  'Episode 71',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-71'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-71.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3845'),
  'video-3845',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-74'),
  'Episode 74',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3845'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-74.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2043'),
  'video-2043',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-69'),
  'Episode 69',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2043'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-69.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1481'),
  'video-1481',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-69'),
  'Episode 69',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1481'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-69.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-874'),
  'video-874',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-64'),
  'Episode 64',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-874'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-64.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3461'),
  'video-3461',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-70'),
  'Episode 70',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3461'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-70.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2712'),
  'video-2712',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-70'),
  'Episode 70',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1706193682.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2712'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-70.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3003'),
  'video-3003',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-163'),
  'Episode 163',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1717609119.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3003'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-163.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1116'),
  'video-1116',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-70'),
  'Episode 70',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1116'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-70.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-978'),
  'video-978',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-23'),
  'Episode 23',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-978'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-23.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-279'),
  'video-279',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-70'),
  'Episode 70',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-279'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-70.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-93'),
  'video-93',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-13'),
  'Episode 13',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-93'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-13.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-72'),
  'video-72',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-72'),
  'Episode 72',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-72'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-72.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;
