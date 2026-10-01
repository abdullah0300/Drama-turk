INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-47'),
  'collection-47',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mevlana-celaleddin-rumi'),
  'collection-47',
  'collection-47',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-46'),
  'collection-46',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mendirman-jaloliddin'),
  'collection-46',
  'collection-46',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  'collection-43',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-43',
  'collection-43',
  'unresolved',
  '{"4"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-42'),
  'collection-42',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'al-sancak'),
  'collection-42',
  'collection-42',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  'collection-41',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'barbaroslar'),
  'collection-41',
  'collection-41',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  'collection-40',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'teskilat'),
  'collection-40',
  'collection-40',
  'unresolved',
  '{"3"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  'collection-38',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-38',
  'collection-38',
  'unresolved',
  '{"4"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  'collection-37',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'alparslan-buyuk-selcuklu'),
  'collection-37',
  'collection-37',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  'collection-36',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'soz'),
  'collection-36',
  'collection-36',
  'unresolved',
  '{"3"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  'collection-34',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-34',
  'collection-34',
  'unresolved',
  '{"3"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  'collection-33',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'teskilat'),
  'collection-33',
  'collection-33',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-32'),
  'collection-32',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'teskilat'),
  'collection-32',
  'collection-32',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  'collection-31',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'soz'),
  'collection-31',
  'collection-31',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-30'),
  'collection-30',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'soz'),
  'collection-30',
  'collection-30',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  'collection-28',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'destan'),
  'collection-28',
  'collection-28',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  'collection-27',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'alparslan-buyuk-selcuklu'),
  'collection-27',
  'collection-27',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  'collection-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-26',
  'collection-26',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  'collection-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-25',
  'collection-25',
  'unresolved',
  '{"3"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  'collection-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'barbaroslar'),
  'collection-24',
  'collection-24',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  'collection-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-23',
  'collection-23',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-22'),
  'collection-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mendirman-jaloliddin'),
  'collection-22',
  'collection-22',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-21'),
  'collection-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'yunus-emre'),
  'collection-21',
  'collection-21',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-20'),
  'collection-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'yunus-emre'),
  'collection-20',
  'collection-20',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-19'),
  'collection-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sultan-abdulhamid'),
  'collection-19',
  'collection-19',
  'unresolved',
  '{"5"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  'collection-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sultan-abdulhamid'),
  'collection-18',
  'collection-18',
  'unresolved',
  '{"4"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  'collection-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sultan-abdulhamid'),
  'collection-17',
  'collection-17',
  'unresolved',
  '{"3"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  'collection-16',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sultan-abdulhamid'),
  'collection-16',
  'collection-16',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-11'),
  'collection-11',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sultan-abdulhamid'),
  'collection-11',
  'collection-11',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  'collection-10',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kosem-sultan'),
  'collection-10',
  'collection-10',
  'unresolved',
  '{"1","2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  'collection-8',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-8',
  'collection-8',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-7'),
  'collection-7',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-7',
  'collection-7',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();
