-- 63 Catalog Collections

INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-82'),
  'collection-82',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mehmed-fetihler-sultani'),
  'collection-82',
  'collection-82',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-88'),
  'collection-88',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mehmed-fetihler-sultani'),
  'collection-88',
  'collection-88',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-87'),
  'collection-87',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sevdan-bir-ates'),
  'collection-87',
  'collection-87',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-86'),
  'collection-86',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'tasacak-bu-deniz'),
  'collection-86',
  'collection-86',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-84'),
  'collection-84',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sumud'),
  'collection-84',
  'collection-84',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-83'),
  'collection-83',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'teskilat'),
  'collection-83',
  'collection-83',
  'unresolved',
  '{"7"}',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  'collection-78',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-orhan'),
  'collection-78',
  'collection-78',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  'collection-77',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'teskilat'),
  'collection-77',
  'collection-77',
  'unresolved',
  '{"6"}',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  'collection-76',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mehmed-fetihler-sultani'),
  'collection-76',
  'collection-76',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  'collection-73',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-73',
  'collection-73',
  'unresolved',
  '{"6"}',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-72'),
  'collection-72',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mehmed-fetihler-sultani'),
  'collection-72',
  'collection-72',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  'collection-71',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'salahuddin-ayyubi'),
  'collection-71',
  'collection-71',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  'collection-70',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-70',
  'collection-70',
  'unresolved',
  '{"6"}',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  'collection-69',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'teskilat'),
  'collection-69',
  'collection-69',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  'collection-68',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mehmed-fetihler-sultani'),
  'collection-68',
  'collection-68',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  -100
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  'collection-65',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'al-hashashin'),
  'collection-65',
  'collection-65',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  'collection-63',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'the-pit-cukur'),
  'collection-63',
  'collection-63',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  'collection-61',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-61',
  'collection-61',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-59'),
  'collection-59',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'the-pit-cukur'),
  'collection-59',
  'collection-59',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  'collection-50',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-50',
  'collection-50',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  'collection-57',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'teskilat'),
  'collection-57',
  'collection-57',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  'collection-6',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'ertugrul-ghazi'),
  'collection-6',
  'collection-6',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  'collection-5',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'ertugrul-ghazi'),
  'collection-5',
  'collection-5',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  'collection-4',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'ertugrul-ghazi'),
  'collection-4',
  'collection-4',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  'collection-3',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'ertugrul-ghazi'),
  'collection-3',
  'collection-3',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  'collection-2',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'ertugrul-ghazi'),
  'collection-2',
  'collection-2',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  'collection-56',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'alparslan-buyuk-selcuklu'),
  'collection-56',
  'collection-56',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  'collection-53',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'the-pit-cukur'),
  'collection-53',
  'collection-53',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  'collection-52',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'ates-kuslari'),
  'collection-52',
  'collection-52',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-51'),
  'collection-51',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'halka'),
  'collection-51',
  'collection-51',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-49'),
  'collection-49',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'dokuz-oguz'),
  'collection-49',
  'collection-49',
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
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  'collection-48',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'the-pit-cukur'),
  'collection-48',
  'collection-48',
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