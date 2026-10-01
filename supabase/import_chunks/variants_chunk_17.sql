INSERT INTO public.video_variants (id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url)
VALUES
(
      extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3873'),
      'video-3873',
      extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
      extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:' || 'collection-73-episode-245'),
      'Episode 245',
      6,
      '{"Urdu"}',
      'dubbed',
      'draft',
      2700,
      'https://play.niazitv.pk/images/episode_1729925112.webp'
    )
ON CONFLICT (source_id) DO UPDATE SET
  display_label = CASE WHEN video_variants.updated_at > video_variants.created_at THEN video_variants.display_label ELSE EXCLUDED.display_label END,
  languages = EXCLUDED.languages,
  version = EXCLUDED.version,
  thumbnail_url = EXCLUDED.thumbnail_url,
  publication_state = CASE WHEN video_variants.collection_id = extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-68') THEN 'published' ELSE video_variants.publication_state END,
  updated_at = now();