-- Video Variants Chunk 4

INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3424'),
  'video-3424',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-176'),
  'Episode 176',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1735154659.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3424'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-176.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3560'),
  'video-3560',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-135'),
  'Episode 135',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1741537355.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3560'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-135.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3211'),
  'video-3211',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-65-episode-24'),
  'Episode 24',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1726053110.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3211'),
  'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3206'),
  'video-3206',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-116'),
  'Episode 116',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1725679630.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3206'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-116.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2617'),
  'video-2617',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-24'),
  'Episode 24',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1703222099.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2617'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2848'),
  'video-2848',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-59'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-59-episode-91'),
  'Episode 91',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1712661479.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2848'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-91.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2589'),
  'video-2589',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-140'),
  'Episode 140',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1702309693.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2589'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-140.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2862'),
  'video-2862',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-103'),
  'Episode 103',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1713112505.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2862'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-103.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1070'),
  'video-1070',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-24'),
  'Episode 24',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1070'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1023'),
  'video-1023',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-68'),
  'Episode 68',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1023'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-68.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-233'),
  'video-233',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-24'),
  'Episode 24',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-233'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-123'),
  'video-123',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-123'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-30'),
  'video-30',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-30'),
  'Episode 30',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-30'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-30.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3800'),
  'video-3800',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-29'),
  'Episode 29',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3800'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2509'),
  'video-2509',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-57'),
  'Episode 57',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2509'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2827'),
  'video-2827',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-45'),
  'Episode 45',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1711813891.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2827'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-45-RP.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2411'),
  'video-2411',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-24'),
  'Episode 24',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1689509043.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2411'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1945'),
  'video-1945',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-24'),
  'Episode 24',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1945'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2117'),
  'video-2117',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-44'),
  'Episode 12 · Bolum 44',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2117'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-12.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2171'),
  'video-2171',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-72'),
  'Episode 72',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1667824028.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2171'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-72.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1900'),
  'video-1900',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-110'),
  'Episode 12 · Bolum 110',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1900'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-110.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1959'),
  'video-1959',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-43'),
  'Episode 16 · Bolum 43',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1959'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1894'),
  'video-1894',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-74'),
  'Episode 74',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1894'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-74.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1354'),
  'video-1354',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-24'),
  'Episode 24',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1354'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1564'),
  'video-1564',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-38'),
  'Episode 38',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1564'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-38.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1449'),
  'video-1449',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-33'),
  'Episode 33',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1449'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-33.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1729'),
  'video-1729',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-28-episode-24'),
  'Episode 24',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638677759.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1729'),
  'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1456'),
  'video-1456',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-12'),
  'Episode 12',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1456'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-12.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-826'),
  'video-826',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-19'),
  'Episode 19',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-826'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-19.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1555'),
  'video-1555',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-21'),
  'Episode 21',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1555'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-85.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1558'),
  'video-1558',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-23'),
  'Episode 23',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1558'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-23.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-668'),
  'video-668',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-24'),
  'Episode 24',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-668'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-535'),
  'video-535',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-112'),
  'Episode 112',
  4,
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-535'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-112.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-501'),
  'video-501',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-78'),
  'Episode 78',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-501'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-78.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-430'),
  'video-430',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-38'),
  'Episode 38',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-430'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/38.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-353'),
  'video-353',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-24'),
  'Episode 24',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-353'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-583'),
  'video-583',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-24'),
  'Episode 24',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-583'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-205'),
  'video-205',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-7'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-7-episode-24'),
  'Episode 24',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612535417.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-205'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3963'),
  'video-3963',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-bolum-13'),
  'Episode 13 · Bolum 13',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1770135714.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3963'),
  'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-13.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3994'),
  'video-3994',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-episode-173'),
  'Episode 173',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1773594344.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3994'),
  'https://video.twimg.com/amplify_video/2033593145192058880/pl/cQl1KHZ9X5q8WnND.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3939'),
  'video-3939',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-63'),
  'Episode 63 · Bolum 63',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1766508050.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3939'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-63.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3323'),
  'video-3323',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-25'),
  'Episode 25',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3323'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3474'),
  'video-3474',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-41'),
  'Episode 41',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1737391010.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3474'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-41_540.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3430'),
  'video-3430',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-177'),
  'Episode 177',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1735744805.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3430'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-177.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3567'),
  'video-3567',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-136'),
  'Episode 136',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1742146702.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3567'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-136.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3215'),
  'video-3215',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-65-episode-25'),
  'Episode 25',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1726646805.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3215'),
  'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3209'),
  'video-3209',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-117'),
  'Episode 117',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1725793603.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3209'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-117.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2619'),
  'video-2619',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-25'),
  'Episode 25',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1703222099.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2619'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2853'),
  'video-2853',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-59'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-59-episode-92'),
  'Episode 92',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1712750651.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2853'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-92.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2590'),
  'video-2590',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-140'),
  'Episode 140',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1702310479.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2590'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-140.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2886'),
  'video-2886',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-104'),
  'Episode 104',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1713717527.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2886'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-104.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1071'),
  'video-1071',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-25'),
  'Episode 25',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1071'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1024'),
  'video-1024',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-69'),
  'Episode 69',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1024'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-69.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-234'),
  'video-234',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-25'),
  'Episode 25',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-234'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-124'),
  'video-124',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-44'),
  'Episode 44',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-124'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-31'),
  'video-31',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-31'),
  'Episode 31',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-31'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-31.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3801'),
  'video-3801',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-30'),
  'Episode 30',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3801'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-30.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2510'),
  'video-2510',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-58'),
  'Episode 58',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2510'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2849'),
  'video-2849',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-46'),
  'Episode 46',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1712664177.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2849'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-46-RP.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2412'),
  'video-2412',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-25'),
  'Episode 25',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1689509043.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2412'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1948'),
  'video-1948',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-25'),
  'Episode 25',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1948'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2140'),
  'video-2140',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-45'),
  'Episode 13 · Bolum 45',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2140'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-13.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2193'),
  'video-2193',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-73'),
  'Episode 73',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1667824028.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2193'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-73.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1901'),
  'video-1901',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-111'),
  'Episode 13 · Bolum 111',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1901'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-111.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1974'),
  'video-1974',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  NULL,
  'Unavailable record 1974',
  NULL,
  '{}',
  'subtitled',
  'published',
  NULL,
  NULL
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1909'),
  'video-1909',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-75'),
  'Episode 75',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1909'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-75.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1355'),
  'video-1355',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-25'),
  'Episode 25',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1355'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1581'),
  'video-1581',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-39'),
  'Episode 39',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1581'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-39.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1477'),
  'video-1477',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-34'),
  'Episode 34',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1477'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-34.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1745'),
  'video-1745',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-28-episode-25'),
  'Episode 25',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638677759.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1745'),
  'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1482'),
  'video-1482',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-13'),
  'Episode 13',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1482'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-13.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-827'),
  'video-827',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-20'),
  'Episode 20',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-827'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-20.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1573'),
  'video-1573',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-22'),
  'Episode 22',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1573'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-86.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1592'),
  'video-1592',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-24'),
  'Episode 24',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1592'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-669'),
  'video-669',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-25'),
  'Episode 25',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-669'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-536'),
  'video-536',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-113'),
  'Episode 113',
  4,
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-536'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-113.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-502'),
  'video-502',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-79'),
  'Episode 79',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-502'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-79.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-431'),
  'video-431',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-39'),
  'Episode 39',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-431'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/39.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-354'),
  'video-354',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-25'),
  'Episode 25',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-354'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-586'),
  'video-586',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-25'),
  'Episode 25',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-586'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-206'),
  'video-206',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-7'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-7-episode-25'),
  'Episode 25',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612535417.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-206'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3964'),
  'video-3964',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-bolum-13'),
  'Episode 13 · Bolum 13',
  1,
  '{"English"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1770136144.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3964'),
  'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-13.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3997'),
  'video-3997',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-episode-174'),
  'Episode 174',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1774275943.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3997'),
  'https://video.twimg.com/amplify_video/2036089447532707840/pl/0NBKi5QhBuD0Ovex.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3940'),
  'video-3940',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-63'),
  'Episode 63 · Bolum 63',
  3,
  '{"English"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1766508326.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3940'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-63.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3324'),
  'video-3324',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-26'),
  'Episode 26',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3324'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3475'),
  'video-3475',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-41'),
  'Episode 41',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1737391201.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3475'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3431'),
  'video-3431',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-177'),
  'Episode 177',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1735745456.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3431'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-177.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3575'),
  'video-3575',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-137'),
  'Episode 137',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1742731728.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3575'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-137.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3216'),
  'video-3216',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-65-episode-26'),
  'Episode 26',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1726646853.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3216'),
  'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3213'),
  'video-3213',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-118'),
  'Episode 118',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1726411768.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3213'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-118.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2620'),
  'video-2620',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-26'),
  'Episode 26',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1703222099.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2620'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2601'),
  'video-2601',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-141'),
  'Episode 141',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1702912533.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2601'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-141.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2904'),
  'video-2904',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-105'),
  'Episode 105',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1714324762.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2904'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-105.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1072'),
  'video-1072',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-26'),
  'Episode 26',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1072'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1025'),
  'video-1025',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-70'),
  'Episode 70',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1025'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-70.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-235'),
  'video-235',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-26'),
  'Episode 26',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-235'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-125'),
  'video-125',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-45'),
  'Episode 45',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-125'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-32'),
  'video-32',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-32'),
  'Episode 32',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-32'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-32.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3802'),
  'video-3802',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-31'),
  'Episode 31',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3802'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-31.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2513'),
  'video-2513',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-59'),
  'Episode 59',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2513'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-59.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2860'),
  'video-2860',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-47'),
  'Episode 47',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1713002910.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2860'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-47-RP.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2413'),
  'video-2413',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-26'),
  'Episode 26',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1689509043.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2413'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1950'),
  'video-1950',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-26'),
  'Episode 26',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1950'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2141'),
  'video-2141',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-45'),
  'Episode 13 · Bolum 45',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2141'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-13.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2210'),
  'video-2210',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-74'),
  'Episode 74',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1667824028.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2210'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-74.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1902'),
  'video-1902',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-111'),
  'Episode 13 · Bolum 111',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1902'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-111.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1975'),
  'video-1975',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-44'),
  'Episode 17 · Bolum 44',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1975'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1922'),
  'video-1922',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-76'),
  'Episode 76',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1922'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-76.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1356'),
  'video-1356',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-26'),
  'Episode 26',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1356'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1598'),
  'video-1598',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-40'),
  'Episode 40',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1598'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-40.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1498'),
  'video-1498',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-35'),
  'Episode 35',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1498'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-35.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1758'),
  'video-1758',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-28-episode-26'),
  'Episode 26',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638677759.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1758'),
  'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1483'),
  'video-1483',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-13'),
  'Episode 13',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1483'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-13.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-828'),
  'video-828',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-21'),
  'Episode 21',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-828'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-21.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1574'),
  'video-1574',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-22'),
  'Episode 22',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1574'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-86.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1593'),
  'video-1593',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-24'),
  'Episode 24',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1593'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-670'),
  'video-670',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-26'),
  'Episode 26',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-670'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-537'),
  'video-537',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-114'),
  'Episode 114',
  4,
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-537'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-114.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-503'),
  'video-503',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-80'),
  'Episode 80',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-503'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-80.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-432'),
  'video-432',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-40'),
  'Episode 40',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-432'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/40.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-355'),
  'video-355',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-26'),
  'Episode 26',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-355'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-603'),
  'video-603',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-26'),
  'Episode 26',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-603'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-53.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-207'),
  'video-207',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-7'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-7-episode-26'),
  'Episode 26',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612535417.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-207'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3969'),
  'video-3969',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-bolum-14'),
  'Episode 14 · Bolum 14',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1770827662.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3969'),
  'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-14.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4002'),
  'video-4002',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-episode-175'),
  'Episode 175',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1774802135.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4002'),
  'https://video.twimg.com/amplify_video/2063092244589203456/pl/JAsIkEviy6DCVWsh.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3946'),
  'video-3946',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-64'),
  'Episode 64 · Bolum 64',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1767768929.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3946'),
  'https://fift.larhu.website/hls/vxzxga5cqoqfycihmtk7zqpejasratwukechwtq3rbthm4ualqou5kkuud5a/index-v1-a1.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3392'),
  'video-3392',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-27'),
  'Episode 27',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3392'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3481'),
  'video-3481',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-42'),
  'Episode 42',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1737993095.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3481'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-42.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3478'),
  'video-3478',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-178'),
  'Episode 178',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1737560149.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3478'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-178.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3609'),
  'video-3609',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-138'),
  'Episode 138',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1743384414.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3609'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-138.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3221'),
  'video-3221',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-65-episode-27'),
  'Episode 27',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1727422024.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3221'),
  'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3214'),
  'video-3214',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-119'),
  'Episode 119',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1726412059.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3214'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-119.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2624'),
  'video-2624',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-27'),
  'Episode 27',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1703222099.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2624'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2602'),
  'video-2602',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-bolum-141'),
  'Bolum 141',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1702913626.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2602'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-141.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2919'),
  'video-2919',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-106'),
  'Episode 106',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1714931030.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2919'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-106.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1073'),
  'video-1073',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-27'),
  'Episode 27',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1073'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1026'),
  'video-1026',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-71'),
  'Episode 71',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1026'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-71.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-236'),
  'video-236',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-27'),
  'Episode 27',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-236'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-126'),
  'video-126',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-46'),
  'Episode 46',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-126'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-33'),
  'video-33',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-33'),
  'Episode 33',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-33'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-33.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3803'),
  'video-3803',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-32'),
  'Episode 32',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3803'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-32.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2514'),
  'video-2514',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-60'),
  'Episode 60',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2514'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-60.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2880'),
  'video-2880',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-48'),
  'Episode 48',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1713575004.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2880'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-48-RP.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2414'),
  'video-2414',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-27'),
  'Episode 27',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1689509043.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2414'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1953'),
  'video-1953',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-27'),
  'Episode 27',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1953'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2164'),
  'video-2164',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-46'),
  'Episode 14 · Bolum 46',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2164'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-14.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2224'),
  'video-2224',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-75'),
  'Episode 75',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1667824028.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2224'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-75.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1916'),
  'video-1916',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-112'),
  'Episode 14 · Bolum 112',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1916'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-112.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2024'),
  'video-2024',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-45'),
  'Episode 18 · Bolum 45',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2024'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1938'),
  'video-1938',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-77'),
  'Episode 77',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1938'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-77.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1359'),
  'video-1359',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-27'),
  'Episode 27',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1359'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1619'),
  'video-1619',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-41'),
  'Episode 41',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1619'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1521'),
  'video-1521',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-36'),
  'Episode 36',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1521'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-36.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1770'),
  'video-1770',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-28-episode-27'),
  'Episode 27',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638677759.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1770'),
  'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1504'),
  'video-1504',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-14'),
  'Episode 14',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1504'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-14.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-829'),
  'video-829',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-22'),
  'Episode 22',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-829'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-22.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1589'),
  'video-1589',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-23'),
  'Episode 23',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1589'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-87.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1609'),
  'video-1609',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-25'),
  'Episode 25',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1609'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-671'),
  'video-671',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-27'),
  'Episode 27',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-671'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-538'),
  'video-538',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-115'),
  'Episode 115',
  4,
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-538'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-115.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-504'),
  'video-504',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-81'),
  'Episode 81',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-504'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-81.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-433'),
  'video-433',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-41'),
  'Episode 41',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-433'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-356'),
  'video-356',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-27'),
  'Episode 27',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-356'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-604'),
  'video-604',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-27'),
  'Episode 27',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-604'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-54.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-208'),
  'video-208',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-7'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-7-episode-27'),
  'Episode 27',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1612535417.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-208'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3970'),
  'video-3970',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-bolum-14'),
  'Episode 14 · Bolum 14',
  1,
  '{"English"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1770827923.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3970'),
  'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-14.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4007'),
  'video-4007',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-episode-176'),
  'Episode 176',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1775409177.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4007'),
  'https://video.twimg.com/amplify_video/2041058582276329472/pl/3_8lZpU5UusUvgav.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3948'),
  'video-3948',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-65'),
  'Episode 65 · Bolum 65',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1768319004.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3948'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-65.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3393'),
  'video-3393',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-28'),
  'Episode 28',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3393'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3482'),
  'video-3482',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-42'),
  'Episode 42',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1737993360.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3482'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3479'),
  'video-3479',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-178'),
  'Episode 178',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1737561325.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3479'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-178.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3616'),
  'video-3616',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-139'),
  'Episode 139',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1744561514.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3616'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-139.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3233'),
  'video-3233',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-65-episode-28'),
  'Episode 28',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1728387791.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3233'),
  'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3217'),
  'video-3217',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-120'),
  'Episode 120',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1726902576.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3217'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-120.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2625'),
  'video-2625',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-28'),
  'Episode 28',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1703222099.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2625'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2610'),
  'video-2610',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-142'),
  'Episode 142',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1703308378.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2610'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-142.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2937'),
  'video-2937',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-107'),
  'Episode 107',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1715606462.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2937'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-107.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1074'),
  'video-1074',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-28'),
  'Episode 28',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1074'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1027'),
  'video-1027',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-72'),
  'Episode 72',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1027'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-72.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-237'),
  'video-237',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-28'),
  'Episode 28',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-237'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-127'),
  'video-127',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-47'),
  'Episode 47',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-127'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-34'),
  'video-34',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-34'),
  'Episode 34',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-34'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-34.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3804'),
  'video-3804',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-33'),
  'Episode 33',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3804'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-33.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2515'),
  'video-2515',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-61'),
  'Episode 61',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2515'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-61.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2881'),
  'video-2881',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-49'),
  'Episode 49',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1713575912.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2881'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-49-RP.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2417'),
  'video-2417',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-28'),
  'Episode 28',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1689509043.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2417'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1954'),
  'video-1954',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-28'),
  'Episode 28',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1954'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2165'),
  'video-2165',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-46'),
  'Episode 14 · Bolum 46',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2165'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-14.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2293'),
  'video-2293',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-76'),
  'Episode 76',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1667824028.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2293'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-76.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1930'),
  'video-1930',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-112'),
  'Episode 14 · Bolum 112',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1930'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-112.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2025'),
  'video-2025',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-45'),
  'Episode 18 · Bolum 45',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2025'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1955'),
  'video-1955',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-78'),
  'Episode 78',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1955'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-78.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1360'),
  'video-1360',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-28'),
  'Episode 28',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1360'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1631'),
  'video-1631',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-42'),
  'Episode 42',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1631'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1544'),
  'video-1544',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-37'),
  'Episode 37',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1544'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-37.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1806'),
  'video-1806',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-28-episode-28'),
  'Episode 28',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1638677759.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1806'),
  'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1505'),
  'video-1505',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-14'),
  'Episode 14',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1505'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-14.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-830'),
  'video-830',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-23'),
  'Episode 23',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-830'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-23.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1590'),
  'video-1590',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-23'),
  'Episode 23',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1590'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-87.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1610'),
  'video-1610',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-25'),
  'Episode 25',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1610'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-672'),
  'video-672',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-28'),
  'Episode 28',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-672'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-539'),
  'video-539',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-116'),
  'Episode 116',
  4,
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-539'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-116.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-505'),
  'video-505',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-82'),
  'Episode 82',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-505'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-82.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-434'),
  'video-434',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-42'),
  'Episode 42',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-434'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-357'),
  'video-357',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-28'),
  'Episode 28',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-357'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-607'),
  'video-607',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-28'),
  'Episode 28',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-607'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-55.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3976'),
  'video-3976',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-bolum-15'),
  'Episode 15 · Bolum 15',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1771463547.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3976'),
  'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-15.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4012'),
  'video-4012',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-episode-177'),
  'Episode 177',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1776013863.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4012'),
  'https://video.twimg.com/amplify_video/2043641798065614848/pl/EpYk-XyDwdI8X7ud.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3949'),
  'video-3949',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-65'),
  'Episode 65 · Bolum 65',
  3,
  '{"English"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1768319191.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3949'),
  'https://cdn10.niaziplay.com:8443/NiaziPlay/Mehmed-Fetihler-Sultani/Urdu/S2/cs.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3394'),
  'video-3394',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-29'),
  'Episode 29',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3394'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3484'),
  'video-3484',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-43'),
  'Episode 43',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1738600673.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3484'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-43.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3488'),
  'video-3488',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-179'),
  'Episode 179',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1738777944.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3488'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-179.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3653'),
  'video-3653',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-140'),
  'Episode 140',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1745157092.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3653'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-140.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3273'),
  'video-3273',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-65-episode-29'),
  'Episode 29',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1730611029.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3273'),
  'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3218'),
  'video-3218',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-121'),
  'Episode 121',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1726904019.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3218'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-121.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2629'),
  'video-2629',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-29'),
  'Episode 29',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1703222099.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2629'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2618'),
  'video-2618',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-bolum-142'),
  'Bolum 142',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1703694066.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2618'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-142.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2964'),
  'video-2964',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-108'),
  'Episode 108',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1716142896.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2964'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-108.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1075'),
  'video-1075',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-29'),
  'Episode 29',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1075'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1028'),
  'video-1028',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-73'),
  'Episode 73',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1028'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-73.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-238'),
  'video-238',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-29'),
  'Episode 29',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-238'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-128'),
  'video-128',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-48'),
  'Episode 48',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-128'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-35'),
  'video-35',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-35'),
  'Episode 35',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-35'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-35.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3805'),
  'video-3805',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-34'),
  'Episode 34',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3805'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-34.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2520'),
  'video-2520',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-62'),
  'Episode 62',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2520'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-62.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2899'),
  'video-2899',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-50'),
  'Episode 50',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1714132745.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2899'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-50-RP.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2445'),
  'video-2445',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-29'),
  'Episode 29',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1689509043.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2445'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1957'),
  'video-1957',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-29'),
  'Episode 29',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1957'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2205'),
  'video-2205',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-47'),
  'Episode 15 · Bolum 47',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2205'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-15.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2310'),
  'video-2310',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-77'),
  'Episode 77',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1667824028.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2310'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-77.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1946'),
  'video-1946',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-113'),
  'Episode 15 · Bolum 113',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1946'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-113.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2046'),
  'video-2046',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-46'),
  'Episode 19 · Bolum 46',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2046'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1971'),
  'video-1971',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-79'),
  'Episode 79',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1971'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-79.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1362'),
  'video-1362',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-29'),
  'Episode 29',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1362'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1648'),
  'video-1648',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-43'),
  'Episode 43',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1648'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1561'),
  'video-1561',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-38'),
  'Episode 38',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1561'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-38.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1526'),
  'video-1526',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-15'),
  'Episode 15',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1526'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-15.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-831'),
  'video-831',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-24'),
  'Episode 24',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-831'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1605'),
  'video-1605',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-24'),
  'Episode 24',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1605'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-88.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1625'),
  'video-1625',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-26'),
  'Episode 26',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1625'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-673'),
  'video-673',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-29'),
  'Episode 29',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-673'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-540'),
  'video-540',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-117'),
  'Episode 117',
  4,
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-540'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-117.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-506'),
  'video-506',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-83'),
  'Episode 83',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-506'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-83.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-435'),
  'video-435',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-43'),
  'Episode 43',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-435'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-358'),
  'video-358',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-29'),
  'Episode 29',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-358'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-624'),
  'video-624',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-29'),
  'Episode 29',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-624'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S2/Episode-56.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3977'),
  'video-3977',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-bolum-15'),
  'Episode 15 · Bolum 15',
  1,
  '{"English"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1771464007.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3977'),
  'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-15.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4017'),
  'video-4017',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-episode-178'),
  'Episode 178',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1776697850.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4017'),
  'https://video.twimg.com/amplify_video/2048720686391103488/pl/G5Y4Hn8LSFztVLUI.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3951'),
  'video-3951',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-66'),
  'Episode 66 · Bolum 66',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1768928084.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3951'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-66.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3395'),
  'video-3395',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-30'),
  'Episode 30',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3395'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-30.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3485'),
  'video-3485',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-43'),
  'Episode 43',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1738601285.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3485'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3489'),
  'video-3489',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-179'),
  'Episode 179',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1738778413.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3489'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-179.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3660'),
  'video-3660',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-141'),
  'Episode 141',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1745775218.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3660'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-141.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3223'),
  'video-3223',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-122'),
  'Episode 122',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1727537308.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3223'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-122.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2630'),
  'video-2630',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-30'),
  'Episode 30',
  5,
  '{"Urdu"}',
  'dubbed',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1703222099.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2630'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-30.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2623'),
  'video-2623',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-143'),
  'Episode 143',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1703865205.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2623'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-143.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2981'),
  'video-2981',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-109'),
  'Episode 109',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1716775395.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2981'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-109.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1076'),
  'video-1076',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-30'),
  'Episode 30',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1076'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-30.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1029'),
  'video-1029',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-74'),
  'Episode 74',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1029'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-74.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-239'),
  'video-239',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-30'),
  'Episode 30',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-239'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-30.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-129'),
  'video-129',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-49'),
  'Episode 49',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-129'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-49.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-36'),
  'video-36',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-36'),
  'Episode 36',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-36'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-36.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3806'),
  'video-3806',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-35'),
  'Episode 35',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3806'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-35.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2521'),
  'video-2521',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-63'),
  'Episode 63',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2521'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-63.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2915'),
  'video-2915',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-51'),
  'Episode 51',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1714732438.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2915'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-51-RP.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2446'),
  'video-2446',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-30'),
  'Episode 30',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1689509043.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2446'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-30.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1960'),
  'video-1960',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-30'),
  'Episode 30',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1960'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-30.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2206'),
  'video-2206',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-47'),
  'Episode 15 · Bolum 47',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2206'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-15.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2328'),
  'video-2328',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-78'),
  'Episode 78',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1667824028.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2328'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-78.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1947'),
  'video-1947',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-113'),
  'Episode 15 · Bolum 113',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1947'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-113.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2047'),
  'video-2047',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-46'),
  'Episode 19 · Bolum 46',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2047'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1984'),
  'video-1984',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-80'),
  'Episode 80',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1984'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-80.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1365'),
  'video-1365',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-30'),
  'Episode 30',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1365'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-30.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1663'),
  'video-1663',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-44'),
  'Episode 44',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1663'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1579'),
  'video-1579',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-39'),
  'Episode 39',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1579'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-39.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1527'),
  'video-1527',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-15'),
  'Episode 15',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1527'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-15.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-832'),
  'video-832',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-25'),
  'Episode 25',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-832'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1607'),
  'video-1607',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-24'),
  'Episode 24',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1607'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-88.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1626'),
  'video-1626',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-26'),
  'Episode 26',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1626'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-674'),
  'video-674',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-30'),
  'Episode 30',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-674'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-30.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-541'),
  'video-541',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-118'),
  'Episode 118',
  4,
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-541'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-118.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-507'),
  'video-507',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-84'),
  'Episode 84',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-507'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-84.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-436'),
  'video-436',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-44'),
  'Episode 44',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-436'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-359'),
  'video-359',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-30'),
  'Episode 30',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-359'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/30.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-625'),
  'video-625',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-29'),
  'Episode 29',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-625'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-56.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3982'),
  'video-3982',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-bolum-16'),
  'Episode 16 · Bolum 16',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1772039403.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3982'),
  'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-16.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4022'),
  'video-4022',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-episode-179'),
  'Episode 179',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1777871653.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4022'),
  'https://video.twimg.com/amplify_video/2051279056784515072/pl/Ysi840TmlwGiD67t.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3952'),
  'video-3952',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-66'),
  'Episode 66 · Bolum 66',
  3,
  '{"English"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1768928261.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3952'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-66.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3396'),
  'video-3396',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-31'),
  'Episode 31',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3396'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-31.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3491'),
  'video-3491',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-44'),
  'Episode 44',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1739206185.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3491'),
  'https://cdn4.urduflix.pk/Turkish-Dramas-NiaziTV-App/AYU/Episode-44.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3495'),
  'video-3495',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-180'),
  'Episode 180',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1739374728.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3495'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-180.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3667'),
  'video-3667',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-142'),
  'Episode 142',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1746376243.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3667'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-142.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3228'),
  'video-3228',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-123'),
  'Episode 123',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1728128607.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3228'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-123.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2631'),
  'video-2631',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-31'),
  'Episode 31',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2631'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-31.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2632'),
  'video-2632',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-bolum-143'),
  'Bolum 143',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1704296179.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2632'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-143.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2995'),
  'video-2995',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-110'),
  'Episode 110',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1717349715.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2995'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-110.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1077'),
  'video-1077',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-31'),
  'Episode 31',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1077'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-31.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1030'),
  'video-1030',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-75'),
  'Episode 75',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1030'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-75.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-240'),
  'video-240',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-31'),
  'Episode 31',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-240'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-31.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-130'),
  'video-130',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-50'),
  'Episode 50',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-130'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-50.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-37'),
  'video-37',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-37'),
  'Episode 37',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-37'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-37.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3807'),
  'video-3807',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-36'),
  'Episode 36',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3807'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-36.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2525'),
  'video-2525',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-64'),
  'Episode 64',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2525'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-64.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2933'),
  'video-2933',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-52'),
  'Episode 52',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1715349245.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2933'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-52-RP.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2447'),
  'video-2447',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-31'),
  'Episode 31',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1689509043.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2447'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-31.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1961'),
  'video-1961',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-31'),
  'Episode 31',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1961'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-31.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2222'),
  'video-2222',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-48'),
  'Episode 16 · Bolum 48',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2222'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-16.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2342'),
  'video-2342',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-79'),
  'Episode 79',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1667824028.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2342'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-79.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1949'),
  'video-1949',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-114'),
  'Bolum 114',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1949'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-114.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2061'),
  'video-2061',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-47'),
  'Episode 20 · Bolum 47',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2061'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1994'),
  'video-1994',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-81'),
  'Episode 81',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1994'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-81.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1366'),
  'video-1366',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-31'),
  'Episode 31',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1366'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-31.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1688'),
  'video-1688',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-45'),
  'Episode 45',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1688'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1596'),
  'video-1596',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-40'),
  'Episode 40',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1596'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-40.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1548'),
  'video-1548',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-16'),
  'Episode 16',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1548'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-16.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-833'),
  'video-833',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-26'),
  'Episode 26',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-833'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1622'),
  'video-1622',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-25'),
  'Episode 25',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1622'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-89.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1642'),
  'video-1642',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-27'),
  'Episode 27',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1642'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-675'),
  'video-675',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-31'),
  'Episode 31',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-675'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-31.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-542'),
  'video-542',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-119'),
  'Episode 119',
  4,
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-542'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-119.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-508'),
  'video-508',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-85'),
  'Episode 85',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-508'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-85.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-437'),
  'video-437',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-45'),
  'Episode 45',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-437'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/45.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-360'),
  'video-360',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-31'),
  'Episode 31',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-360'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/31.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-626'),
  'video-626',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-30'),
  'Episode 30',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-626'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S2/Episode-57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3983'),
  'video-3983',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-bolum-16'),
  'Episode 16 · Bolum 16',
  1,
  '{"English"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1772039882.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3983'),
  'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-16.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4027'),
  'video-4027',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-episode-180'),
  'Episode 180',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1778497336.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4027'),
  'https://video.twimg.com/amplify_video/2056272293660110848/pl/k7Fnqo8cANkI75zr.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3956'),
  'video-3956',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-67'),
  'Episode 67 · Bolum 67',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1769533575.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3956'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-67.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3397'),
  'video-3397',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-32'),
  'Episode 32',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3397'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-32.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3492'),
  'video-3492',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-44'),
  'Episode 44',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1739206553.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3492'),
  'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3496'),
  'video-3496',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-180'),
  'Episode 180',
  6,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1739375116.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3496'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-180.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3674'),
  'video-3674',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-143'),
  'Episode 143',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1746981220.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3674'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-143.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3229'),
  'video-3229',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-124'),
  'Episode 124',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1728228095.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3229'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-124.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2633'),
  'video-2633',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-32'),
  'Episode 32',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2633'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-32.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2655'),
  'video-2655',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-144'),
  'Episode 144',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1705506293.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2655'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-144.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3013'),
  'video-3013',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-111'),
  'Episode 111',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1717991556.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3013'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-111.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1078'),
  'video-1078',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-32'),
  'Episode 32',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1078'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-32.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1031'),
  'video-1031',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-76'),
  'Episode 76',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1031'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-76.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-241'),
  'video-241',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-32'),
  'Episode 32',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-241'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-32.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-131'),
  'video-131',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-51'),
  'Episode 51',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-131'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-51.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-38'),
  'video-38',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-38'),
  'Episode 38',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-38'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-38.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3808'),
  'video-3808',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-37'),
  'Episode 37',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3808'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-37.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2529'),
  'video-2529',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-65'),
  'Episode 65',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2529'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-65.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2949'),
  'video-2949',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-53'),
  'Episode 53',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1715945594.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2949'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-53-RP.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2448'),
  'video-2448',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-32'),
  'Episode 32',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1689509043.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2448'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-32.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1963'),
  'video-1963',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-32'),
  'Episode 32',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1963'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-32.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2223'),
  'video-2223',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-48'),
  'Episode 16 · Bolum 48',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2223'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-16.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1962'),
  'video-1962',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-114'),
  'Bolum 114',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1962'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-114.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2062'),
  'video-2062',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-47'),
  'Episode 20 · Bolum 47',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2062'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1999'),
  'video-1999',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-82'),
  'Episode 82',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1999'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-82.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1367'),
  'video-1367',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-32'),
  'Episode 32',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1367'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-32.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1706'),
  'video-1706',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-46'),
  'Episode 46',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1706'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1755'),
  'video-1755',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-41'),
  'Episode 41',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1755'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1549'),
  'video-1549',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-16'),
  'Episode 16',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1549'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-16.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-834'),
  'video-834',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-27'),
  'Episode 27',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-834'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1623'),
  'video-1623',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-25'),
  'Episode 25',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1623'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-89.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1643'),
  'video-1643',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-27'),
  'Episode 27',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1643'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-676'),
  'video-676',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-32'),
  'Episode 32',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-676'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-32.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-509'),
  'video-509',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-86'),
  'Episode 86',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-509'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-86.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-438'),
  'video-438',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-46'),
  'Episode 46',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-438'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/46.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-361'),
  'video-361',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-32'),
  'Episode 32',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-361'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/32.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-633'),
  'video-633',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-30'),
  'Episode 30',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-633'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-57.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3989'),
  'video-3989',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-bolum-17'),
  'Episode 17 · Bolum 17',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1772640587.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3989'),
  'https://video.twimg.com/amplify_video/2031995146053496832/pl/HPJNxrBltVR7I1v5.m3u8?tag=21',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4032'),
  'video-4032',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-episode-181'),
  'Episode 181',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1779065937.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4032'),
  'https://video.twimg.com/amplify_video/2056281545049022464/pl/2-u03BsKILtDjqcI.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3957'),
  'video-3957',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-67'),
  'Episode 67 · Bolum 67',
  3,
  '{"English"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1769533748.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3957'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-67.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3398'),
  'video-3398',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-33'),
  'Episode 33',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3398'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-33.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3498'),
  'video-3498',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-45'),
  'Episode 45',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1739807040.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3498'),
  'https://cdn4.urduflix.pk/Turkish-Dramas-NiaziTV-App/AYU/Episode-45.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3502'),
  'video-3502',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-181'),
  'Episode 181',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1739978994.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3502'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-181.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3679'),
  'video-3679',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-144'),
  'Episode 144',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1747586485.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3679'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-144.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3235'),
  'video-3235',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-125'),
  'Episode 125',
  4,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1728734734.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3235'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-125.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2634'),
  'video-2634',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-33'),
  'Episode 33',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2634'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-33.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2656'),
  'video-2656',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-144'),
  'Episode 144',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1705506619.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2656'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-144.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1079'),
  'video-1079',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-33'),
  'Episode 33',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1079'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-33.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1032'),
  'video-1032',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-77'),
  'Episode 77',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1032'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-77.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-242'),
  'video-242',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-33'),
  'Episode 33',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-242'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-33.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-132'),
  'video-132',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-52'),
  'Episode 52',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-132'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-52.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-39'),
  'video-39',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-39'),
  'Episode 39',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-39'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-39.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3809'),
  'video-3809',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-38'),
  'Episode 38',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3809'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-38.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2530'),
  'video-2530',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-66'),
  'Episode 66',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2530'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-66.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2975'),
  'video-2975',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-54'),
  'Episode 54',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1716529052.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2975'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-54-RP.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2449'),
  'video-2449',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-33'),
  'Episode 33',
  1,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1689509043.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2449'),
  'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-33.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1966'),
  'video-1966',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-33'),
  'Episode 33',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1966'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-33.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2236'),
  'video-2236',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-49'),
  'Episode 17 · Bolum 49',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2236'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-17.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1964'),
  'video-1964',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-115'),
  'Bolum 115',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1964'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-115.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2075'),
  'video-2075',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-48'),
  'Episode 21 · Bolum 48',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2075'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-48.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2023'),
  'video-2023',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-83'),
  'Episode 83',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2023'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-83.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1368'),
  'video-1368',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-33'),
  'Episode 33',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1368'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-33.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1723'),
  'video-1723',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-47'),
  'Episode 47',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1723'),
  'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1764'),
  'video-1764',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-42'),
  'Episode 42',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1764'),
  'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1566'),
  'video-1566',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-17'),
  'Episode 17',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1566'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-17.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-835'),
  'video-835',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-28'),
  'Episode 28',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-835'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1638'),
  'video-1638',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-26'),
  'Episode 26',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1638'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-90.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1658'),
  'video-1658',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-28'),
  'Episode 28',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1658'),
  'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-677'),
  'video-677',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-33'),
  'Episode 33',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-677'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-33.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-510'),
  'video-510',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-87'),
  'Episode 87',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-510'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-87.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-439'),
  'video-439',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-47'),
  'Episode 47',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-439'),
  'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/47.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-362'),
  'video-362',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-33'),
  'Episode 33',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-362'),
  'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/33.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-659'),
  'video-659',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-31'),
  'Episode 31',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-659'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S2/Episode-58.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3990'),
  'video-3990',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-bolum-17'),
  'Episode 17 · Bolum 17',
  1,
  '{"English"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1772641435.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3990'),
  'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-17.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4035'),
  'video-4035',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-episode-182'),
  'Episode 182',
  6,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1779687618.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4035'),
  'https://video.twimg.com/amplify_video/2059453220037033984/pl/q_jKZ7uILTb17aIN.m3u8?tag=27',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3961'),
  'video-3961',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-68'),
  'Episode 68 · Bolum 68',
  3,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1770132587.jpg'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3961'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-68.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;
