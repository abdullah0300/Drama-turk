INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-1'),
  'collection-68-episode-1',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  'Episode 1',
  1,
  NULL,
  NULL,
  1,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-16'),
  'collection-68-episode-16',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-17'),
  'collection-68-episode-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-18'),
  'collection-68-episode-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-19'),
  'collection-68-episode-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-20'),
  'collection-68-episode-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-21'),
  'collection-68-episode-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-22'),
  'collection-68-episode-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-23'),
  'collection-68-episode-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-24'),
  'collection-68-episode-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-25'),
  'collection-68-episode-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-26'),
  'collection-68-episode-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-27'),
  'collection-68-episode-27',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-28'),
  'collection-68-episode-28',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-29'),
  'collection-68-episode-29',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-30'),
  'collection-68-episode-30',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-31'),
  'collection-68-episode-31',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-32'),
  'collection-68-episode-32',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-33'),
  'collection-68-episode-33',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-34'),
  'collection-68-episode-34',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-35'),
  'collection-68-episode-35',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-36'),
  'collection-68-episode-36',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-37'),
  'collection-68-episode-37',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-38'),
  'collection-68-episode-38',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-39'),
  'collection-68-episode-39',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-40'),
  'collection-68-episode-40',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-41'),
  'collection-68-episode-41',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-42'),
  'collection-68-episode-42',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-43'),
  'collection-68-episode-43',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-44'),
  'collection-68-episode-44',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-45'),
  'collection-68-episode-45',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-46'),
  'collection-68-episode-46',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-47'),
  'collection-68-episode-47',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-48'),
  'collection-68-episode-48',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  'Episode 48',
  48,
  NULL,
  NULL,
  48,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-bolum-149'),
  'collection-68-bolum-149',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  'Episode 49 · Bolum 149',
  49,
  149,
  NULL,
  49,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();


INSERT INTO public.episode_groups (id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-bolum-49'),
  'collection-68-bolum-49',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  'Episode 49 · Bolum 49',
  49,
  49,
  NULL,
  49,
  'episode',
  'published'
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  reported_episode_number = EXCLUDED.reported_episode_number,
  bolum = EXCLUDED.bolum,
  part = EXCLUDED.part,
  order_key = EXCLUDED.order_key,
  updated_at = now();

