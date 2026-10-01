-- Video Variants Chunk 7

INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3846'),
  'video-3846',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-75'),
  'Episode 75',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3846'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-75.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2044'),
  'video-2044',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-70'),
  'Episode 70',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2044'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-70.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1484'),
  'video-1484',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-70'),
  'Episode 70',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1484'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-70.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-875'),
  'video-875',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-65'),
  'Episode 65',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-875'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-65.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3462'),
  'video-3462',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-71'),
  'Episode 71',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3462'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-71.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2716'),
  'video-2716',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-71'),
  'Episode 71',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2716'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-71.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3004'),
  'video-3004',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-163'),
  'Episode 163',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1717609360.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3004'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-163.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1117'),
  'video-1117',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-71'),
  'Episode 71',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1117'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-71.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-979'),
  'video-979',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-24'),
  'Episode 24',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-979'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-280'),
  'video-280',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-71'),
  'Episode 71',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-280'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-71.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-94'),
  'video-94',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-14'),
  'Episode 14',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-94'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-14.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-73'),
  'video-73',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-73'),
  'Episode 73',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-73'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-73.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3847'),
  'video-3847',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-76'),
  'Episode 76',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3847'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-76.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2045'),
  'video-2045',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-71'),
  'Episode 71',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2045'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-71.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1488'),
  'video-1488',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-71'),
  'Episode 71',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1488'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-71.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-876'),
  'video-876',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-66'),
  'Episode 66',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-876'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-66.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3463'),
  'video-3463',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-72'),
  'Episode 72',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3463'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-72.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2719'),
  'video-2719',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-72'),
  'Episode 72',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2719'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-72.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3021'),
  'video-3021',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-164'),
  'Episode 164',
  5,
  '{"Urdu"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1718212060.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3021'),
  'https://cdn.videas.fr/v-medias/s5/hlsv1/73/f0/73f0a1e3-b0e6-4131-87a6-1ed7869ce808/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1118'),
  'video-1118',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-72'),
  'Episode 72',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1118'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-72.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-980'),
  'video-980',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-25'),
  'Episode 25',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-980'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-281'),
  'video-281',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-72'),
  'Episode 72',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-281'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-72.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-95'),
  'video-95',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-15'),
  'Episode 15',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-95'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-15.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-74'),
  'video-74',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-74'),
  'Episode 74',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-74'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-74.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3848'),
  'video-3848',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-77'),
  'Episode 77',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3848'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-77.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2048'),
  'video-2048',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-72'),
  'Episode 72',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2048'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-72.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1493'),
  'video-1493',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-72'),
  'Episode 72',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1493'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-72.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-877'),
  'video-877',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-67'),
  'Episode 67',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-877'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-67.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3464'),
  'video-3464',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-73'),
  'Episode 73',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3464'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-73.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2720'),
  'video-2720',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-73'),
  'Episode 73',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2720'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-73.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3022'),
  'video-3022',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-164'),
  'Episode 164',
  5,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1718212546.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3022'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-164.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1119'),
  'video-1119',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-73'),
  'Episode 73',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1119'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-73.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-981'),
  'video-981',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-26'),
  'Episode 26',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-981'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-282'),
  'video-282',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-73'),
  'Episode 73',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-282'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-73.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-96'),
  'video-96',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-16'),
  'Episode 16',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-96'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-16.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-75'),
  'video-75',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-75'),
  'Episode 75',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-75'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-75.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3849'),
  'video-3849',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-78'),
  'Episode 78',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3849'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-78.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2049'),
  'video-2049',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-73'),
  'Episode 73',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2049'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-73.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1496'),
  'video-1496',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-73'),
  'Episode 73',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1496'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-73.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-878'),
  'video-878',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-68'),
  'Episode 68',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-878'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-68.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3465'),
  'video-3465',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-74'),
  'Episode 74',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3465'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-74.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2723'),
  'video-2723',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-74'),
  'Episode 74',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2723'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-74.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1120'),
  'video-1120',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-74'),
  'Episode 74',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1120'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-74.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-982'),
  'video-982',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-27'),
  'Episode 27',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-982'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-283'),
  'video-283',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-74'),
  'Episode 74',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-283'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-74.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-97'),
  'video-97',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-17'),
  'Episode 17',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-97'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-17.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-76'),
  'video-76',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-76'),
  'Episode 76',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-76'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-76.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3850'),
  'video-3850',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-79'),
  'Episode 79',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3850'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-79.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2053'),
  'video-2053',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-74'),
  'Episode 74',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2053'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-74.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1497'),
  'video-1497',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-74'),
  'Episode 74',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1497'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-74.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-879'),
  'video-879',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-69'),
  'Episode 69',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-879'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-69.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3466'),
  'video-3466',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-75'),
  'Episode 75',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3466'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-75.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2726'),
  'video-2726',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-75'),
  'Episode 75',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2726'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-75.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1121'),
  'video-1121',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-75'),
  'Episode 75',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1121'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-75.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-983'),
  'video-983',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-28'),
  'Episode 28',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-983'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-284'),
  'video-284',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-75'),
  'Episode 75',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-284'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-75.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-98'),
  'video-98',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-18'),
  'Episode 18',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-98'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-18.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-8'),
  'video-8',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-8'),
  'Episode 8',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-8'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-8.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3851'),
  'video-3851',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-80'),
  'Episode 80',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3851'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-80.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2054'),
  'video-2054',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-75'),
  'Episode 75',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2054'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-75.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1499'),
  'video-1499',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-75'),
  'Episode 75',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1499'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-75.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-880'),
  'video-880',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-70'),
  'Episode 70',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-880'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-70.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3467'),
  'video-3467',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-76'),
  'Episode 76',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3467'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-76.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2727'),
  'video-2727',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-76'),
  'Episode 76',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2727'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-76.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1122'),
  'video-1122',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-76'),
  'Episode 76',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1122'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-76.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-984'),
  'video-984',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-29'),
  'Episode 29',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-984'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-285'),
  'video-285',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-76'),
  'Episode 76',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-285'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-76.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-99'),
  'video-99',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-19'),
  'Episode 19',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-99'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-19.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-9'),
  'video-9',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-9'),
  'Episode 9',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-9'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-9.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3852'),
  'video-3852',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-81'),
  'Episode 81',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3852'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-81.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2057'),
  'video-2057',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-76'),
  'Episode 76',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2057'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-76.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1503'),
  'video-1503',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-76'),
  'Episode 76',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1503'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-76.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-881'),
  'video-881',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-71'),
  'Episode 71',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-881'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-71.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3468'),
  'video-3468',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-77'),
  'Episode 77',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3468'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-77.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2728'),
  'video-2728',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-77'),
  'Episode 77',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2728'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-77.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1123'),
  'video-1123',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-77'),
  'Episode 77',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1123'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-77.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-985'),
  'video-985',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-30'),
  'Episode 30',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-985'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-30.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-610'),
  'video-610',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-77'),
  'Episode 77',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-610'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-77.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3853'),
  'video-3853',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-82'),
  'Episode 82',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3853'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-82.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2058'),
  'video-2058',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-77'),
  'Episode 77',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2058'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-77.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1506'),
  'video-1506',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-77'),
  'Episode 77',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1506'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-77.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-882'),
  'video-882',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-72'),
  'Episode 72',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-882'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-72.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3469'),
  'video-3469',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-78'),
  'Episode 78',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3469'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-78.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2730'),
  'video-2730',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-78'),
  'Episode 78',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2730'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-78.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1124'),
  'video-1124',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-78'),
  'Episode 78',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1124'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-78.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-986'),
  'video-986',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-31'),
  'Episode 31',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-986'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-31.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-611'),
  'video-611',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-78'),
  'Episode 78',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-611'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-78.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3854'),
  'video-3854',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-83'),
  'Episode 83',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3854'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-83.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2060'),
  'video-2060',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-78'),
  'Episode 78',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2060'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-78.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1510'),
  'video-1510',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-78'),
  'Episode 78',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1510'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-78.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-883'),
  'video-883',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-73'),
  'Episode 73',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-883'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-73.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3470'),
  'video-3470',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-79'),
  'Episode 79',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3470'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-79.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2733'),
  'video-2733',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-79'),
  'Episode 79',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2733'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-79.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1125'),
  'video-1125',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-79'),
  'Episode 79',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1125'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-79.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-987'),
  'video-987',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-32'),
  'Episode 32',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-987'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-32.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-612'),
  'video-612',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-79'),
  'Episode 79',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-612'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-79.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3855'),
  'video-3855',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-84'),
  'Episode 84',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3855'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-84.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2063'),
  'video-2063',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-79'),
  'Episode 79',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2063'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-79.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1516'),
  'video-1516',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-79'),
  'Episode 79',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1516'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-79.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-884'),
  'video-884',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-74'),
  'Episode 74',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-884'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-74.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3471'),
  'video-3471',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-80'),
  'Episode 80',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3471'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-80.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2735'),
  'video-2735',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-80'),
  'Episode 80',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2735'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-80.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1126'),
  'video-1126',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-80'),
  'Episode 80',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1126'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-80.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-988'),
  'video-988',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-33'),
  'Episode 33',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-988'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-33.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-613'),
  'video-613',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-80'),
  'Episode 80',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-613'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-80.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3856'),
  'video-3856',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-85'),
  'Episode 85',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3856'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-85.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2066'),
  'video-2066',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-80'),
  'Episode 80',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2066'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-80.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1519'),
  'video-1519',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-80'),
  'Episode 80',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1519'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-80.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-885'),
  'video-885',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-75'),
  'Episode 75',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-885'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-75.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3472'),
  'video-3472',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-81'),
  'Episode 81',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3472'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-81.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2738'),
  'video-2738',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-81'),
  'Episode 81',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2738'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-81.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1127'),
  'video-1127',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-81'),
  'Episode 81',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1127'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-81.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-989'),
  'video-989',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-34'),
  'Episode 34',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-989'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-34.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-614'),
  'video-614',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-81'),
  'Episode 81',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-614'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-81.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3857'),
  'video-3857',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-86'),
  'Episode 86',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3857'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-86.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2068'),
  'video-2068',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-81'),
  'Episode 81',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2068'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-81.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1520'),
  'video-1520',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-81'),
  'Episode 81',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1520'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-81.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-886'),
  'video-886',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-76'),
  'Episode 76',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-886'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-76.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3511'),
  'video-3511',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-82'),
  'Episode 82',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3511'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-82.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2739'),
  'video-2739',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-82'),
  'Episode 82',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2739'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-82.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1128'),
  'video-1128',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-82'),
  'Episode 82',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1128'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-82.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-990'),
  'video-990',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-35'),
  'Episode 35',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-990'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-35.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-615'),
  'video-615',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-82'),
  'Episode 82',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-615'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-82.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3858'),
  'video-3858',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-87'),
  'Episode 87',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3858'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-87.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2069'),
  'video-2069',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-82'),
  'Episode 82',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2069'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-82.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1522'),
  'video-1522',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-82'),
  'Episode 82',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1522'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-82.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-887'),
  'video-887',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-77'),
  'Episode 77',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-887'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-77.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3513'),
  'video-3513',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-83'),
  'Episode 83',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3513'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-83.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2744'),
  'video-2744',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-83'),
  'Episode 83',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2744'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-83.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1129'),
  'video-1129',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-83'),
  'Episode 83',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1129'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-83.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-991'),
  'video-991',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-36'),
  'Episode 36',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-991'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-36.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-621'),
  'video-621',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-83'),
  'Episode 83',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-621'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-83.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3859'),
  'video-3859',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-88'),
  'Episode 88',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3859'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-88.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2071'),
  'video-2071',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-83'),
  'Episode 83',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2071'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-83.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1525'),
  'video-1525',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-83'),
  'Episode 83',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1525'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-83.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-888'),
  'video-888',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-78'),
  'Episode 78',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-888'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-78.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3514'),
  'video-3514',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-84'),
  'Episode 84',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3514'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-84.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2746'),
  'video-2746',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-84'),
  'Episode 84',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2746'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-84.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1130'),
  'video-1130',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-84'),
  'Episode 84',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1130'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-84.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-992'),
  'video-992',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-37'),
  'Episode 37',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-992'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-37.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-622'),
  'video-622',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-84'),
  'Episode 84',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-622'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-84.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3860'),
  'video-3860',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-89'),
  'Episode 89',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3860'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-89.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2073'),
  'video-2073',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-84'),
  'Episode 84',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2073'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-84.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1528'),
  'video-1528',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-84'),
  'Episode 84',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1528'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-84.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-889'),
  'video-889',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-79'),
  'Episode 79',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-889'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-79.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3515'),
  'video-3515',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-85'),
  'Episode 85',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3515'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-85.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2748'),
  'video-2748',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-85'),
  'Episode 85',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2748'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-85.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1131'),
  'video-1131',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-85'),
  'Episode 85',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1131'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-85.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-993'),
  'video-993',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-38'),
  'Episode 38',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-993'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-38.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-623'),
  'video-623',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-85'),
  'Episode 85',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-623'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-85.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3861'),
  'video-3861',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-90'),
  'Episode 90',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3861'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-90.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2074'),
  'video-2074',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-85'),
  'Episode 85',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2074'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-85.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1533'),
  'video-1533',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-85'),
  'Episode 85',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1533'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-85.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-890'),
  'video-890',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-80'),
  'Episode 80',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-890'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-80.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3516'),
  'video-3516',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-86'),
  'Episode 86',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3516'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-86.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2753'),
  'video-2753',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-86'),
  'Episode 86',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2753'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-86.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1132'),
  'video-1132',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-86'),
  'Episode 86',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1132'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-86.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-994'),
  'video-994',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-39'),
  'Episode 39',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-994'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-39.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-627'),
  'video-627',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-86'),
  'Episode 86',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-627'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-86.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3862'),
  'video-3862',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-91'),
  'Episode 91',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3862'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-91.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2078'),
  'video-2078',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-86'),
  'Episode 86',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2078'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-86.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1538'),
  'video-1538',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-86'),
  'Episode 86',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1538'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-86.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-891'),
  'video-891',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-81'),
  'Episode 81',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-891'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-81.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3517'),
  'video-3517',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-87'),
  'Episode 87',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3517'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-87.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2754'),
  'video-2754',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-87'),
  'Episode 87',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2754'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-87.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1133'),
  'video-1133',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-87'),
  'Episode 87',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1133'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-87.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-995'),
  'video-995',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-40'),
  'Episode 40',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-995'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-40.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-628'),
  'video-628',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-87'),
  'Episode 87',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-628'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-87.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3863'),
  'video-3863',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-92'),
  'Episode 92',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3863'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-92.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2081'),
  'video-2081',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-87'),
  'Episode 87',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2081'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-87.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1542'),
  'video-1542',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-87'),
  'Episode 87',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1542'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-87.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-892'),
  'video-892',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-82'),
  'Episode 82',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-892'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-82.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3518'),
  'video-3518',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-88'),
  'Episode 88',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3518'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-88.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2755'),
  'video-2755',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-88'),
  'Episode 88',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2755'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-88.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1134'),
  'video-1134',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-88'),
  'Episode 88',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1134'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-88.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-996'),
  'video-996',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-41'),
  'Episode 41',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-996'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-629'),
  'video-629',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-88'),
  'Episode 88',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-629'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-88.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3864'),
  'video-3864',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-93'),
  'Episode 93',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3864'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-93.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2086'),
  'video-2086',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-88'),
  'Episode 88',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2086'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-88.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1543'),
  'video-1543',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-88'),
  'Episode 88',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1543'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-88.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-893'),
  'video-893',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-83'),
  'Episode 83',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-893'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-83.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3519'),
  'video-3519',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-89'),
  'Episode 89',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3519'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-89.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2756'),
  'video-2756',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-89'),
  'Episode 89',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2756'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-89.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1135'),
  'video-1135',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-89'),
  'Episode 89',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1135'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-89.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-997'),
  'video-997',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-42'),
  'Episode 42',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-997'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-688'),
  'video-688',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-89'),
  'Episode 89',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-688'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-89.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3865'),
  'video-3865',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-94'),
  'Episode 94',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3865'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-94.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2088'),
  'video-2088',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-89'),
  'Episode 89',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2088'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-89.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1545'),
  'video-1545',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-89'),
  'Episode 89',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1545'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-89.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-894'),
  'video-894',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-84'),
  'Episode 84',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-894'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-84.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3520'),
  'video-3520',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-90'),
  'Episode 90',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3520'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-90.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2762'),
  'video-2762',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-90'),
  'Episode 90',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2762'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-90.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1136'),
  'video-1136',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-90'),
  'Episode 90',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1136'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-90.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-998'),
  'video-998',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-43'),
  'Episode 43',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-998'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-690'),
  'video-690',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-90'),
  'Episode 90',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-690'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-90.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3866'),
  'video-3866',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-95'),
  'Episode 95',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3866'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-95.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2090'),
  'video-2090',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-90'),
  'Episode 90',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2090'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-90.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1547'),
  'video-1547',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-90'),
  'Episode 90',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1547'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-90.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-895'),
  'video-895',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-85'),
  'Episode 85',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-895'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-85.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3521'),
  'video-3521',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-91'),
  'Episode 91',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3521'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-91.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2763'),
  'video-2763',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-91'),
  'Episode 91',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2763'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-91.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1137'),
  'video-1137',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-91'),
  'Episode 91',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1137'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-91.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-999'),
  'video-999',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-44'),
  'Episode 44',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-999'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-44.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-691'),
  'video-691',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-91'),
  'Episode 91',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-691'),
  'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-91.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3867'),
  'video-3867',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-96'),
  'Episode 96',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3867'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-96.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2093'),
  'video-2093',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-91'),
  'Episode 91',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2093'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-91.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1550'),
  'video-1550',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-91'),
  'Episode 91',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1550'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-91.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-896'),
  'video-896',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-86'),
  'Episode 86',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-896'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-86.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3522'),
  'video-3522',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-92'),
  'Episode 92',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3522'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-92.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2766'),
  'video-2766',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-92'),
  'Episode 92',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2766'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-92.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3868'),
  'video-3868',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-97'),
  'Episode 97',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3868'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-97.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2097'),
  'video-2097',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-92'),
  'Episode 92',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2097'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-92.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1553'),
  'video-1553',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-92'),
  'Episode 92',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1553'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-92.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-897'),
  'video-897',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-87'),
  'Episode 87',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-897'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-87.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3523'),
  'video-3523',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-93'),
  'Episode 93',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3523'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-93.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2767'),
  'video-2767',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-93'),
  'Episode 93',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2767'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-93.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3869'),
  'video-3869',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-98'),
  'Episode 98',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3869'),
  'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-98.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2103'),
  'video-2103',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-93'),
  'Episode 93',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2103'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-93.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1556'),
  'video-1556',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-93'),
  'Episode 93',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1556'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-93.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-898'),
  'video-898',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-88'),
  'Episode 88',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-898'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-88.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3524'),
  'video-3524',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-94'),
  'Episode 94',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3524'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-94.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2771'),
  'video-2771',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-94'),
  'Episode 94',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2771'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-94.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2105'),
  'video-2105',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-94'),
  'Episode 94',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2105'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-94.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1559'),
  'video-1559',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-94'),
  'Episode 94',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1559'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-94.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-899'),
  'video-899',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-89'),
  'Episode 89',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-899'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-89.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3525'),
  'video-3525',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-95'),
  'Episode 95',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3525'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-95.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2774'),
  'video-2774',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-95'),
  'Episode 95',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2774'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-95.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2112'),
  'video-2112',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-95'),
  'Episode 95',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2112'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-95.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1560'),
  'video-1560',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-95'),
  'Episode 95',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1560'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-95.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-900'),
  'video-900',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-90'),
  'Episode 90',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-900'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-90.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3526'),
  'video-3526',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-96'),
  'Episode 96',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3526'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-96.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2775'),
  'video-2775',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-96'),
  'Episode 96',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2775'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-96.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2114'),
  'video-2114',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-96'),
  'Episode 96',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2114'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-96.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1562'),
  'video-1562',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-96'),
  'Episode 96',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1562'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-96.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-901'),
  'video-901',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-91'),
  'Episode 91',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-901'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-91.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3527'),
  'video-3527',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-97'),
  'Episode 97',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3527'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-97.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2778'),
  'video-2778',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-97'),
  'Episode 97',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2778'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-97.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2119'),
  'video-2119',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-97'),
  'Episode 97',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2119'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-97.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1565'),
  'video-1565',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-97'),
  'Episode 97',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1565'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-97.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-902'),
  'video-902',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-92'),
  'Episode 92',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-902'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-92.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3528'),
  'video-3528',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-98'),
  'Episode 98',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3528'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-98.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2780'),
  'video-2780',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-98'),
  'Episode 98',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2780'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-98.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2121'),
  'video-2121',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-98'),
  'Episode 98',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2121'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-98.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1569'),
  'video-1569',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-98'),
  'Episode 98',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1569'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-98.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-903'),
  'video-903',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-93'),
  'Episode 93',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-903'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-93.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3529'),
  'video-3529',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-99'),
  'Episode 99',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3529'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-99.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2782'),
  'video-2782',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-99'),
  'Episode 99',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2782'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-99.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2125'),
  'video-2125',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-99'),
  'Episode 99',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2125'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-99.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1572'),
  'video-1572',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-99'),
  'Episode 99',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1572'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-99.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-904'),
  'video-904',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-94'),
  'Episode 94',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-904'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-94.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3530'),
  'video-3530',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-100'),
  'Episode 100',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3530'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-100.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2786'),
  'video-2786',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-100'),
  'Episode 100',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2786'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-100.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2130'),
  'video-2130',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-100'),
  'Episode 100',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2130'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-100.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1575'),
  'video-1575',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-100'),
  'Episode 100',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1575'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-100.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-905'),
  'video-905',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-95'),
  'Episode 95',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-905'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-95.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3531'),
  'video-3531',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-101'),
  'Episode 101',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3531'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-101.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2788'),
  'video-2788',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-101'),
  'Episode 101',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2788'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-101.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2132'),
  'video-2132',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-101'),
  'Episode 101',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2132'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-101.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1577'),
  'video-1577',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-101'),
  'Episode 101',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1577'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-101.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-906'),
  'video-906',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-96'),
  'Episode 96',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-906'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-96.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3532'),
  'video-3532',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-102'),
  'Episode 102',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3532'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-102.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2791'),
  'video-2791',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-102'),
  'Episode 102',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2791'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-102.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2136'),
  'video-2136',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-102'),
  'Episode 102',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2136'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-102.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1578'),
  'video-1578',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-102'),
  'Episode 102',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1578'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-102.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-907'),
  'video-907',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-97'),
  'Episode 97',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-907'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-97.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3533'),
  'video-3533',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-103'),
  'Episode 103',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3533'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-103.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2793'),
  'video-2793',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-103'),
  'Episode 103',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2793'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-103.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2139'),
  'video-2139',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-103'),
  'Episode 103',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2139'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-103.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1580'),
  'video-1580',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-103'),
  'Episode 103',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1580'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-103.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-908'),
  'video-908',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-98'),
  'Episode 98',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-908'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-98.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3534'),
  'video-3534',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-104'),
  'Episode 104',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3534'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-104.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2795'),
  'video-2795',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-104'),
  'Episode 104',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2795'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-104.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2143'),
  'video-2143',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-104'),
  'Episode 104',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2143'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-104.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1582'),
  'video-1582',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-104'),
  'Episode 104',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1582'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-104.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-909'),
  'video-909',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-99'),
  'Episode 99',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-909'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-99.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3535'),
  'video-3535',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-105'),
  'Episode 105',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3535'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-105.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2796'),
  'video-2796',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-105'),
  'Episode 105',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2796'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-105.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2145'),
  'video-2145',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-105'),
  'Episode 105',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2145'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-105.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1585'),
  'video-1585',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-105'),
  'Episode 105',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1585'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-105.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-910'),
  'video-910',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-100'),
  'Episode 100',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-910'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-100.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3536'),
  'video-3536',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-106'),
  'Episode 106',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3536'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-106.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2798'),
  'video-2798',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-106'),
  'Episode 106',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2798'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-106.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2149'),
  'video-2149',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-106'),
  'Episode 106',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2149'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-106.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1588'),
  'video-1588',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-106'),
  'Episode 106',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1588'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-106.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-911'),
  'video-911',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-101'),
  'Episode 101',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-911'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-101.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3537'),
  'video-3537',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-107'),
  'Episode 107',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3537'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-107.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2801'),
  'video-2801',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-107'),
  'Episode 107',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2801'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-107.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2153'),
  'video-2153',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-107'),
  'Episode 107',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2153'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-107.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1591'),
  'video-1591',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-107'),
  'Episode 107',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1591'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-107.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-912'),
  'video-912',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-102'),
  'Episode 102',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-912'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-102.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3538'),
  'video-3538',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-108'),
  'Episode 108',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3538'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-108.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2804'),
  'video-2804',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-108'),
  'Episode 108',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2804'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-108.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2156'),
  'video-2156',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-108'),
  'Episode 108',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2156'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-108.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1594'),
  'video-1594',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-108'),
  'Episode 108',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1594'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-108.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-913'),
  'video-913',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-103'),
  'Episode 103',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-913'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-103.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3539'),
  'video-3539',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-109'),
  'Episode 109',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3539'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-109.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2807'),
  'video-2807',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-109'),
  'Episode 109',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2807'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-109.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2161'),
  'video-2161',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-109'),
  'Episode 109',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2161'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-109.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1595'),
  'video-1595',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-109'),
  'Episode 109',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1595'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-109.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-914'),
  'video-914',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-104'),
  'Episode 104',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-914'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-104.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3540'),
  'video-3540',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-110'),
  'Episode 110',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3540'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-110.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2808'),
  'video-2808',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-110'),
  'Episode 110',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2808'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-110.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2163'),
  'video-2163',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-110'),
  'Episode 110',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2163'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-110.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1597'),
  'video-1597',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-110'),
  'Episode 110',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1597'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-110.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-915'),
  'video-915',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-105'),
  'Episode 105',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-915'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-105.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3541'),
  'video-3541',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-111'),
  'Episode 111',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3541'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-111.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2811'),
  'video-2811',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-111'),
  'Episode 111',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2811'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-111.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2166'),
  'video-2166',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-111'),
  'Episode 111',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2166'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-111.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1599'),
  'video-1599',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-111'),
  'Episode 111',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1599'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-111.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-916'),
  'video-916',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-106'),
  'Episode 106',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-916'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-106.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3542'),
  'video-3542',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-112'),
  'Episode 112',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3542'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-112.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2812'),
  'video-2812',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-112'),
  'Episode 112',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2812'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-112.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2170'),
  'video-2170',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-112'),
  'Episode 112',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2170'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-112.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1602'),
  'video-1602',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-112'),
  'Episode 112',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1602'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-112.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-917'),
  'video-917',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-107'),
  'Episode 107',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-917'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-107.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3543'),
  'video-3543',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-113'),
  'Episode 113',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3543'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-113.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2815'),
  'video-2815',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-113'),
  'Episode 113',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2815'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-113.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2174'),
  'video-2174',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-113'),
  'Episode 113',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2174'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-113.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1606'),
  'video-1606',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-113'),
  'Episode 113',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1606'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-113.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-918'),
  'video-918',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-108'),
  'Episode 108',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-918'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-108.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3544'),
  'video-3544',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-114'),
  'Episode 114',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3544'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-114.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2820'),
  'video-2820',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-114'),
  'Episode 114',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2820'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-114.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2178'),
  'video-2178',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-114'),
  'Episode 114',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2178'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-114.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1608'),
  'video-1608',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-114'),
  'Episode 114',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1608'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-114.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-919'),
  'video-919',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-109'),
  'Episode 109',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-919'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-109.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3545'),
  'video-3545',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-115'),
  'Episode 115',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3545'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-115.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2821'),
  'video-2821',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-115'),
  'Episode 115',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2821'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-115.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2181'),
  'video-2181',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-115'),
  'Episode 115',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2181'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-115.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1611'),
  'video-1611',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-115'),
  'Episode 115',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1611'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-115.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-920'),
  'video-920',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-110'),
  'Episode 110',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-920'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-110.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3546'),
  'video-3546',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-116'),
  'Episode 116',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3546'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-116.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2824'),
  'video-2824',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-116'),
  'Episode 116',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2824'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-116.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2185'),
  'video-2185',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-116'),
  'Episode 116',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2185'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-116.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1612'),
  'video-1612',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-116'),
  'Episode 116',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1612'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-116.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-921'),
  'video-921',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-111'),
  'Episode 111',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-921'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-111.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3547'),
  'video-3547',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-117'),
  'Episode 117',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3547'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-117.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2825'),
  'video-2825',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-117'),
  'Episode 117',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2825'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-117.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2187'),
  'video-2187',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-117'),
  'Episode 117',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2187'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-117.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1613'),
  'video-1613',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-117'),
  'Episode 117',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1613'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-117.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-922'),
  'video-922',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-112'),
  'Episode 112',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-922'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-112.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3548'),
  'video-3548',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-118'),
  'Episode 118',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3548'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-118.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2826'),
  'video-2826',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-118'),
  'Episode 118',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2826'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-118.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2189'),
  'video-2189',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-118'),
  'Episode 118',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2189'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-118.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1614'),
  'video-1614',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-118'),
  'Episode 118',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1614'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-118.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-923'),
  'video-923',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-113'),
  'Episode 113',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-923'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-113.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3549'),
  'video-3549',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-119'),
  'Episode 119',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3549'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-119.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2829'),
  'video-2829',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-119'),
  'Episode 119',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2829'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-119.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2191'),
  'video-2191',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-119'),
  'Episode 119',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2191'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-119.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1617'),
  'video-1617',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-119'),
  'Episode 119',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1617'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-119.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-924'),
  'video-924',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-114'),
  'Episode 114',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-924'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-114.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3550'),
  'video-3550',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-120'),
  'Episode 120',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3550'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-120.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2831'),
  'video-2831',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-120'),
  'Episode 120',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2831'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-120.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2195'),
  'video-2195',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-120'),
  'Episode 120',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2195'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-120.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1621'),
  'video-1621',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-120'),
  'Episode 120',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1621'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-120.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-925'),
  'video-925',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-115'),
  'Episode 115',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-925'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-115.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3551'),
  'video-3551',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-121'),
  'Episode 121',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3551'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-121.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2836'),
  'video-2836',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-121'),
  'Episode 121',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2836'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-121.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2202'),
  'video-2202',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-121'),
  'Episode 121',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2202'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-121.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1624'),
  'video-1624',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-121'),
  'Episode 121',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1624'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-121.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-926'),
  'video-926',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-116'),
  'Episode 116',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-926'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-116.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3552'),
  'video-3552',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-122'),
  'Episode 122',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3552'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-122.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2837'),
  'video-2837',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-122'),
  'Episode 122',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2837'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-122.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2203'),
  'video-2203',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-122'),
  'Episode 122',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2203'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-122.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1627'),
  'video-1627',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-122'),
  'Episode 122',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1627'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-122.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-927'),
  'video-927',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-117'),
  'Episode 117',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-927'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-117.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3582'),
  'video-3582',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-123'),
  'Episode 123',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3582'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-123.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2840'),
  'video-2840',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-123'),
  'Episode 123',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2840'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-123.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2204'),
  'video-2204',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-123'),
  'Episode 123',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2204'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-123.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1628'),
  'video-1628',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-123'),
  'Episode 123',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1628'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-123.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-928'),
  'video-928',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-118'),
  'Episode 118',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-928'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-118.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3583'),
  'video-3583',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-124'),
  'Episode 124',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3583'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-124.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2842'),
  'video-2842',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-124'),
  'Episode 124',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2842'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-124.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2207'),
  'video-2207',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-124'),
  'Episode 124',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2207'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-124.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1629'),
  'video-1629',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-124'),
  'Episode 124',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1629'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-124.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-929'),
  'video-929',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-119'),
  'Episode 119',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-929'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-119.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3584'),
  'video-3584',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-125'),
  'Episode 125',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3584'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-125.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2843'),
  'video-2843',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-125'),
  'Episode 125',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2843'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-125.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2209'),
  'video-2209',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-125'),
  'Episode 125',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2209'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-125.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1630'),
  'video-1630',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-125'),
  'Episode 125',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1630'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-125.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-930'),
  'video-930',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-120'),
  'Episode 120',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-930'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-120.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3585'),
  'video-3585',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-126'),
  'Episode 126',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3585'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-126.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2844'),
  'video-2844',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-126'),
  'Episode 126',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2844'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-126.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2211'),
  'video-2211',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-126'),
  'Episode 126',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2211'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-126.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1634'),
  'video-1634',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-126'),
  'Episode 126',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1634'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-126.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-931'),
  'video-931',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-121'),
  'Episode 121',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-931'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-121.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3586'),
  'video-3586',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-127'),
  'Episode 127',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3586'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-127.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2845'),
  'video-2845',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-127'),
  'Episode 127',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2845'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-127.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2215'),
  'video-2215',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-127'),
  'Episode 127',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2215'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-127.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1637'),
  'video-1637',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-127'),
  'Episode 127',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1637'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-127.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-932'),
  'video-932',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-122'),
  'Episode 122',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-932'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-122.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3587'),
  'video-3587',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-128'),
  'Episode 128',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3587'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-128.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2850'),
  'video-2850',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-128'),
  'Episode 128',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2850'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-128.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2216'),
  'video-2216',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-128'),
  'Episode 128',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2216'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-128.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1641'),
  'video-1641',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-128'),
  'Episode 128',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1641'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-128.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-933'),
  'video-933',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-123'),
  'Episode 123',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-933'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-123.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3588'),
  'video-3588',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-129'),
  'Episode 129',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3588'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-129.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2854'),
  'video-2854',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-129'),
  'Episode 129',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2854'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-129.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2220'),
  'video-2220',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-129'),
  'Episode 129',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2220'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-129.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1644'),
  'video-1644',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-129'),
  'Episode 129',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1644'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-129.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-934'),
  'video-934',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-124'),
  'Episode 124',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-934'),
  'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-124.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;
