-- PART 2: Mehmed Pilot Season 2 (collection-68)

-- Pilot Episode Groups

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


-- Pilot Video Variants & Streams

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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3207'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-16.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3220'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-16.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3222'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-17.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3226'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-17.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3231'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-18.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3232'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-18.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3238'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-19.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3241'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-19.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3247'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-20.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3248'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-20.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3259'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-21.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3260'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-21.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3271'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-22.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3272'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-22.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3279'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-23.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3280'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-23.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3289'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3290'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-24.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3296'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3297'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-25.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3303'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3304'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-26.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3388'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3389'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-27.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3414'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3415'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-28.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3421'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3422'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-29.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3428'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-30.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3429'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-30.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3435'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-31.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3436'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-31.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3476'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-32.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


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


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3477'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-32.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3486'),
  'video-3486',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-33'),
  'Episode 33',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1738759930.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3486'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-33.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3487'),
  'video-3487',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-33'),
  'Episode 33',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1738759423.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3487'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-33.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3493'),
  'video-3493',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-34'),
  'Episode 34',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1739292045.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3493'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-34.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3494'),
  'video-3494',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-34'),
  'Episode 34',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1739292740.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3494'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-34.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3500'),
  'video-3500',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-35'),
  'Episode 35',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1739898276.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3500'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-35.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3501'),
  'video-3501',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-35'),
  'Episode 35',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1739898909.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3501'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-35.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3507'),
  'video-3507',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-36'),
  'Episode 36',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1740500499.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3507'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-36.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3508'),
  'video-3508',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-36'),
  'Episode 36',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1740501394.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3508'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-36.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3556'),
  'video-3556',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-37'),
  'Episode 37',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1741135447.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3556'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-37.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3557'),
  'video-3557',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-37'),
  'Episode 37',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1741136211.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3557'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-37.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3563'),
  'video-3563',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-38'),
  'Episode 38',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1741710669.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3563'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-38.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3564'),
  'video-3564',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-38'),
  'Episode 38',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1741710953.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3564'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-38.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3570'),
  'video-3570',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-39'),
  'Episode 39',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1742315187.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3570'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-39.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3572'),
  'video-3572',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-39'),
  'Episode 39',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1742315608.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3572'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-37.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3578'),
  'video-3578',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-40'),
  'Episode 40',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1742908327.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3578'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-40.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3579'),
  'video-3579',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-40'),
  'Episode 40',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1742908680.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3579'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-40.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3612'),
  'video-3612',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-41'),
  'Episode 41',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1743567273.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3612'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-41.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3613'),
  'video-3613',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-41'),
  'Episode 41',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1743567988.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3613'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-41.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3619'),
  'video-3619',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-42'),
  'Episode 42',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1744734031.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3619'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-42.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3620'),
  'video-3620',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-42'),
  'Episode 42',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1744734325.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3620'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-42.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3656'),
  'video-3656',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-43'),
  'Episode 43',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1745343284.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3656'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-43.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3657'),
  'video-3657',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-43'),
  'Episode 43',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1745343553.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3657'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S2/Episode-43.mp4/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3663'),
  'video-3663',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-44'),
  'Episode 44',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1745944936.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3663'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-44.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3664'),
  'video-3664',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-44'),
  'Episode 44',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1745945237.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3664'),
  'https://cdn.fastmotion.io/8fd7045e-7f4e-467c-9d54-746078924ef0/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3670'),
  'video-3670',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-45'),
  'Episode 45',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1746577385.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3670'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-45.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3671'),
  'video-3671',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-45'),
  'Episode 45',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1746577855.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3671'),
  'https://cdn.fastmotion.io/c1c228d4-6c8f-4555-ad4b-d831f457be36/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3682'),
  'video-3682',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-46'),
  'Episode 46',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1747759267.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3682'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-46.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3683'),
  'video-3683',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-46'),
  'Episode 46',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1747759934.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3683'),
  'https://cdn.fastmotion.io/6c10098d-9047-42fb-8e61-340df0bd9dd5/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3687'),
  'video-3687',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-47'),
  'Episode 47',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1748362416.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3687'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-47.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3688'),
  'video-3688',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-47'),
  'Episode 47',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1748362701.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3688'),
  'https://cdn.fastmotion.io/20e239e4-f28d-491c-9a34-a79e302f678f/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3692'),
  'video-3692',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-48'),
  'Episode 48',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1748969397.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3692'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-48.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3693'),
  'video-3693',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-episode-48'),
  'Episode 48',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1748969604.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3693'),
  'https://cdn.fastmotion.io/8eccad9e-23dd-4444-a72c-5708065dd614/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3696'),
  'video-3696',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-bolum-149'),
  'Episode 49 · Bolum 149',
  2,
  '{"Urdu"}',
  'subtitled',
  'published',
  NULL,
  'https://play.niazitv.pk/images/episode_1749626631.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3696'),
  'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S2/Episode-49.smil/index.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;


INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3697'),
  'video-3697',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-68-bolum-49'),
  'Episode 49 · Bolum 49',
  2,
  '{"English"}',
  'subtitled',
  'published',
  2700,
  'https://play.niazitv.pk/images/episode_1749627057.webp'
)
ON CONFLICT (source_id) DO UPDATE SET
  display_label = EXCLUDED.display_label,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  updated_at = now();


INSERT INTO public.stream_sources (variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3697'),
  'https://cdn.fastmotion.io/d9f78fd8-72ae-413c-ab65-d28c7d55062e/playlist.m3u8',
  'hls',
  true,
  1,
  'reachable'
)
ON CONFLICT DO NOTHING;
