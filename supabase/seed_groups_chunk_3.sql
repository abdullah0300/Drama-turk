-- Episode Groups Chunk 3

INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-61'),
  'collection-5-episode-61',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  'Episode 61',
  61,
  NULL,
  NULL,
  61,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-17'),
  'collection-4-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  'Episode 17',
  17,
  NULL,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-36'),
  'collection-3-episode-36',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  'Episode 36',
  36,
  NULL,
  NULL,
  36,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-24'),
  'collection-2-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  'Episode 24',
  24,
  NULL,
  NULL,
  24,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-20'),
  'collection-56-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-50'),
  'collection-53-episode-50',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  'Episode 50',
  50,
  NULL,
  NULL,
  50,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-38'),
  'collection-52-episode-38',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  'Episode 38',
  38,
  NULL,
  NULL,
  38,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-51-episode-17'),
  'collection-51-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-51'),
  'Episode 17',
  17,
  NULL,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-17'),
  'collection-48-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  'Episode 17',
  17,
  NULL,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-47-episode-17'),
  'collection-47-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-47'),
  'Episode 17',
  17,
  NULL,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-46-episode-17'),
  'collection-46-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-46'),
  'Episode 17',
  17,
  NULL,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-17'),
  'collection-43-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  'Episode 17',
  17,
  NULL,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-42-episode-17'),
  'collection-42-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-42'),
  'Episode 17',
  17,
  NULL,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-41'),
  'collection-41-bolum-41',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  'Episode 9 · Bolum 41',
  9,
  41,
  NULL,
  9,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-65'),
  'collection-40-episode-65',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  'Episode 65',
  65,
  NULL,
  NULL,
  65,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-107'),
  'collection-38-bolum-107',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  'Episode 9 · Bolum 107',
  9,
  107,
  NULL,
  9,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-40'),
  'collection-37-bolum-40',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  'Episode 13 · Bolum 40',
  13,
  40,
  NULL,
  13,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-67'),
  'collection-36-episode-67',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  'Episode 67',
  67,
  NULL,
  NULL,
  67,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-17'),
  'collection-34-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  'Episode 17',
  17,
  NULL,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-31'),
  'collection-33-episode-31',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  'Episode 31',
  31,
  NULL,
  NULL,
  31,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-26'),
  'collection-31-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  'Episode 26',
  26,
  NULL,
  NULL,
  26,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-28-episode-17'),
  'collection-28-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  'Episode 17',
  17,
  NULL,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-9'),
  'collection-27-episode-9',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  'Episode 9',
  9,
  NULL,
  NULL,
  9,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-12'),
  'collection-26-episode-12',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  'Episode 12',
  12,
  NULL,
  NULL,
  12,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-18'),
  'collection-25-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-20'),
  'collection-24-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-17'),
  'collection-23-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  'Episode 17',
  17,
  NULL,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-20-episode-17'),
  'collection-20-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-20'),
  'Episode 17',
  17,
  NULL,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-105'),
  'collection-18-episode-105',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  'Episode 105',
  105,
  NULL,
  NULL,
  105,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-71'),
  'collection-17-episode-71',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  'Episode 71',
  71,
  NULL,
  NULL,
  71,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-33-part-1'),
  'collection-16-episode-33-part-1',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  'Episode 33 · Part 1',
  33,
  NULL,
  1,
  33,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-11-episode-17'),
  'collection-11-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-11'),
  'Episode 17',
  17,
  NULL,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-17'),
  'collection-10-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  'Episode 17',
  17,
  NULL,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-17'),
  'collection-8-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  'Episode 17',
  17,
  NULL,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-7-episode-17'),
  'collection-7-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-7'),
  'Episode 17',
  17,
  NULL,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-bolum-166'),
  'collection-77-bolum-166',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  'Episode 166 · Bolum 166',
  166,
  166,
  NULL,
  166,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-18'),
  'collection-73-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-129'),
  'collection-69-episode-129',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  'Episode 129',
  129,
  NULL,
  NULL,
  129,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-65-episode-18'),
  'collection-65-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-110'),
  'collection-63-episode-110',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  'Episode 110',
  110,
  NULL,
  NULL,
  110,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-18'),
  'collection-61-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-59-episode-85'),
  'collection-59-episode-85',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-59'),
  'Episode 85',
  85,
  NULL,
  NULL,
  85,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-137'),
  'collection-50-episode-137',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  'Episode 137',
  137,
  NULL,
  NULL,
  137,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-97'),
  'collection-57-episode-97',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  'Episode 97',
  97,
  NULL,
  NULL,
  97,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-18'),
  'collection-6-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-62'),
  'collection-5-episode-62',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  'Episode 62',
  62,
  NULL,
  NULL,
  62,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-18'),
  'collection-4-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-37'),
  'collection-3-episode-37',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  'Episode 37',
  37,
  NULL,
  NULL,
  37,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-25'),
  'collection-2-episode-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  'Episode 25',
  25,
  NULL,
  NULL,
  25,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-22'),
  'collection-56-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-51'),
  'collection-53-episode-51',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  'Episode 51',
  51,
  NULL,
  NULL,
  51,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-39'),
  'collection-52-episode-39',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  'Episode 39',
  39,
  NULL,
  NULL,
  39,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-51-episode-18'),
  'collection-51-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-51'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-18'),
  'collection-48-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-47-episode-18'),
  'collection-47-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-47'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-18'),
  'collection-43-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-42-episode-18'),
  'collection-42-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-42'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-66'),
  'collection-40-episode-66',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  'Episode 66',
  66,
  NULL,
  NULL,
  66,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-68'),
  'collection-36-episode-68',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  'Episode 68',
  68,
  NULL,
  NULL,
  68,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-18'),
  'collection-34-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-32'),
  'collection-33-episode-32',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  'Episode 32',
  32,
  NULL,
  NULL,
  32,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-27'),
  'collection-31-episode-27',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  'Episode 27',
  27,
  NULL,
  NULL,
  27,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-28-episode-18'),
  'collection-28-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-13'),
  'collection-26-episode-13',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  'Episode 13',
  13,
  NULL,
  NULL,
  13,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-18'),
  'collection-23-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-20-episode-18'),
  'collection-20-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-20'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-106'),
  'collection-18-episode-106',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  'Episode 106',
  106,
  NULL,
  NULL,
  106,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-72'),
  'collection-17-episode-72',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  'Episode 72',
  72,
  NULL,
  NULL,
  72,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-33-part-2'),
  'collection-16-episode-33-part-2',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  'Episode 33 · Part 2',
  33,
  NULL,
  2,
  33,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-18'),
  'collection-10-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-18'),
  'collection-8-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-7-episode-18'),
  'collection-7-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-7'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-bolum-10'),
  'collection-78-bolum-10',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  'Episode 10 · Bolum 10',
  10,
  10,
  NULL,
  10,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-bolum-167'),
  'collection-77-bolum-167',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  'Episode 167 · Bolum 167',
  167,
  167,
  NULL,
  167,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-60'),
  'collection-76-episode-60',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  'Episode 60',
  60,
  NULL,
  NULL,
  60,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-19'),
  'collection-73-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-38'),
  'collection-71-episode-38',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  'Episode 38',
  38,
  NULL,
  NULL,
  38,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-174'),
  'collection-70-episode-174',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  'Episode 174',
  174,
  NULL,
  NULL,
  174,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-130'),
  'collection-69-episode-130',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  'Episode 130',
  130,
  NULL,
  NULL,
  130,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-65-episode-19'),
  'collection-65-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-111'),
  'collection-63-episode-111',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  'Episode 111',
  111,
  NULL,
  NULL,
  111,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-19'),
  'collection-61-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-59-episode-86'),
  'collection-59-episode-86',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-59'),
  'Episode 86',
  86,
  NULL,
  NULL,
  86,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-98'),
  'collection-57-episode-98',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  'Episode 98',
  98,
  NULL,
  NULL,
  98,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-19'),
  'collection-6-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-63'),
  'collection-5-episode-63',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  'Episode 63',
  63,
  NULL,
  NULL,
  63,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-19'),
  'collection-4-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-38'),
  'collection-3-episode-38',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  'Episode 38',
  38,
  NULL,
  NULL,
  38,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-26'),
  'collection-2-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  'Episode 26',
  26,
  NULL,
  NULL,
  26,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-24'),
  'collection-56-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  'Episode 24',
  24,
  NULL,
  NULL,
  24,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-52'),
  'collection-53-episode-52',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  'Episode 52',
  52,
  NULL,
  NULL,
  52,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-40'),
  'collection-52-episode-40',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  'Episode 40',
  40,
  NULL,
  NULL,
  40,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-51-episode-19'),
  'collection-51-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-51'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-19'),
  'collection-48-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-47-episode-19'),
  'collection-47-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-47'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-19'),
  'collection-43-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-42-episode-19'),
  'collection-42-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-42'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-42'),
  'collection-41-bolum-42',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  'Episode 10 · Bolum 42',
  10,
  42,
  NULL,
  10,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-67'),
  'collection-40-episode-67',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  'Episode 67',
  67,
  NULL,
  NULL,
  67,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-108'),
  'collection-38-bolum-108',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  'Episode 10 · Bolum 108',
  10,
  108,
  NULL,
  10,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-41'),
  'collection-37-bolum-41',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  'Episode 14 · Bolum 41',
  14,
  41,
  NULL,
  14,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-69'),
  'collection-36-episode-69',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  'Episode 69',
  69,
  NULL,
  NULL,
  69,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-19'),
  'collection-34-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-33'),
  'collection-33-episode-33',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  'Episode 33',
  33,
  NULL,
  NULL,
  33,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-28'),
  'collection-31-episode-28',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  'Episode 28',
  28,
  NULL,
  NULL,
  28,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-28-episode-19'),
  'collection-28-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-10'),
  'collection-27-episode-10',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  'Episode 10',
  10,
  NULL,
  NULL,
  10,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-14'),
  'collection-26-episode-14',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  'Episode 14',
  14,
  NULL,
  NULL,
  14,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-19'),
  'collection-25-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-21'),
  'collection-24-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-19'),
  'collection-23-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-20-episode-19'),
  'collection-20-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-20'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-107'),
  'collection-18-episode-107',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  'Episode 107',
  107,
  NULL,
  NULL,
  107,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-73'),
  'collection-17-episode-73',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  'Episode 73',
  73,
  NULL,
  NULL,
  73,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-34'),
  'collection-16-episode-34',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  'Episode 34',
  34,
  NULL,
  NULL,
  34,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-19'),
  'collection-10-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-19'),
  'collection-8-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-7-episode-19'),
  'collection-7-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-7'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-bolum-168'),
  'collection-77-bolum-168',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  'Episode 168 · Bolum 168',
  168,
  168,
  NULL,
  168,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-20'),
  'collection-73-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-131'),
  'collection-69-episode-131',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  'Episode 131',
  131,
  NULL,
  NULL,
  131,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-65-episode-20'),
  'collection-65-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-112'),
  'collection-63-episode-112',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  'Episode 112',
  112,
  NULL,
  NULL,
  112,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-20'),
  'collection-61-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-59-episode-87'),
  'collection-59-episode-87',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-59'),
  'Episode 87',
  87,
  NULL,
  NULL,
  87,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-138'),
  'collection-50-episode-138',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  'Episode 138',
  138,
  NULL,
  NULL,
  138,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-99'),
  'collection-57-episode-99',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  'Episode 99',
  99,
  NULL,
  NULL,
  99,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-20'),
  'collection-6-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-64'),
  'collection-5-episode-64',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  'Episode 64',
  64,
  NULL,
  NULL,
  64,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-20'),
  'collection-4-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-39'),
  'collection-3-episode-39',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  'Episode 39',
  39,
  NULL,
  NULL,
  39,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-27'),
  'collection-2-episode-27',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  'Episode 27',
  27,
  NULL,
  NULL,
  27,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-25'),
  'collection-56-episode-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  'Episode 25',
  25,
  NULL,
  NULL,
  25,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-53'),
  'collection-53-episode-53',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  'Episode 53',
  53,
  NULL,
  NULL,
  53,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-41'),
  'collection-52-episode-41',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  'Episode 41',
  41,
  NULL,
  NULL,
  41,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-51-episode-20'),
  'collection-51-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-51'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-20'),
  'collection-48-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-47-episode-20'),
  'collection-47-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-47'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-20'),
  'collection-43-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-68'),
  'collection-40-episode-68',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  'Episode 68',
  68,
  NULL,
  NULL,
  68,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-70'),
  'collection-36-episode-70',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  'Episode 70',
  70,
  NULL,
  NULL,
  70,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-20'),
  'collection-34-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-34'),
  'collection-33-episode-34',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  'Episode 34',
  34,
  NULL,
  NULL,
  34,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-29'),
  'collection-31-episode-29',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  'Episode 29',
  29,
  NULL,
  NULL,
  29,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-28-episode-20'),
  'collection-28-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-15'),
  'collection-26-episode-15',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  'Episode 15',
  15,
  NULL,
  NULL,
  15,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-20'),
  'collection-23-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-20-episode-20'),
  'collection-20-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-20'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-108'),
  'collection-18-episode-108',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  'Episode 108',
  108,
  NULL,
  NULL,
  108,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-74'),
  'collection-17-episode-74',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  'Episode 74',
  74,
  NULL,
  NULL,
  74,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-35'),
  'collection-16-episode-35',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  'Episode 35',
  35,
  NULL,
  NULL,
  35,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-20'),
  'collection-10-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-20'),
  'collection-8-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-7-episode-20'),
  'collection-7-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-7'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-bolum-11'),
  'collection-78-bolum-11',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  'Episode 11 · Bolum 11',
  11,
  11,
  NULL,
  11,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-bolum-169'),
  'collection-77-bolum-169',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  'Episode 169 · Bolum 169',
  169,
  169,
  NULL,
  169,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-episode-61'),
  'collection-76-episode-61',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  'Episode 61',
  61,
  NULL,
  NULL,
  61,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-21'),
  'collection-73-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-39'),
  'collection-71-episode-39',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  'Episode 39',
  39,
  NULL,
  NULL,
  39,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-175'),
  'collection-70-episode-175',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  'Episode 175',
  175,
  NULL,
  NULL,
  175,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-132'),
  'collection-69-episode-132',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  'Episode 132',
  132,
  NULL,
  NULL,
  132,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-65-episode-21'),
  'collection-65-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-113'),
  'collection-63-episode-113',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  'Episode 113',
  113,
  NULL,
  NULL,
  113,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-21'),
  'collection-61-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-59-episode-88'),
  'collection-59-episode-88',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-59'),
  'Episode 88',
  88,
  NULL,
  NULL,
  88,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-100'),
  'collection-57-episode-100',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  'Episode 100',
  100,
  NULL,
  NULL,
  100,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-21'),
  'collection-6-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-65'),
  'collection-5-episode-65',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  'Episode 65',
  65,
  NULL,
  NULL,
  65,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-21'),
  'collection-4-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-40'),
  'collection-3-episode-40',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  'Episode 40',
  40,
  NULL,
  NULL,
  40,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-28'),
  'collection-2-episode-28',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  'Episode 28',
  28,
  NULL,
  NULL,
  28,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-26'),
  'collection-56-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  'Episode 26',
  26,
  NULL,
  NULL,
  26,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-54'),
  'collection-53-episode-54',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  'Episode 54',
  54,
  NULL,
  NULL,
  54,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-42'),
  'collection-52-episode-42',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  'Episode 42',
  42,
  NULL,
  NULL,
  42,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-51-episode-21'),
  'collection-51-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-51'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-21'),
  'collection-48-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-21'),
  'collection-43-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-43'),
  'collection-41-bolum-43',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  'Episode 11 · Bolum 43',
  11,
  43,
  NULL,
  11,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-69'),
  'collection-40-episode-69',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  'Episode 69',
  69,
  NULL,
  NULL,
  69,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-109'),
  'collection-38-bolum-109',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  'Episode 11 · Bolum 109',
  11,
  109,
  NULL,
  11,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-42'),
  'collection-37-bolum-42',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  'Episode 15 · Bolum 42',
  15,
  42,
  NULL,
  15,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-71'),
  'collection-36-episode-71',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  'Episode 71',
  71,
  NULL,
  NULL,
  71,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-21'),
  'collection-34-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-35'),
  'collection-33-episode-35',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  'Episode 35',
  35,
  NULL,
  NULL,
  35,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-30'),
  'collection-31-episode-30',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  'Episode 30',
  30,
  NULL,
  NULL,
  30,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-28-episode-21'),
  'collection-28-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-11'),
  'collection-27-episode-11',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  'Episode 11',
  11,
  NULL,
  NULL,
  11,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-16'),
  'collection-26-episode-16',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  'Episode 16',
  16,
  NULL,
  NULL,
  16,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-20'),
  'collection-25-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-22'),
  'collection-24-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-21'),
  'collection-23-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-20-episode-21'),
  'collection-20-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-20'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-109'),
  'collection-18-episode-109',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  'Episode 109',
  109,
  NULL,
  NULL,
  109,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-75'),
  'collection-17-episode-75',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  'Episode 75',
  75,
  NULL,
  NULL,
  75,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-36-part-1'),
  'collection-16-episode-36-part-1',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  'Episode 36 · Part 1',
  36,
  NULL,
  1,
  36,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-21'),
  'collection-10-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-21'),
  'collection-8-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-7-episode-21'),
  'collection-7-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-7'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-bolum-170'),
  'collection-77-bolum-170',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  'Episode 170 · Bolum 170',
  170,
  170,
  NULL,
  170,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-61'),
  'collection-76-bolum-61',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  'Episode 61 · Bolum 61',
  61,
  61,
  NULL,
  61,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-22'),
  'collection-73-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-133'),
  'collection-69-episode-133',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  'Episode 133',
  133,
  NULL,
  NULL,
  133,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-65-episode-22'),
  'collection-65-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-114'),
  'collection-63-episode-114',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  'Episode 114',
  114,
  NULL,
  NULL,
  114,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-22'),
  'collection-61-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-59-episode-89'),
  'collection-59-episode-89',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-59'),
  'Episode 89',
  89,
  NULL,
  NULL,
  89,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-101'),
  'collection-57-episode-101',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  'Episode 101',
  101,
  NULL,
  NULL,
  101,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-22'),
  'collection-6-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-66'),
  'collection-5-episode-66',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  'Episode 66',
  66,
  NULL,
  NULL,
  66,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-22'),
  'collection-4-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-41'),
  'collection-3-episode-41',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  'Episode 41',
  41,
  NULL,
  NULL,
  41,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-29'),
  'collection-2-episode-29',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  'Episode 29',
  29,
  NULL,
  NULL,
  29,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-27'),
  'collection-56-episode-27',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  'Episode 27',
  27,
  NULL,
  NULL,
  27,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-55'),
  'collection-53-episode-55',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  'Episode 55',
  55,
  NULL,
  NULL,
  55,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-43'),
  'collection-52-episode-43',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  'Episode 43',
  43,
  NULL,
  NULL,
  43,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-51-episode-22'),
  'collection-51-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-51'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-22'),
  'collection-48-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-22'),
  'collection-43-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-70'),
  'collection-40-episode-70',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  'Episode 70',
  70,
  NULL,
  NULL,
  70,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-72'),
  'collection-36-episode-72',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  'Episode 72',
  72,
  NULL,
  NULL,
  72,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-22'),
  'collection-34-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-36'),
  'collection-33-episode-36',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  'Episode 36',
  36,
  NULL,
  NULL,
  36,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-31'),
  'collection-31-episode-31',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  'Episode 31',
  31,
  NULL,
  NULL,
  31,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-28-episode-22'),
  'collection-28-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-17'),
  'collection-26-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  'Episode 17',
  17,
  NULL,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-22'),
  'collection-23-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-20-episode-22'),
  'collection-20-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-20'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-110'),
  'collection-18-episode-110',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  'Episode 110',
  110,
  NULL,
  NULL,
  110,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-76'),
  'collection-17-episode-76',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  'Episode 76',
  76,
  NULL,
  NULL,
  76,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-36-part-2'),
  'collection-16-episode-36-part-2',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  'Episode 36 · Part 2',
  36,
  NULL,
  2,
  36,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-22'),
  'collection-10-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-22'),
  'collection-8-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-7-episode-22'),
  'collection-7-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-7'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-bolum-12'),
  'collection-78-bolum-12',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  'Episode 12 · Bolum 12',
  12,
  12,
  NULL,
  12,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-bolum-171'),
  'collection-77-bolum-171',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  'Episode 171 · Bolum 171',
  171,
  171,
  NULL,
  171,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-62'),
  'collection-76-bolum-62',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  'Episode 62 · Bolum 62',
  62,
  62,
  NULL,
  62,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-23'),
  'collection-73-episode-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  'Episode 23',
  23,
  NULL,
  NULL,
  23,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-40'),
  'collection-71-episode-40',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  'Episode 40',
  40,
  NULL,
  NULL,
  40,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-176'),
  'collection-70-episode-176',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  'Episode 176',
  176,
  NULL,
  NULL,
  176,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-134'),
  'collection-69-episode-134',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  'Episode 134',
  134,
  NULL,
  NULL,
  134,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-65-episode-23'),
  'collection-65-episode-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  'Episode 23',
  23,
  NULL,
  NULL,
  23,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-115'),
  'collection-63-episode-115',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  'Episode 115',
  115,
  NULL,
  NULL,
  115,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-23'),
  'collection-61-episode-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  'Episode 23',
  23,
  NULL,
  NULL,
  23,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-59-episode-90'),
  'collection-59-episode-90',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-59'),
  'Episode 90',
  90,
  NULL,
  NULL,
  90,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-139'),
  'collection-50-episode-139',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  'Episode 139',
  139,
  NULL,
  NULL,
  139,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-102'),
  'collection-57-episode-102',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  'Episode 102',
  102,
  NULL,
  NULL,
  102,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-23'),
  'collection-6-episode-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  'Episode 23',
  23,
  NULL,
  NULL,
  23,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-67'),
  'collection-5-episode-67',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  'Episode 67',
  67,
  NULL,
  NULL,
  67,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-23'),
  'collection-4-episode-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  'Episode 23',
  23,
  NULL,
  NULL,
  23,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-42'),
  'collection-3-episode-42',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  'Episode 42',
  42,
  NULL,
  NULL,
  42,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-3'),
  'collection-2-episode-3',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  'Episode 3',
  3,
  NULL,
  NULL,
  3,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-28'),
  'collection-56-episode-28',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  'Episode 28',
  28,
  NULL,
  NULL,
  28,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-56'),
  'collection-53-episode-56',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  'Episode 56',
  56,
  NULL,
  NULL,
  56,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-44'),
  'collection-52-episode-44',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  'Episode 44',
  44,
  NULL,
  NULL,
  44,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-23'),
  'collection-48-episode-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  'Episode 23',
  23,
  NULL,
  NULL,
  23,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-23'),
  'collection-43-episode-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  'Episode 23',
  23,
  NULL,
  NULL,
  23,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-44'),
  'collection-41-bolum-44',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  'Episode 12 · Bolum 44',
  12,
  44,
  NULL,
  12,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-71'),
  'collection-40-episode-71',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  'Episode 71',
  71,
  NULL,
  NULL,
  71,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-110'),
  'collection-38-bolum-110',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  'Episode 12 · Bolum 110',
  12,
  110,
  NULL,
  12,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-43'),
  'collection-37-bolum-43',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  'Episode 16 · Bolum 43',
  16,
  43,
  NULL,
  16,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-73'),
  'collection-36-episode-73',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  'Episode 73',
  73,
  NULL,
  NULL,
  73,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-23'),
  'collection-34-episode-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  'Episode 23',
  23,
  NULL,
  NULL,
  23,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-37'),
  'collection-33-episode-37',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  'Episode 37',
  37,
  NULL,
  NULL,
  37,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-32'),
  'collection-31-episode-32',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  'Episode 32',
  32,
  NULL,
  NULL,
  32,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-28-episode-23'),
  'collection-28-episode-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  'Episode 23',
  23,
  NULL,
  NULL,
  23,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-12'),
  'collection-27-episode-12',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  'Episode 12',
  12,
  NULL,
  NULL,
  12,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-18'),
  'collection-26-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  'Episode 18',
  18,
  NULL,
  NULL,
  18,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-21'),
  'collection-25-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-23'),
  'collection-24-episode-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  'Episode 23',
  23,
  NULL,
  NULL,
  23,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-23'),
  'collection-23-episode-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  'Episode 23',
  23,
  NULL,
  NULL,
  23,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-111'),
  'collection-18-episode-111',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  'Episode 111',
  111,
  NULL,
  NULL,
  111,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-77'),
  'collection-17-episode-77',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  'Episode 77',
  77,
  NULL,
  NULL,
  77,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-37'),
  'collection-16-episode-37',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  'Episode 37',
  37,
  NULL,
  NULL,
  37,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-23'),
  'collection-10-episode-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  'Episode 23',
  23,
  NULL,
  NULL,
  23,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-23'),
  'collection-8-episode-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  'Episode 23',
  23,
  NULL,
  NULL,
  23,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-7-episode-23'),
  'collection-7-episode-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-7'),
  'Episode 23',
  23,
  NULL,
  NULL,
  23,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-episode-172'),
  'collection-77-episode-172',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  'Episode 172',
  172,
  NULL,
  NULL,
  172,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-24'),
  'collection-73-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  'Episode 24',
  24,
  NULL,
  NULL,
  24,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-135'),
  'collection-69-episode-135',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  'Episode 135',
  135,
  NULL,
  NULL,
  135,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-65-episode-24'),
  'collection-65-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  'Episode 24',
  24,
  NULL,
  NULL,
  24,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-116'),
  'collection-63-episode-116',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  'Episode 116',
  116,
  NULL,
  NULL,
  116,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-24'),
  'collection-61-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  'Episode 24',
  24,
  NULL,
  NULL,
  24,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-59-episode-91'),
  'collection-59-episode-91',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-59'),
  'Episode 91',
  91,
  NULL,
  NULL,
  91,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-140'),
  'collection-50-episode-140',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  'Episode 140',
  140,
  NULL,
  NULL,
  140,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-103'),
  'collection-57-episode-103',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  'Episode 103',
  103,
  NULL,
  NULL,
  103,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-24'),
  'collection-6-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  'Episode 24',
  24,
  NULL,
  NULL,
  24,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-68'),
  'collection-5-episode-68',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  'Episode 68',
  68,
  NULL,
  NULL,
  68,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-24'),
  'collection-4-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  'Episode 24',
  24,
  NULL,
  NULL,
  24,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-43'),
  'collection-3-episode-43',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  'Episode 43',
  43,
  NULL,
  NULL,
  43,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-30'),
  'collection-2-episode-30',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  'Episode 30',
  30,
  NULL,
  NULL,
  30,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-29'),
  'collection-56-episode-29',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  'Episode 29',
  29,
  NULL,
  NULL,
  29,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-57'),
  'collection-53-episode-57',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  'Episode 57',
  57,
  NULL,
  NULL,
  57,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-45'),
  'collection-52-episode-45',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  'Episode 45',
  45,
  NULL,
  NULL,
  45,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-24'),
  'collection-48-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  'Episode 24',
  24,
  NULL,
  NULL,
  24,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-24'),
  'collection-43-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  'Episode 24',
  24,
  NULL,
  NULL,
  24,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-72'),
  'collection-40-episode-72',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  'Episode 72',
  72,
  NULL,
  NULL,
  72,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-74'),
  'collection-36-episode-74',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  'Episode 74',
  74,
  NULL,
  NULL,
  74,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-24'),
  'collection-34-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  'Episode 24',
  24,
  NULL,
  NULL,
  24,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-38'),
  'collection-33-episode-38',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  'Episode 38',
  38,
  NULL,
  NULL,
  38,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-33'),
  'collection-31-episode-33',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  'Episode 33',
  33,
  NULL,
  NULL,
  33,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-28-episode-24'),
  'collection-28-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  'Episode 24',
  24,
  NULL,
  NULL,
  24,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-19'),
  'collection-26-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  'Episode 19',
  19,
  NULL,
  NULL,
  19,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-24'),
  'collection-23-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  'Episode 24',
  24,
  NULL,
  NULL,
  24,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-112'),
  'collection-18-episode-112',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  'Episode 112',
  112,
  NULL,
  NULL,
  112,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-78'),
  'collection-17-episode-78',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  'Episode 78',
  78,
  NULL,
  NULL,
  78,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-38'),
  'collection-16-episode-38',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  'Episode 38',
  38,
  NULL,
  NULL,
  38,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-24'),
  'collection-10-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  'Episode 24',
  24,
  NULL,
  NULL,
  24,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-24'),
  'collection-8-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  'Episode 24',
  24,
  NULL,
  NULL,
  24,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-7-episode-24'),
  'collection-7-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-7'),
  'Episode 24',
  24,
  NULL,
  NULL,
  24,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-bolum-13'),
  'collection-78-bolum-13',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  'Episode 13 · Bolum 13',
  13,
  13,
  NULL,
  13,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-episode-173'),
  'collection-77-episode-173',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  'Episode 173',
  173,
  NULL,
  NULL,
  173,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-63'),
  'collection-76-bolum-63',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  'Episode 63 · Bolum 63',
  63,
  63,
  NULL,
  63,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-25'),
  'collection-73-episode-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  'Episode 25',
  25,
  NULL,
  NULL,
  25,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-41'),
  'collection-71-episode-41',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  'Episode 41',
  41,
  NULL,
  NULL,
  41,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-177'),
  'collection-70-episode-177',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  'Episode 177',
  177,
  NULL,
  NULL,
  177,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-136'),
  'collection-69-episode-136',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  'Episode 136',
  136,
  NULL,
  NULL,
  136,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-65-episode-25'),
  'collection-65-episode-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  'Episode 25',
  25,
  NULL,
  NULL,
  25,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-117'),
  'collection-63-episode-117',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  'Episode 117',
  117,
  NULL,
  NULL,
  117,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-25'),
  'collection-61-episode-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  'Episode 25',
  25,
  NULL,
  NULL,
  25,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-59-episode-92'),
  'collection-59-episode-92',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-59'),
  'Episode 92',
  92,
  NULL,
  NULL,
  92,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-104'),
  'collection-57-episode-104',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  'Episode 104',
  104,
  NULL,
  NULL,
  104,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-25'),
  'collection-6-episode-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  'Episode 25',
  25,
  NULL,
  NULL,
  25,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-69'),
  'collection-5-episode-69',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  'Episode 69',
  69,
  NULL,
  NULL,
  69,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-25'),
  'collection-4-episode-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  'Episode 25',
  25,
  NULL,
  NULL,
  25,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-44'),
  'collection-3-episode-44',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  'Episode 44',
  44,
  NULL,
  NULL,
  44,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-31'),
  'collection-2-episode-31',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  'Episode 31',
  31,
  NULL,
  NULL,
  31,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-30'),
  'collection-56-episode-30',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  'Episode 30',
  30,
  NULL,
  NULL,
  30,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-58'),
  'collection-53-episode-58',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  'Episode 58',
  58,
  NULL,
  NULL,
  58,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-46'),
  'collection-52-episode-46',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  'Episode 46',
  46,
  NULL,
  NULL,
  46,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-25'),
  'collection-48-episode-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  'Episode 25',
  25,
  NULL,
  NULL,
  25,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-25'),
  'collection-43-episode-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  'Episode 25',
  25,
  NULL,
  NULL,
  25,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-41-bolum-45'),
  'collection-41-bolum-45',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  'Episode 13 · Bolum 45',
  13,
  45,
  NULL,
  13,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-73'),
  'collection-40-episode-73',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  'Episode 73',
  73,
  NULL,
  NULL,
  73,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-38-bolum-111'),
  'collection-38-bolum-111',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  'Episode 13 · Bolum 111',
  13,
  111,
  NULL,
  13,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-75'),
  'collection-36-episode-75',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  'Episode 75',
  75,
  NULL,
  NULL,
  75,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-25'),
  'collection-34-episode-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  'Episode 25',
  25,
  NULL,
  NULL,
  25,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-39'),
  'collection-33-episode-39',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  'Episode 39',
  39,
  NULL,
  NULL,
  39,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-34'),
  'collection-31-episode-34',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  'Episode 34',
  34,
  NULL,
  NULL,
  34,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-28-episode-25'),
  'collection-28-episode-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  'Episode 25',
  25,
  NULL,
  NULL,
  25,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-27-episode-13'),
  'collection-27-episode-13',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  'Episode 13',
  13,
  NULL,
  NULL,
  13,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-20'),
  'collection-26-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  'Episode 20',
  20,
  NULL,
  NULL,
  20,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-25-episode-22'),
  'collection-25-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  'Episode 22',
  22,
  NULL,
  NULL,
  22,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-24-episode-24'),
  'collection-24-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  'Episode 24',
  24,
  NULL,
  NULL,
  24,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-25'),
  'collection-23-episode-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  'Episode 25',
  25,
  NULL,
  NULL,
  25,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-113'),
  'collection-18-episode-113',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  'Episode 113',
  113,
  NULL,
  NULL,
  113,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-79'),
  'collection-17-episode-79',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  'Episode 79',
  79,
  NULL,
  NULL,
  79,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-39'),
  'collection-16-episode-39',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  'Episode 39',
  39,
  NULL,
  NULL,
  39,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-25'),
  'collection-10-episode-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  'Episode 25',
  25,
  NULL,
  NULL,
  25,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-25'),
  'collection-8-episode-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  'Episode 25',
  25,
  NULL,
  NULL,
  25,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-7-episode-25'),
  'collection-7-episode-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-7'),
  'Episode 25',
  25,
  NULL,
  NULL,
  25,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-episode-174'),
  'collection-77-episode-174',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  'Episode 174',
  174,
  NULL,
  NULL,
  174,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-26'),
  'collection-73-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  'Episode 26',
  26,
  NULL,
  NULL,
  26,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-137'),
  'collection-69-episode-137',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  'Episode 137',
  137,
  NULL,
  NULL,
  137,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-65-episode-26'),
  'collection-65-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  'Episode 26',
  26,
  NULL,
  NULL,
  26,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-118'),
  'collection-63-episode-118',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  'Episode 118',
  118,
  NULL,
  NULL,
  118,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-26'),
  'collection-61-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  'Episode 26',
  26,
  NULL,
  NULL,
  26,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-episode-141'),
  'collection-50-episode-141',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  'Episode 141',
  141,
  NULL,
  NULL,
  141,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-105'),
  'collection-57-episode-105',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  'Episode 105',
  105,
  NULL,
  NULL,
  105,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-26'),
  'collection-6-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  'Episode 26',
  26,
  NULL,
  NULL,
  26,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-70'),
  'collection-5-episode-70',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  'Episode 70',
  70,
  NULL,
  NULL,
  70,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-26'),
  'collection-4-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  'Episode 26',
  26,
  NULL,
  NULL,
  26,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-45'),
  'collection-3-episode-45',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  'Episode 45',
  45,
  NULL,
  NULL,
  45,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-32'),
  'collection-2-episode-32',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  'Episode 32',
  32,
  NULL,
  NULL,
  32,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-56-episode-31'),
  'collection-56-episode-31',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  'Episode 31',
  31,
  NULL,
  NULL,
  31,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-53-episode-59'),
  'collection-53-episode-59',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  'Episode 59',
  59,
  NULL,
  NULL,
  59,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-52-episode-47'),
  'collection-52-episode-47',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  'Episode 47',
  47,
  NULL,
  NULL,
  47,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-48-episode-26'),
  'collection-48-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  'Episode 26',
  26,
  NULL,
  NULL,
  26,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-43-episode-26'),
  'collection-43-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  'Episode 26',
  26,
  NULL,
  NULL,
  26,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-40-episode-74'),
  'collection-40-episode-74',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  'Episode 74',
  74,
  NULL,
  NULL,
  74,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-37-bolum-44'),
  'collection-37-bolum-44',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  'Episode 17 · Bolum 44',
  17,
  44,
  NULL,
  17,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-36-episode-76'),
  'collection-36-episode-76',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  'Episode 76',
  76,
  NULL,
  NULL,
  76,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-34-episode-26'),
  'collection-34-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  'Episode 26',
  26,
  NULL,
  NULL,
  26,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-33-episode-40'),
  'collection-33-episode-40',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  'Episode 40',
  40,
  NULL,
  NULL,
  40,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-31-episode-35'),
  'collection-31-episode-35',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  'Episode 35',
  35,
  NULL,
  NULL,
  35,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-28-episode-26'),
  'collection-28-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  'Episode 26',
  26,
  NULL,
  NULL,
  26,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-26-episode-21'),
  'collection-26-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  'Episode 21',
  21,
  NULL,
  NULL,
  21,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-23-episode-26'),
  'collection-23-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  'Episode 26',
  26,
  NULL,
  NULL,
  26,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-18-episode-114'),
  'collection-18-episode-114',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  'Episode 114',
  114,
  NULL,
  NULL,
  114,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-17-episode-80'),
  'collection-17-episode-80',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  'Episode 80',
  80,
  NULL,
  NULL,
  80,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-16-episode-40'),
  'collection-16-episode-40',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  'Episode 40',
  40,
  NULL,
  NULL,
  40,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-10-episode-26'),
  'collection-10-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  'Episode 26',
  26,
  NULL,
  NULL,
  26,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-8-episode-26'),
  'collection-8-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  'Episode 26',
  26,
  NULL,
  NULL,
  26,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-7-episode-26'),
  'collection-7-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-7'),
  'Episode 26',
  26,
  NULL,
  NULL,
  26,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-78-bolum-14'),
  'collection-78-bolum-14',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  'Episode 14 · Bolum 14',
  14,
  14,
  NULL,
  14,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-77-episode-175'),
  'collection-77-episode-175',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  'Episode 175',
  175,
  NULL,
  NULL,
  175,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-76-bolum-64'),
  'collection-76-bolum-64',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  'Episode 64 · Bolum 64',
  64,
  64,
  NULL,
  64,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-27'),
  'collection-73-episode-27',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  'Episode 27',
  27,
  NULL,
  NULL,
  27,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-71-episode-42'),
  'collection-71-episode-42',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  'Episode 42',
  42,
  NULL,
  NULL,
  42,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-70-episode-178'),
  'collection-70-episode-178',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  'Episode 178',
  178,
  NULL,
  NULL,
  178,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-69-episode-138'),
  'collection-69-episode-138',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  'Episode 138',
  138,
  NULL,
  NULL,
  138,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-65-episode-27'),
  'collection-65-episode-27',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  'Episode 27',
  27,
  NULL,
  NULL,
  27,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-63-episode-119'),
  'collection-63-episode-119',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  'Episode 119',
  119,
  NULL,
  NULL,
  119,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-61-episode-27'),
  'collection-61-episode-27',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  'Episode 27',
  27,
  NULL,
  NULL,
  27,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-50-bolum-141'),
  'collection-50-bolum-141',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  'Bolum 141',
  NULL,
  141,
  NULL,
  141,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-57-episode-106'),
  'collection-57-episode-106',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  'Episode 106',
  106,
  NULL,
  NULL,
  106,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-6-episode-27'),
  'collection-6-episode-27',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  'Episode 27',
  27,
  NULL,
  NULL,
  27,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-5-episode-71'),
  'collection-5-episode-71',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  'Episode 71',
  71,
  NULL,
  NULL,
  71,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-4-episode-27'),
  'collection-4-episode-27',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  'Episode 27',
  27,
  NULL,
  NULL,
  27,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-3-episode-46'),
  'collection-3-episode-46',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  'Episode 46',
  46,
  NULL,
  NULL,
  46,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-2-episode-33'),
  'collection-2-episode-33',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  'Episode 33',
  33,
  NULL,
  NULL,
  33,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();
