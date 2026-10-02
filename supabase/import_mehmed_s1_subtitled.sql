-- Import Mehmed Season 1 Subtitled (collection-62)

INSERT INTO public.collections (
    id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order, poster_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'collection-62',
    '1c5a90f7-cced-5b88-af7e-b8ad27e7e691',
    'collection-62',
    'Season 1 — Urdu & English Subtitles',
    'subtitled',
    ARRAY[1],
    'Urdu & English Subtitles',
    ARRAY['Urdu', 'English'],
    'published',
    0,
    'https://image.tmdb.org/t/p/w780/7NVE1GLgOh5VxRiu0EcwEAzRgYW.jpg'
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    collection_type = EXCLUDED.collection_type,
    reported_seasons = EXCLUDED.reported_seasons,
    version_label = EXCLUDED.version_label,
    languages = EXCLUDED.languages,
    status = EXCLUDED.status,
    poster_url = EXCLUDED.poster_url;


INSERT INTO public.episode_groups (
    id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status, still_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-1'),
    'collection-62-episode-1',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'Episode 1',
    1,
    NULL,
    NULL,
    1,
    'episode',
    'published',
    'https://play.niazitv.pk/images/episode_1708797371.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    reported_episode_number = EXCLUDED.reported_episode_number,
    still_url = COALESCE(EXCLUDED.still_url, episode_groups.still_url);


INSERT INTO public.episode_groups (
    id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status, still_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-2'),
    'collection-62-episode-2',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'Episode 2',
    2,
    NULL,
    NULL,
    2,
    'episode',
    'published',
    'https://play.niazitv.pk/images/episode_1709690106.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    reported_episode_number = EXCLUDED.reported_episode_number,
    still_url = COALESCE(EXCLUDED.still_url, episode_groups.still_url);


INSERT INTO public.episode_groups (
    id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status, still_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-3'),
    'collection-62-episode-3',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'Episode 3',
    3,
    NULL,
    NULL,
    3,
    'episode',
    'published',
    'https://play.niazitv.pk/images/episode_1710258511.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    reported_episode_number = EXCLUDED.reported_episode_number,
    still_url = COALESCE(EXCLUDED.still_url, episode_groups.still_url);


INSERT INTO public.episode_groups (
    id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status, still_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-4'),
    'collection-62-episode-4',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'Episode 4',
    4,
    NULL,
    NULL,
    4,
    'episode',
    'published',
    'https://play.niazitv.pk/images/episode_1710866318.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    reported_episode_number = EXCLUDED.reported_episode_number,
    still_url = COALESCE(EXCLUDED.still_url, episode_groups.still_url);


INSERT INTO public.episode_groups (
    id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status, still_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-5'),
    'collection-62-episode-5',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'Episode 5',
    5,
    NULL,
    NULL,
    5,
    'episode',
    'published',
    'https://play.niazitv.pk/images/episode_1711499848.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    reported_episode_number = EXCLUDED.reported_episode_number,
    still_url = COALESCE(EXCLUDED.still_url, episode_groups.still_url);


INSERT INTO public.episode_groups (
    id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status, still_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-6'),
    'collection-62-episode-6',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'Episode 6',
    6,
    NULL,
    NULL,
    6,
    'episode',
    'published',
    'https://play.niazitv.pk/images/episode_1712077876.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    reported_episode_number = EXCLUDED.reported_episode_number,
    still_url = COALESCE(EXCLUDED.still_url, episode_groups.still_url);


INSERT INTO public.episode_groups (
    id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status, still_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-7'),
    'collection-62-episode-7',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'Episode 7',
    7,
    NULL,
    NULL,
    7,
    'episode',
    'published',
    'https://play.niazitv.pk/images/episode_1712686804.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    reported_episode_number = EXCLUDED.reported_episode_number,
    still_url = COALESCE(EXCLUDED.still_url, episode_groups.still_url);


INSERT INTO public.episode_groups (
    id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status, still_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-8'),
    'collection-62-episode-8',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'Episode 8',
    8,
    NULL,
    NULL,
    8,
    'episode',
    'published',
    'https://play.niazitv.pk/images/episode_1713896370.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    reported_episode_number = EXCLUDED.reported_episode_number,
    still_url = COALESCE(EXCLUDED.still_url, episode_groups.still_url);


INSERT INTO public.episode_groups (
    id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status, still_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-9'),
    'collection-62-episode-9',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'Episode 9',
    9,
    NULL,
    NULL,
    9,
    'episode',
    'published',
    'https://play.niazitv.pk/images/episode_1714531504.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    reported_episode_number = EXCLUDED.reported_episode_number,
    still_url = COALESCE(EXCLUDED.still_url, episode_groups.still_url);


INSERT INTO public.episode_groups (
    id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status, still_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-10'),
    'collection-62-episode-10',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'Episode 10',
    10,
    NULL,
    NULL,
    10,
    'episode',
    'published',
    'https://play.niazitv.pk/images/episode_1715104956.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    reported_episode_number = EXCLUDED.reported_episode_number,
    still_url = COALESCE(EXCLUDED.still_url, episode_groups.still_url);


INSERT INTO public.episode_groups (
    id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status, still_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-11'),
    'collection-62-episode-11',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'Episode 11',
    11,
    NULL,
    NULL,
    11,
    'episode',
    'published',
    'https://play.niazitv.pk/images/episode_1715706201.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    reported_episode_number = EXCLUDED.reported_episode_number,
    still_url = COALESCE(EXCLUDED.still_url, episode_groups.still_url);


INSERT INTO public.episode_groups (
    id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status, still_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-12'),
    'collection-62-episode-12',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'Episode 12',
    12,
    NULL,
    NULL,
    12,
    'episode',
    'published',
    'https://play.niazitv.pk/images/episode_1716318060.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    reported_episode_number = EXCLUDED.reported_episode_number,
    still_url = COALESCE(EXCLUDED.still_url, episode_groups.still_url);


INSERT INTO public.episode_groups (
    id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status, still_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-13'),
    'collection-62-episode-13',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'Episode 13',
    13,
    NULL,
    NULL,
    13,
    'episode',
    'published',
    'https://play.niazitv.pk/images/episode_1716918726.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    reported_episode_number = EXCLUDED.reported_episode_number,
    still_url = COALESCE(EXCLUDED.still_url, episode_groups.still_url);


INSERT INTO public.episode_groups (
    id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status, still_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-14'),
    'collection-62-episode-14',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'Episode 14',
    14,
    NULL,
    NULL,
    14,
    'episode',
    'published',
    'https://play.niazitv.pk/images/episode_1717554505.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    reported_episode_number = EXCLUDED.reported_episode_number,
    still_url = COALESCE(EXCLUDED.still_url, episode_groups.still_url);


INSERT INTO public.episode_groups (
    id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status, still_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-15'),
    'collection-62-episode-15',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'Episode 15',
    15,
    NULL,
    NULL,
    15,
    'episode',
    'published',
    'https://play.niazitv.pk/images/episode_1718124343.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    reported_episode_number = EXCLUDED.reported_episode_number,
    still_url = COALESCE(EXCLUDED.still_url, episode_groups.still_url);


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2745'),
    'video-2745',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-1'),
    'Mehmed Fetihleri Sultani Episode 1 with Urdu Subtitles',
    1,
    ARRAY['Urdu'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1708797371.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2745'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2745'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-1.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2745',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2745',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2745", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2745", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2745", "heading": "Episode 1 - Urdu Subtitles", "title": "Mehmed Fetihleri Sultani Episode 1 with Urdu Subtitles", "season": 1, "season_source": "catalog", "episode": 1, "bolum": null, "part": null, "languages": ["Urdu"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Fans of Turkish historical dramas rejoice! The highly anticipated series \"Mehmed Fetihleri Sultani\" (Mehmed the Conqueror Sultan) has premiered on TRT1, offering a captivating glimpse into the life and legacy of Sultan Mehmed II, widely renowned as Fatih Sultan Mehmed (Mehmed the Conqueror) .", "article_text": "Fans of Turkish historical dramas rejoice! The highly anticipated series \"Mehmed Fetihleri Sultani\" (Mehmed the Conqueror Sultan) has premiered on TRT1, offering a captivating glimpse into the life and legacy of Sultan Mehmed II, widely renowned as Fatih Sultan Mehmed (Mehmed the Conqueror) . If you''re eager to experience this epic saga but prefer Urdu as your viewing language, fret no more! Several platforms are offering \"Mehmed Fetihleri Sultani Episode 1\" with Urdu subtitles . This allows you to fully immerse yourself in the story without missing a beat. Here''s a quick summary of what we know so far: Channel: TRT1 Premiere Date: February 27, 2024 Lead Actor: Serkan Çayoğlu Genre: Historical Drama Focus: Life and legacy of Sultan Fetihler Sultani (Sultan Mehmed the Conqueror) Where to Find \"Mehmed Fetihleri Sultani Episode 1\" with Urdu Subtitles Finding \"Mehmed Fetihleri Sultani Episode 1\" with Urdu subtitles is easier than ever thanks to the internet''s diverse streaming options. Here are a few potential sources: Official TRT1 platforms: TRT often provides subtitles in various languages for their shows. Check their official website or streaming services, which might offer \"Mehmed Fetihleri Sultani Episode 1\" with Urdu subtitles . Licensed streaming services: Several online platforms offer Turkish dramas with subtitles, including NiaziPlay . Explore these platforms to find \"Mehmed Fetihleri Sultani Episode 1\" with Urdu subtitles . Remember to confirm if the chosen platform holds legal licensing agreements for the series. Fan-made subtitle communities: While it''s crucial to prioritize legal and official sources, online communities occasionally gather to create subtitles for various shows, including \"Mehmed Fetihleri Sultani Episode 1\" with Urdu subtitles . However, proceed with caution in such cases, as these subtitles might not be professionally translated or approved. Why Watch \"Mehmed Fetihleri Sultani Episode 1\" with Urdu Subtitles? \"Mehmed Fetihleri Sultani Episode 1\" marks the beginning of a promising historical drama, and watching it with Urdu subtitles unlocks several benefits: Accessibility: Enjoy the series regardless of your primary language, fostering wider cultural appreciation. Deeper understanding: Subtitles often translate cultural nuances and expressions that might not be readily understood otherwise. Enhanced cultural exchange: Immersing yourself in diverse content broadens your perspective and allows you to learn about different historical figures and events. Whether you''re a history buff, a fan of Turkish dramas, or simply curious about \"Mehmed Fetihleri Sultani,\" watching \"Mehmed Fetihleri Sultani Episode 1\" with Urdu subtitles offers a compelling entry point into a captivating historical narrative. References: Mehmed: Fetihler Sultani - IMDB Mehmed: Fetihler Sultanı - Sultan of Conquests - TRT1 Mehmed: Fetihler Sultanı - Youtube", "article_sections": [{"heading": null, "paragraphs": ["Fans of Turkish historical dramas rejoice! The highly anticipated series \"Mehmed Fetihleri Sultani\" (Mehmed the Conqueror Sultan) has premiered on TRT1, offering a captivating glimpse into the life and legacy of Sultan Mehmed II, widely renowned as Fatih Sultan Mehmed (Mehmed the Conqueror) .", "If you''re eager to experience this epic saga but prefer Urdu as your viewing language, fret no more! Several platforms are offering \"Mehmed Fetihleri Sultani Episode 1\" with Urdu subtitles . This allows you to fully immerse yourself in the story without missing a beat.", "Here''s a quick summary of what we know so far:", "Channel: TRT1", "Premiere Date: February 27, 2024", "Lead Actor: Serkan Çayoğlu", "Genre: Historical Drama", "Focus: Life and legacy of Sultan Fetihler Sultani (Sultan Mehmed the Conqueror)"]}, {"heading": "Where to Find \"Mehmed Fetihleri Sultani Episode 1\" with Urdu Subtitles", "paragraphs": ["Finding \"Mehmed Fetihleri Sultani Episode 1\" with Urdu subtitles is easier than ever thanks to the internet''s diverse streaming options. Here are a few potential sources:", "Official TRT1 platforms: TRT often provides subtitles in various languages for their shows. Check their official website or streaming services, which might offer \"Mehmed Fetihleri Sultani Episode 1\" with Urdu subtitles .", "Licensed streaming services: Several online platforms offer Turkish dramas with subtitles, including NiaziPlay . Explore these platforms to find \"Mehmed Fetihleri Sultani Episode 1\" with Urdu subtitles . Remember to confirm if the chosen platform holds legal licensing agreements for the series.", "Fan-made subtitle communities: While it''s crucial to prioritize legal and official sources, online communities occasionally gather to create subtitles for various shows, including \"Mehmed Fetihleri Sultani Episode 1\" with Urdu subtitles . However, proceed with caution in such cases, as these subtitles might not be professionally translated or approved."]}, {"heading": "Why Watch \"Mehmed Fetihleri Sultani Episode 1\" with Urdu Subtitles?", "paragraphs": ["\"Mehmed Fetihleri Sultani Episode 1\" marks the beginning of a promising historical drama, and watching it with Urdu subtitles unlocks several benefits:", "Accessibility: Enjoy the series regardless of your primary language, fostering wider cultural appreciation.", "Deeper understanding: Subtitles often translate cultural nuances and expressions that might not be readily understood otherwise.", "Enhanced cultural exchange: Immersing yourself in diverse content broadens your perspective and allows you to learn about different historical figures and events.", "Whether you''re a history buff, a fan of Turkish dramas, or simply curious about \"Mehmed Fetihleri Sultani,\" watching \"Mehmed Fetihleri Sultani Episode 1\" with Urdu subtitles offers a compelling entry point into a captivating historical narrative.", "References:", "Mehmed: Fetihler Sultani - IMDB", "Mehmed: Fetihler Sultanı - Sultan of Conquests - TRT1", "Mehmed: Fetihler Sultanı - Youtube"]}], "description_status": "extracted", "meta_description": "Watch the captivating story of Sultan Mehmed the Conqueror in \"Mehmed Fetihleri Sultani Episode 1\" with Urdu subtitles! Explore streaming options and delve into", "player_urls": ["https://play.niazitv.pk/play?data=Mjc0NQ==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvVXJkdS9TMS9FcGlzb2RlLTEubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1708797371.webp"], "duration": "PT2H39M13S", "upload_date": "2024-02-24T18:56:10+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:13:50.841207+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-1.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2745", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 1", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-1"}'::jsonb,
    '96cb9a2fdde79b53717735d1949c6ae3d8ef22fafb6a8c3ecefd7ca206864bcf'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2768'),
    'video-2768',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-1'),
    'Mehmed Fetihleri Sultani Episode 1 with English Subtitles',
    1,
    ARRAY['English'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1709689549.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2768'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2768'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-1.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2768',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2768',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2768", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2768", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2768", "heading": "Episode 1 - English Subtitles", "title": "Mehmed Fetihleri Sultani Episode 1 with English Subtitles", "season": 1, "season_source": "catalog", "episode": 1, "bolum": null, "part": null, "languages": ["English"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fetihleri Sultani Episode 1 with English Subtitles", "article_text": "Mehmed Fetihleri Sultani Episode 1 with English Subtitles", "article_sections": [{"heading": null, "paragraphs": ["Mehmed Fetihleri Sultani Episode 1 with English Subtitles"]}], "description_status": "extracted", "meta_description": "Mehmed Fetihleri Sultani Episode 1 with English Subtitles", "player_urls": ["https://play.niazitv.pk/play?data=Mjc2OA==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvRW5nbGlzaC9TMS9FcGlzb2RlLTEubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1709689549.webp"], "duration": "PT2H27M23S", "upload_date": "2024-03-06T02:45:48+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:13:51.745554+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-1.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2768", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 1", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-1"}'::jsonb,
    '299696bc6bc79ee44951f760d5691169b44c4843ef611d18a3a8c98908618b68'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2769'),
    'video-2769',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-2'),
    'Mehmed Fetihleri Sultani Episode 2 Urdu Subtitles - Season 1',
    1,
    ARRAY['Urdu'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1709690106.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2769'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2769'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-2.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2769',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2769',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2769", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2769", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2769", "heading": "Episode 2 - Urdu Subtitles", "title": "Mehmed Fetihleri Sultani Episode 2 Urdu Subtitles - Season 1", "season": 1, "season_source": "episode_heading", "episode": 2, "bolum": null, "part": null, "languages": ["Urdu"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "In Episode 2, Mehmed faces a myriad of challenges upon his return to Saruhan after leaving the throne to his father, Murad. Dealing with both people''s issues and Ahis'' concerns, Mehmed''s leadership skills are put to the test.", "article_text": "Episode 2: Navigating Challenges in Saruhan Mehmed''s Return In Episode 2, Mehmed faces a myriad of challenges upon his return to Saruhan after leaving the throne to his father, Murad. Dealing with both people''s issues and Ahis'' concerns, Mehmed''s leadership skills are put to the test. Trade Hindrance by Pirates A significant problem emerges as pirates obstruct trade routes, affecting both the people and Mehmed himself. By resolving this issue, Mehmed aims not only to fulfill the people''s wishes but also to untangle a personal knot. Accusations and Summons Venetians complain to Murad about Mehmed, accusing him of harming their trade. Çandarlı presents crucial evidence against Mehmed, prompting Sultan Murad to summon Mehmed immediately for an explanation. Bali Gentlemen''s Mission In response, Bali Gentlemen set out with Mehmed. The mission is clear: Mehmed must either present himself before the Sultan with the Bali Beys or capture Capello, the pirate leader, to disprove the accusations. The suspense builds as Mehmed''s fate hangs in the balance. Episode 1 Recap: Mehmed''s Ascension to the Throne Unexpected Death and Succession The unexpected death of Prince Alaaddin shakes Murad Khan, leading to his retreat to Bursa. Prince Mehmed succeeds him, facing skepticism from European states but proving his maturity in reality. Confrontation with Orhan Mehmed''s first major challenge comes from Orhan, who seeks refuge and support from Byzantium. Despite being perceived as young and immature, Mehmed asserts his claim to the throne and battles Orhan. Dream of Conquering Constantinople Mehmed harbors a dream to conquer Constantinople, facing opposition from those who doubt the feasibility. Çandarlı tries to dissuade him, leading to chaos in the capital and a confrontation between Mehmed''s army and rebel Janissaries. Mehmed''s Exile and Determination Despite facing defeat and exile, Mehmed remains determined. The episode ends with the promise that Mehmed will return as Sultan one day. References: Mehmed: Sultan of Conquests - IMDb Mehmed: Sultan of Conquests - Official Trailer Picture Gallery - TRT1 Explore the intricate plots and unfolding drama in Mehmed Fetihleri Sultani Episode 2 with Urdu Subtitles, as Mehmed navigates through political intrigue, trade disputes, and the challenges of leadership in his quest to prove himself to Sultan Murad.", "article_sections": [{"heading": "Episode 2: Navigating Challenges in Saruhan", "paragraphs": []}, {"heading": "Mehmed''s Return", "paragraphs": ["In Episode 2, Mehmed faces a myriad of challenges upon his return to Saruhan after leaving the throne to his father, Murad. Dealing with both people''s issues and Ahis'' concerns, Mehmed''s leadership skills are put to the test."]}, {"heading": "Trade Hindrance by Pirates", "paragraphs": ["A significant problem emerges as pirates obstruct trade routes, affecting both the people and Mehmed himself. By resolving this issue, Mehmed aims not only to fulfill the people''s wishes but also to untangle a personal knot."]}, {"heading": "Accusations and Summons", "paragraphs": ["Venetians complain to Murad about Mehmed, accusing him of harming their trade. Çandarlı presents crucial evidence against Mehmed, prompting Sultan Murad to summon Mehmed immediately for an explanation."]}, {"heading": "Bali Gentlemen''s Mission", "paragraphs": ["In response, Bali Gentlemen set out with Mehmed. The mission is clear: Mehmed must either present himself before the Sultan with the Bali Beys or capture Capello, the pirate leader, to disprove the accusations. The suspense builds as Mehmed''s fate hangs in the balance."]}, {"heading": "Episode 1 Recap: Mehmed''s Ascension to the Throne", "paragraphs": []}, {"heading": "Unexpected Death and Succession", "paragraphs": ["The unexpected death of Prince Alaaddin shakes Murad Khan, leading to his retreat to Bursa. Prince Mehmed succeeds him, facing skepticism from European states but proving his maturity in reality."]}, {"heading": "Confrontation with Orhan", "paragraphs": ["Mehmed''s first major challenge comes from Orhan, who seeks refuge and support from Byzantium. Despite being perceived as young and immature, Mehmed asserts his claim to the throne and battles Orhan."]}, {"heading": "Dream of Conquering Constantinople", "paragraphs": ["Mehmed harbors a dream to conquer Constantinople, facing opposition from those who doubt the feasibility. Çandarlı tries to dissuade him, leading to chaos in the capital and a confrontation between Mehmed''s army and rebel Janissaries."]}, {"heading": "Mehmed''s Exile and Determination", "paragraphs": ["Despite facing defeat and exile, Mehmed remains determined. The episode ends with the promise that Mehmed will return as Sultan one day.", "References:", "Mehmed: Sultan of Conquests - IMDb", "Mehmed: Sultan of Conquests - Official Trailer", "Picture Gallery - TRT1", "Explore the intricate plots and unfolding drama in Mehmed Fetihleri Sultani Episode 2 with Urdu Subtitles, as Mehmed navigates through political intrigue, trade disputes, and the challenges of leadership in his quest to prove himself to Sultan Murad."]}], "description_status": "extracted", "meta_description": "Dive into the captivating world of Mehmed Fetihleri Sultani Episode 2 with Urdu Subtitles. Explore the challenges faced by Mehmed as he returns to Saruhan, deal", "player_urls": ["https://play.niazitv.pk/play?data=Mjc2OQ==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvVXJkdS9TMS9FcGlzb2RlLTIubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1709690106.webp"], "duration": "PT2H22M7S", "upload_date": "2024-03-06T02:55:05+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:13:52.572457+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-2.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2769", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 2", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-2"}'::jsonb,
    'c433dff080e2ac1533c5a4b360a05d49c983846e970a5b9b292b0a35beb6aeb7'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2770'),
    'video-2770',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-2'),
    'Mehmed Fetihleri Sultani Episode 2 English Subtitles: Intrigue, Trade, and the Sultan''s Dilemma',
    1,
    ARRAY['English'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1709690488.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2770'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2770'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-2.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2770',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2770',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2770", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2770", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2770", "heading": "Episode 2 - English Subtitles", "title": "Mehmed Fetihleri Sultani Episode 2 English Subtitles: Intrigue, Trade, and the Sultan''s Dilemma", "season": 1, "season_source": "catalog", "episode": 2, "bolum": null, "part": null, "languages": ["English"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Embark on the journey through Mehmed Fetihleri Sultani Episode 2, where the Ottoman Empire faces new challenges, and Mehmed, now Sultan, grapples with complex issues ranging from trade disputes to internal strife.", "article_text": "Mehmed Fetihleri Sultani Episode 2: Unraveling the Serie Introduction Embark on the journey through Mehmed Fetihleri Sultani Episode 2, where the Ottoman Empire faces new challenges, and Mehmed, now Sultan, grapples with complex issues ranging from trade disputes to internal strife. Mehmed''s Return to Saruhan The episode commences with Mehmed relinquishing the throne to his father, Murad, and returning to Saruhan. Here, he confronts the multifaceted problems plaguing both the people and the Ahis, emphasizing the importance of trade. Trade Hindrance and Accusations One significant issue emerges as pirates disrupt trade, prompting Mehmed to resolve the matter. However, Venetians complain to Murad, alleging that Mehmed harms their trade interests. Çandarlı presents crucial evidence against Mehmed, leading to Sultan Murad summoning Mehmed for an account. The Sultan''s Dilemma Mehmed faces a critical decision: either appear before the Sultan with the Bali Beys or capture Capello, the pirate leader, to disprove the accusations. The tension rises as Mehmed endeavors to safeguard his reputation and the empire. Harem Intrigues In the harem, summoned to Mehmed''s presence, emotions run high. While Hüma worries about the summons, Halime rejoices. Mara, however, has a different agenda—leaving Mehmed unrivaled for the throne. The disappearance of Ahmed becomes a strategic move to protect Mehmed. How will Hüma respond, and what counterplans will Halime devise? Cast and Crew The TV series boasts a stellar cast including Serkan Çayoğlu, Selim Bayraktar, Fikret Kuşkan, Tuba Ünsal, Sinan Albayrak, Kenan Çoban, Bülent Alkış, Seçkin Özdemir, Esila Umut, and Ali Nuri Türkoğlu, under the direction of Şafak Bal. References: Mehmed: Sultan of Conquests - IMDb Mehmed: Sultan of Conquests - Official Trailer Picture Gallery - TRT1 Conclusion Mehmed Fetihleri Sultani Episode 2 unfolds a gripping narrative, blending historical drama with political intrigue. Join us in this enthralling serie as Mehmed navigates through trade challenges, accusations, and internal conflicts, shaping the destiny of the Ottoman Empire.", "article_sections": [{"heading": "Mehmed Fetihleri Sultani Episode 2: Unraveling the Serie", "paragraphs": []}, {"heading": "Introduction", "paragraphs": ["Embark on the journey through Mehmed Fetihleri Sultani Episode 2, where the Ottoman Empire faces new challenges, and Mehmed, now Sultan, grapples with complex issues ranging from trade disputes to internal strife."]}, {"heading": "Mehmed''s Return to Saruhan", "paragraphs": ["The episode commences with Mehmed relinquishing the throne to his father, Murad, and returning to Saruhan. Here, he confronts the multifaceted problems plaguing both the people and the Ahis, emphasizing the importance of trade."]}, {"heading": "Trade Hindrance and Accusations", "paragraphs": ["One significant issue emerges as pirates disrupt trade, prompting Mehmed to resolve the matter. However, Venetians complain to Murad, alleging that Mehmed harms their trade interests. Çandarlı presents crucial evidence against Mehmed, leading to Sultan Murad summoning Mehmed for an account."]}, {"heading": "The Sultan''s Dilemma", "paragraphs": ["Mehmed faces a critical decision: either appear before the Sultan with the Bali Beys or capture Capello, the pirate leader, to disprove the accusations. The tension rises as Mehmed endeavors to safeguard his reputation and the empire."]}, {"heading": "Harem Intrigues", "paragraphs": ["In the harem, summoned to Mehmed''s presence, emotions run high. While Hüma worries about the summons, Halime rejoices. Mara, however, has a different agenda—leaving Mehmed unrivaled for the throne. The disappearance of Ahmed becomes a strategic move to protect Mehmed. How will Hüma respond, and what counterplans will Halime devise?"]}, {"heading": "Cast and Crew", "paragraphs": ["The TV series boasts a stellar cast including Serkan Çayoğlu, Selim Bayraktar, Fikret Kuşkan, Tuba Ünsal, Sinan Albayrak, Kenan Çoban, Bülent Alkış, Seçkin Özdemir, Esila Umut, and Ali Nuri Türkoğlu, under the direction of Şafak Bal.", "References:", "Mehmed: Sultan of Conquests - IMDb", "Mehmed: Sultan of Conquests - Official Trailer", "Picture Gallery - TRT1"]}, {"heading": "Conclusion", "paragraphs": ["Mehmed Fetihleri Sultani Episode 2 unfolds a gripping narrative, blending historical drama with political intrigue. Join us in this enthralling serie as Mehmed navigates through trade challenges, accusations, and internal conflicts, shaping the destiny of the Ottoman Empire."]}], "description_status": "extracted", "meta_description": "Explore the twists and turns in Mehmed Fetihleri Sultani Episode 2 with English Subtitles. Witness Mehmed''s return to Saruhan, facing challenges in trade, accus", "player_urls": ["https://play.niazitv.pk/play?data=Mjc3MA==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvRW5nbGlzaC9TMS9FcGlzb2RlLTIubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1709690488.webp"], "duration": "PT2H27M23S", "upload_date": "2024-03-06T03:01:28+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:13:53.527110+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-2.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2770", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 2", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-2"}'::jsonb,
    '8ea4b04feb47179d4629eda899227fa1cd216a600cf6b460e3343aac35ab1abe'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2785'),
    'video-2785',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-3'),
    'Mehmed Fetihleri Sultani Episode 3 Urdu Subtitles: A Battle Brews!',
    1,
    ARRAY['Urdu'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1710258511.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2785'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2785'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-3.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2785',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2785',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2785", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2785", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2785", "heading": "Episode 3 - Urdu Subtitles", "title": "Mehmed Fetihleri Sultani Episode 3 Urdu Subtitles: A Battle Brews!", "season": 1, "season_source": "catalog", "episode": 3, "bolum": null, "part": null, "languages": ["Urdu"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 3 plunges viewers deeper into the captivating story of Mehmed, the future conqueror. Brace yourself for a compelling episode filled with political maneuvering, strategic planning for war, and a shocking event within the palace walls.", "article_text": "Mehmed Fetihleri Sultani Episode 3: A Summary Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 3 plunges viewers deeper into the captivating story of Mehmed, the future conqueror. Brace yourself for a compelling episode filled with political maneuvering, strategic planning for war, and a shocking event within the palace walls. Clearing His Name and Facing a New Challenge The episode opens with Mehmed successfully presenting Capello, the pirate leader, to Sultan Murad, effectively silencing the accusations against him. However, a new obstacle arises as Sultan Murad demands an explanation for coins minted in Mehmed''s name during his brief reign. Mehmed manages to appease his father by providing a clear explanation. War Preparations and Clashing Opinions With a looming threat from the Crusaders, the focus shifts towards strategizing for war. Mehmed proposes forming an alliance with the Oghuz Turks, a concept met with resistance from Çandarlı, the Grand Vizier. This disagreement creates tension between Mehmed, who favors uniting forces, and Çandarlı, who advocates for a more cautious approach. The episode leaves the audience wondering: will Sultan Murad side with Mehmed''s vision or follow Çandarlı''s conservative strategy? A Daring Plan and an Unexpected Threat Following his father''s orders, Mehmed embarks on a mission to gather intel on the Crusaders'' movements. Through captured Wallachians, he devises a plan to launch a surprise attack on Yanosh, the Crusader leader. Meanwhile, Yanosh is not idle. He prepares his own offensive, aiming to strike a decisive blow against both Murad in the capital and Mehmed on the battlefield. A Shocking Incident Within the Palace The episode throws another curveball with a shocking incident involving Prince Ahmed, Mehmed''s half-brother. While under Hüma''s care, Ahmed chokes on food, leaving her and her confidante Çeşmidil in a difficult situation. This event has the potential to create significant tension within the palace, particularly between Hüma and Halime, another contender for the throne. The audience wonders: how will Hüma react to Ahmed''s choking incident? Will she intervene or remain silent, and what impact will this have on the palace dynamics? Where to Watch Mehmed Fetihleri Sultani Episode 3 with Urdu Subtitles You can watch Mehmed Fetihleri Sultani Episode 3 (Bolum 3) with Urdu subtitles on official streaming platforms or reputable websites i.e NiaziPlay . Remember to exercise caution while searching online and only access content from trustworthy sources. A Look Ahead: Questions Remain Mehmed Fetihleri Sultani Episode 3 leaves viewers with several burning questions: Will Mehmed''s daring plan to ambush Yanosh succeed? How will the political tension between Mehmed and Çandarlı regarding the war strategy be resolved? How will Ahmed''s choking incident impact the palace power struggle, particularly between Hüma and Halime? Stay tuned for the next episode to witness the continuation of this captivating historical drama and discover the answers to these pressing questions! References: Mehmed: Sultan of Conquests Episode 3 Trailer Mehmed: Fetihler Sultanı 3.Bölüm Özet Mehmed: Fetihler Sultanı 2.Bölüm Özet Mehmed: Fetihler Sultanı 3.Bölüm", "article_sections": [{"heading": "Mehmed Fetihleri Sultani Episode 3: A Summary", "paragraphs": ["Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 3 plunges viewers deeper into the captivating story of Mehmed, the future conqueror. Brace yourself for a compelling episode filled with political maneuvering, strategic planning for war, and a shocking event within the palace walls."]}, {"heading": "Clearing His Name and Facing a New Challenge", "paragraphs": ["The episode opens with Mehmed successfully presenting Capello, the pirate leader, to Sultan Murad, effectively silencing the accusations against him.", "However, a new obstacle arises as Sultan Murad demands an explanation for coins minted in Mehmed''s name during his brief reign.", "Mehmed manages to appease his father by providing a clear explanation."]}, {"heading": "War Preparations and Clashing Opinions", "paragraphs": ["With a looming threat from the Crusaders, the focus shifts towards strategizing for war. Mehmed proposes forming an alliance with the Oghuz Turks, a concept met with resistance from Çandarlı, the Grand Vizier.", "This disagreement creates tension between Mehmed, who favors uniting forces, and Çandarlı, who advocates for a more cautious approach.", "The episode leaves the audience wondering: will Sultan Murad side with Mehmed''s vision or follow Çandarlı''s conservative strategy?"]}, {"heading": "A Daring Plan and an Unexpected Threat", "paragraphs": ["Following his father''s orders, Mehmed embarks on a mission to gather intel on the Crusaders'' movements. Through captured Wallachians, he devises a plan to launch a surprise attack on Yanosh, the Crusader leader.", "Meanwhile, Yanosh is not idle. He prepares his own offensive, aiming to strike a decisive blow against both Murad in the capital and Mehmed on the battlefield."]}, {"heading": "A Shocking Incident Within the Palace", "paragraphs": ["The episode throws another curveball with a shocking incident involving Prince Ahmed, Mehmed''s half-brother. While under Hüma''s care, Ahmed chokes on food, leaving her and her confidante Çeşmidil in a difficult situation.", "This event has the potential to create significant tension within the palace, particularly between Hüma and Halime, another contender for the throne.", "The audience wonders: how will Hüma react to Ahmed''s choking incident? Will she intervene or remain silent, and what impact will this have on the palace dynamics?"]}, {"heading": "Where to Watch Mehmed Fetihleri Sultani Episode 3 with Urdu Subtitles", "paragraphs": ["You can watch Mehmed Fetihleri Sultani Episode 3 (Bolum 3) with Urdu subtitles on official streaming platforms or reputable websites i.e NiaziPlay . Remember to exercise caution while searching online and only access content from trustworthy sources."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fetihleri Sultani Episode 3 leaves viewers with several burning questions:", "Will Mehmed''s daring plan to ambush Yanosh succeed?", "How will the political tension between Mehmed and Çandarlı regarding the war strategy be resolved?", "How will Ahmed''s choking incident impact the palace power struggle, particularly between Hüma and Halime?", "Stay tuned for the next episode to witness the continuation of this captivating historical drama and discover the answers to these pressing questions!", "References:", "Mehmed: Sultan of Conquests Episode 3 Trailer", "Mehmed: Fetihler Sultanı 3.Bölüm Özet", "Mehmed: Fetihler Sultanı 2.Bölüm Özet", "Mehmed: Fetihler Sultanı 3.Bölüm"]}], "description_status": "extracted", "meta_description": "The thrilling saga of Mehmed Fetihleri Sultani continues in Episode 3! Witness Mehmed navigate political tensions, strategize for war, and face a shocking event", "player_urls": ["https://play.niazitv.pk/play?data=Mjc4NQ==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvVXJkdS9TMS9FcGlzb2RlLTMubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1710258511.webp"], "duration": "PT2H15M28S", "upload_date": "2024-03-12T16:48:31+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:13:54.420101+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-3.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2785", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 3", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-3"}'::jsonb,
    '3c17dca7583c157f8dc213fad4dd16b69c00c5349a02d15032ca4c4d783dcbe0'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2787'),
    'video-2787',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-3'),
    'Mehmed Fetihleri Sultani Episode 3 English Subtitles - Season 1',
    1,
    ARRAY['English'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1710259012.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2787'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2787'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-3.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2787',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2787',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2787", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2787", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2787", "heading": "Episode 3 - English Subtitles", "title": "Mehmed Fetihleri Sultani Episode 3 English Subtitles - Season 1", "season": 1, "season_source": "episode_heading", "episode": 3, "bolum": null, "part": null, "languages": ["English"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 3 continues the enthralling story of Mehmed, the future conqueror. Brace yourself for a thrilling episode filled with victory, war planning, and a shocking event within the palace walls.", "article_text": "Mehmed Fetihleri Sultani Episode 3: A Summary (English Subtitles) Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 3 continues the enthralling story of Mehmed, the future conqueror. Brace yourself for a thrilling episode filled with victory, war planning, and a shocking event within the palace walls. Clearing His Name and a New Challenge Emerges The episode opens with a triumphant Mehmed presenting the captured pirate leader, Capello, to Sultan Murad, effectively silencing the accusations against him. However, a new obstacle arises as Sultan Murad demands an explanation for coins minted in Mehmed''s name during his brief reign. Mehmed, with his diplomatic skills, manages to appease his father by providing a clear explanation. War Preparations and Clashing Opinions With the Crusaders drawing closer, the focus shifts to strategizing for war. Mehmed proposes forming an alliance with the Oghuz Turks, a concept met with opposition from Çandarlı, the Grand Vizier. This disagreement creates tension between Mehmed, who favors a united front, and Çandarlı, who advocates for a more cautious approach. The episode leaves the audience with a cliffhanger: will Sultan Murad side with Mehmed''s vision for an alliance or follow Çandarlı''s conservative strategy? A Daring Plan and an Unexpected Threat Following his father''s orders, Mehmed embarks on a mission to gather intel on the Crusaders'' movements. Through captured Wallachians, he devises a daring plan to launch a surprise attack on Yanosh, the Crusader leader. Meanwhile, Yanosh is not idle. He prepares his own offensive, aiming to strike a decisive blow against both Murad in the capital and Mehmed on the battlefield. A Shocking Incident Within the Palace Walls The episode throws another curveball with a shocking incident involving Prince Ahmed, Mehmed''s half-brother. While under Hüma''s care, Ahmed chokes on food, leaving her and her confidante Çeşmidil in a difficult situation. This event has the potential to create significant tension within the palace, particularly between Hüma and Halime, another contender for the throne. The audience wonders: how will Hüma react to Ahmed''s choking incident? Will she intervene or remain silent, and what impact will this have on the palace dynamics? Where to Watch Mehmed Fetihleri Sultani Episode 3 with English Subtitles You can watch Mehmed Fetihleri Sultani Episode 3 (Bolum 3) with English subtitles on official streaming platforms or reputable websites i.e NiaziPlay . Remember to exercise caution while searching online and only access content from trustworthy sources. A Look Ahead: Questions Remain Mehmed Fetihleri Sultani Episode 3 leaves viewers with several burning questions: Will Mehmed''s daring plan to ambush Yanosh succeed? How will the political tension between Mehmed and Çandarlı regarding the war strategy be resolved? How will Ahmed''s choking incident impact the palace power struggle, particularly between Hüma and Halime? Stay tuned for the next episode to witness the continuation of this captivating historical drama and discover the answers to these pressing questions! References: Mehmed: Sultan of Conquests Episode 3 Trailer Mehmed: Fetihler Sultanı 3.Bölüm Özet Mehmed: Fetihler Sultanı 2.Bölüm Özet Mehmed: Fetihler Sultanı 3.Bölüm", "article_sections": [{"heading": "Mehmed Fetihleri Sultani Episode 3: A Summary (English Subtitles)", "paragraphs": ["Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 3 continues the enthralling story of Mehmed, the future conqueror. Brace yourself for a thrilling episode filled with victory, war planning, and a shocking event within the palace walls."]}, {"heading": "Clearing His Name and a New Challenge Emerges", "paragraphs": ["The episode opens with a triumphant Mehmed presenting the captured pirate leader, Capello, to Sultan Murad, effectively silencing the accusations against him.", "However, a new obstacle arises as Sultan Murad demands an explanation for coins minted in Mehmed''s name during his brief reign.", "Mehmed, with his diplomatic skills, manages to appease his father by providing a clear explanation."]}, {"heading": "War Preparations and Clashing Opinions", "paragraphs": ["With the Crusaders drawing closer, the focus shifts to strategizing for war. Mehmed proposes forming an alliance with the Oghuz Turks, a concept met with opposition from Çandarlı, the Grand Vizier.", "This disagreement creates tension between Mehmed, who favors a united front, and Çandarlı, who advocates for a more cautious approach.", "The episode leaves the audience with a cliffhanger: will Sultan Murad side with Mehmed''s vision for an alliance or follow Çandarlı''s conservative strategy?"]}, {"heading": "A Daring Plan and an Unexpected Threat", "paragraphs": ["Following his father''s orders, Mehmed embarks on a mission to gather intel on the Crusaders'' movements. Through captured Wallachians, he devises a daring plan to launch a surprise attack on Yanosh, the Crusader leader.", "Meanwhile, Yanosh is not idle. He prepares his own offensive, aiming to strike a decisive blow against both Murad in the capital and Mehmed on the battlefield."]}, {"heading": "A Shocking Incident Within the Palace Walls", "paragraphs": ["The episode throws another curveball with a shocking incident involving Prince Ahmed, Mehmed''s half-brother. While under Hüma''s care, Ahmed chokes on food, leaving her and her confidante Çeşmidil in a difficult situation.", "This event has the potential to create significant tension within the palace, particularly between Hüma and Halime, another contender for the throne.", "The audience wonders: how will Hüma react to Ahmed''s choking incident? Will she intervene or remain silent, and what impact will this have on the palace dynamics?"]}, {"heading": "Where to Watch Mehmed Fetihleri Sultani Episode 3 with English Subtitles", "paragraphs": ["You can watch Mehmed Fetihleri Sultani Episode 3 (Bolum 3) with English subtitles on official streaming platforms or reputable websites i.e NiaziPlay . Remember to exercise caution while searching online and only access content from trustworthy sources."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fetihleri Sultani Episode 3 leaves viewers with several burning questions:", "Will Mehmed''s daring plan to ambush Yanosh succeed?", "How will the political tension between Mehmed and Çandarlı regarding the war strategy be resolved?", "How will Ahmed''s choking incident impact the palace power struggle, particularly between Hüma and Halime?", "Stay tuned for the next episode to witness the continuation of this captivating historical drama and discover the answers to these pressing questions!", "References:", "Mehmed: Sultan of Conquests Episode 3 Trailer", "Mehmed: Fetihler Sultanı 3.Bölüm Özet", "Mehmed: Fetihler Sultanı 2.Bölüm Özet", "Mehmed: Fetihler Sultanı 3.Bölüm"]}], "description_status": "extracted", "meta_description": "Dive into the captivating world of Mehmed Fetihleri Sultani Episode 3! See Mehmed clear his name, strategize for war, and face a palace crisis. Discover where t", "player_urls": ["https://play.niazitv.pk/play?data=Mjc4Nw==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvRW5nbGlzaC9TMS9FcGlzb2RlLTMubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1710259012.webp"], "duration": "PT2H27M23S", "upload_date": "2024-03-12T16:56:51+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:13:55.308539+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-3.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2787", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 3", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-3"}'::jsonb,
    '9a7059686bf9b83501eabee055d3ca5b883cd7193cf28270dfae816122da7316'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2802'),
    'video-2802',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-4'),
    'Mehmed Fetihleri Sultani Episode 4 Urdu Subtitles: Triumph and Treachery',
    1,
    ARRAY['Urdu'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1710866318.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2802'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2802'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-4.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2802',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2802',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2802", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2802", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2802", "heading": "Episode 4 - Urdu Subtitles", "title": "Mehmed Fetihleri Sultani Episode 4 Urdu Subtitles: Triumph and Treachery", "season": 1, "season_source": "catalog", "episode": 4, "bolum": null, "part": null, "languages": ["Urdu"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 4 immerses viewers in a thrilling episode filled with battlefield surprises, political machinations, and unexpected developments within the palace walls.", "article_text": "Mehmed Fetihleri Sultani Episode 4: A Summary Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 4 immerses viewers in a thrilling episode filled with battlefield surprises, political machinations, and unexpected developments within the palace walls. Ambush and Peril The episode opens with a heart-stopping scene as Mehmed falls victim to a cleverly orchestrated ambush by Yanoş, the cunning leader of the Crusaders. Narrowly escaping a barrage of arrows, Mehmed must find a way to not only save himself but also come to his father''s aid. A Desperate Battle and a Looming Threat Meanwhile, Sultan Murad''s camp faces a terrifying assault. Wallachian attackers armed with explosive devices wreak havoc, putting Murad''s life in immediate danger. Will Murad manage to escape this perilous situation, or will he fall victim to the enemy''s onslaught? Political Maneuvering and a Forced Union Following a hard-fought victory in the Battle of Kosovo, the Ottomans return home. However, Çandarlı, the Grand Vizier, hasn''t forgotten the challenges Mehmed presented to his authority. Fueled by resentment, Çandarlı hatches a deceitful plan to eliminate Mehmed. He enlists the help of Zafer Toyunda to carry out this treacherous plot. A New Chapter in the Harem Amidst the political turmoil, a significant event unfolds within the palace. With Sultan Murad''s consent, Mehmed is unexpectedly wed to Gülşah. This arranged marriage leaves Bahar, who harbors feelings for Mehmed, heartbroken. While Mehmed accepts his fate, his true desires lie elsewhere. Shifting Power Dynamics and Halime''s Schemes Cunning Halime, another contender for power in the harem, manages to manipulate Murad into exiling Hüma to Bursa. This turn of events further weakens Hüma''s position and adds to her illness. With Gülşah now Mehmed''s wife, Halime sets her sights on further manipulating the harem dynamics to her advantage. The episode leaves the audience wondering: will Halime''s schemes succeed in solidifying her power, or will unforeseen circumstances disrupt her plans? Where to Watch Mehmed Fetihleri Sultani Episode 4 with Urdu Subtitles You can watch other series with Urdu Subtitles as well as Mehmed Fetihleri Sultani Episode 4 (Bolum 4) with Urdu subtitles on official streaming platforms or reputable websites i.e NiaziPlay . Remember to exercise caution while searching online and only access content from trustworthy sources. A Look Ahead: The Intrigue Continues Mehmed Fetihleri Sultani Episode 4 leaves viewers with several questions that fuel anticipation for the next episode: Will Mehmed find a way to overcome the challenges posed by Çandarlı''s treachery? How will Gülşah adjust to her new role as Mehmed''s wife? Will Hüma find a way to return from exile and influence the events unfolding within the palace? Stay tuned for the next episode to witness the continuation of this captivating historical drama and discover the answers to these pressing questions! References: Mehmed: Fetihler Sultanı 4.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 4.Bölüm Özet Mehmed: Fetihler Sultanı 3.Bölüm Özet", "article_sections": [{"heading": "Mehmed Fetihleri Sultani Episode 4: A Summary", "paragraphs": ["Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 4 immerses viewers in a thrilling episode filled with battlefield surprises, political machinations, and unexpected developments within the palace walls."]}, {"heading": "Ambush and Peril", "paragraphs": ["The episode opens with a heart-stopping scene as Mehmed falls victim to a cleverly orchestrated ambush by Yanoş, the cunning leader of the Crusaders.", "Narrowly escaping a barrage of arrows, Mehmed must find a way to not only save himself but also come to his father''s aid."]}, {"heading": "A Desperate Battle and a Looming Threat", "paragraphs": ["Meanwhile, Sultan Murad''s camp faces a terrifying assault. Wallachian attackers armed with explosive devices wreak havoc, putting Murad''s life in immediate danger.", "Will Murad manage to escape this perilous situation, or will he fall victim to the enemy''s onslaught?"]}, {"heading": "Political Maneuvering and a Forced Union", "paragraphs": ["Following a hard-fought victory in the Battle of Kosovo, the Ottomans return home. However, Çandarlı, the Grand Vizier, hasn''t forgotten the challenges Mehmed presented to his authority.", "Fueled by resentment, Çandarlı hatches a deceitful plan to eliminate Mehmed. He enlists the help of Zafer Toyunda to carry out this treacherous plot."]}, {"heading": "A New Chapter in the Harem", "paragraphs": ["Amidst the political turmoil, a significant event unfolds within the palace. With Sultan Murad''s consent, Mehmed is unexpectedly wed to Gülşah.", "This arranged marriage leaves Bahar, who harbors feelings for Mehmed, heartbroken. While Mehmed accepts his fate, his true desires lie elsewhere."]}, {"heading": "Shifting Power Dynamics and Halime''s Schemes", "paragraphs": ["Cunning Halime, another contender for power in the harem, manages to manipulate Murad into exiling Hüma to Bursa. This turn of events further weakens Hüma''s position and adds to her illness.", "With Gülşah now Mehmed''s wife, Halime sets her sights on further manipulating the harem dynamics to her advantage.", "The episode leaves the audience wondering: will Halime''s schemes succeed in solidifying her power, or will unforeseen circumstances disrupt her plans?"]}, {"heading": "Where to Watch Mehmed Fetihleri Sultani Episode 4 with Urdu Subtitles", "paragraphs": ["You can watch other series with Urdu Subtitles as well as Mehmed Fetihleri Sultani Episode 4 (Bolum 4) with Urdu subtitles on official streaming platforms or reputable websites i.e NiaziPlay . Remember to exercise caution while searching online and only access content from trustworthy sources."]}, {"heading": "A Look Ahead: The Intrigue Continues", "paragraphs": ["Mehmed Fetihleri Sultani Episode 4 leaves viewers with several questions that fuel anticipation for the next episode:", "Will Mehmed find a way to overcome the challenges posed by Çandarlı''s treachery?", "How will Gülşah adjust to her new role as Mehmed''s wife?", "Will Hüma find a way to return from exile and influence the events unfolding within the palace?", "Stay tuned for the next episode to witness the continuation of this captivating historical drama and discover the answers to these pressing questions!", "References:", "Mehmed: Fetihler Sultanı 4.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 4.Bölüm Özet", "Mehmed: Fetihler Sultanı 3.Bölüm Özet"]}], "description_status": "extracted", "meta_description": "The epic serie of Mehmed Fetihleri Sultani continues in Episode 4! Witness Mehmed navigate a cunning ambush, political maneuvering, and a forced marriage. Learn", "player_urls": ["https://play.niazitv.pk/play?data=MjgwMg==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvVXJkdS9TMS9FcGlzb2RlLTQubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1710866318.webp"], "duration": "PT2H17M32S", "upload_date": "2024-03-19T17:38:37+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:13:56.286197+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-4.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2802", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 4", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-4"}'::jsonb,
    '3ddfed51c9addc14f5191e4e223d2552323362c35141ee7f403e05a5168a1bc7'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2803'),
    'video-2803',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-4'),
    'Mehmed Fetihleri Sultani Episode 4 Watch with English Subtitles!',
    1,
    ARRAY['English'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1710866688.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2803'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2803'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-4.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2803',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2803',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2803", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2803", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2803", "heading": "Episode 4 - English Subtitles", "title": "Mehmed Fetihleri Sultani Episode 4 Watch with English Subtitles!", "season": 1, "season_source": "catalog", "episode": 4, "bolum": null, "part": null, "languages": ["English"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 4 picks up the pace with thrilling battles, political maneuvering, and a power struggle within the harem. Brace yourself for a captivating episode filled with unexpected twists and turns.", "article_text": "Mehmed Fetihleri Sultani Episode 4: A Summary Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 4 picks up the pace with thrilling battles, political maneuvering, and a power struggle within the harem. Brace yourself for a captivating episode filled with unexpected twists and turns. Escaping a Deadly Trap and a Father in Peril The episode opens with a shocking twist as Mehmed falls victim to a cunning ambush orchestrated by Yanoş, the Crusader leader. Narrowly escaping a hail of arrows, Mehmed must find a way to overcome this setback and aid his father, Sultan Murad, who faces a desperate situation. The Ottomans Prevail and Political Games Resume Back at the Ottoman camp, Sultan Murad''s tent is subjected to a brutal onslaught by Wallachians wielding explosive devices. With danger closing in, how will Murad escape this perilous situation? The episode offers a glimpse of hope as the Ottomans emerge victorious in the Kosovo War. However, upon their return, Çandarlı, the Grand Vizier, remains bitter about Mehmed''s past actions and seeks revenge. An Unforeseen Marriage and Shifting Power Dynamics With Sultan Murad''s approval, Mehmed is unexpectedly wed to Gülşah. This arranged marriage leaves Bahar, Mehmed''s true love, heartbroken. While Mehmed reluctantly accepts the union, his heart yearns for a different path. In the harem, Halime Sultan, a cunning player, manipulates Murad into sending Hüma, Mehmed''s favored wife, away to Bursa. This exile worsens Hüma''s illness. With Gülşah now Mehmed''s wife, Halime sets her sights on further schemes to solidify her power within the harem. Will Halime''s machinations succeed, or will the future hold a reversal of fortune? Where to Watch Mehmed Fetihleri Sultani Episode 4 with English Subtitles You can watch Mehmed Fetihleri Sultani Episode 4 (Bolum 4) with English subtitles on official streaming platforms or reputable websites i.e NiaziPlay . Remember to exercise caution while searching online and only access content from trustworthy sources. A Look Ahead: Questions Remain Mehmed Fetihleri Sultani Episode 4 leaves viewers with several unanswered questions: Will Mehmed find a way to overcome the challenges posed by Yanoş and Çandarlı? How will he navigate his forced marriage to Gülşah while his heart belongs to Bahar? Will Hüma recover from her illness and return from exile to challenge Halime''s dominance in the harem? Stay tuned for the next episode to witness the continuation of this captivating historical drama and discover the answers to these pressing questions! References: Mehmed: Fetihler Sultanı 4.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 4.Bölüm Özet Mehmed: Fetihler Sultanı 3.Bölüm Özet", "article_sections": [{"heading": "Mehmed Fetihleri Sultani Episode 4: A Summary", "paragraphs": ["Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 4 picks up the pace with thrilling battles, political maneuvering, and a power struggle within the harem. Brace yourself for a captivating episode filled with unexpected twists and turns."]}, {"heading": "Escaping a Deadly Trap and a Father in Peril", "paragraphs": ["The episode opens with a shocking twist as Mehmed falls victim to a cunning ambush orchestrated by Yanoş, the Crusader leader.", "Narrowly escaping a hail of arrows, Mehmed must find a way to overcome this setback and aid his father, Sultan Murad, who faces a desperate situation."]}, {"heading": "The Ottomans Prevail and Political Games Resume", "paragraphs": ["Back at the Ottoman camp, Sultan Murad''s tent is subjected to a brutal onslaught by Wallachians wielding explosive devices.", "With danger closing in, how will Murad escape this perilous situation?", "The episode offers a glimpse of hope as the Ottomans emerge victorious in the Kosovo War. However, upon their return, Çandarlı, the Grand Vizier, remains bitter about Mehmed''s past actions and seeks revenge."]}, {"heading": "An Unforeseen Marriage and Shifting Power Dynamics", "paragraphs": ["With Sultan Murad''s approval, Mehmed is unexpectedly wed to Gülşah. This arranged marriage leaves Bahar, Mehmed''s true love, heartbroken.", "While Mehmed reluctantly accepts the union, his heart yearns for a different path.", "In the harem, Halime Sultan, a cunning player, manipulates Murad into sending Hüma, Mehmed''s favored wife, away to Bursa. This exile worsens Hüma''s illness.", "With Gülşah now Mehmed''s wife, Halime sets her sights on further schemes to solidify her power within the harem.", "Will Halime''s machinations succeed, or will the future hold a reversal of fortune?"]}, {"heading": "Where to Watch Mehmed Fetihleri Sultani Episode 4 with English Subtitles", "paragraphs": ["You can watch Mehmed Fetihleri Sultani Episode 4 (Bolum 4) with English subtitles on official streaming platforms or reputable websites i.e NiaziPlay . Remember to exercise caution while searching online and only access content from trustworthy sources."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fetihleri Sultani Episode 4 leaves viewers with several unanswered questions:", "Will Mehmed find a way to overcome the challenges posed by Yanoş and Çandarlı?", "How will he navigate his forced marriage to Gülşah while his heart belongs to Bahar?", "Will Hüma recover from her illness and return from exile to challenge Halime''s dominance in the harem?", "Stay tuned for the next episode to witness the continuation of this captivating historical drama and discover the answers to these pressing questions!", "References:", "Mehmed: Fetihler Sultanı 4.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 4.Bölüm Özet", "Mehmed: Fetihler Sultanı 3.Bölüm Özet"]}], "description_status": "extracted", "meta_description": "The epic serie of Mehmed Fetihleri Sultani continues in Episode 4! Witness Mehmed face a deadly trap, navigate political intrigue, and a shocking development in", "player_urls": ["https://play.niazitv.pk/play?data=MjgwMw==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvRW5nbGlzaC9TMS9FcGlzb2RlLTQubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1710866688.webp"], "duration": "PT2H20M7S", "upload_date": "2024-03-19T17:44:47+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:13:57.179196+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-4.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2803", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 4", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-4"}'::jsonb,
    'd33e3d901c2caab356f70a2fa15b1d1d00da04f4f470f80e00accc451527e350'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2818'),
    'video-2818',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-5'),
    'Mehmed Fetihleri Sultani Episode 5 Urdu Subtitles: Witness Mehmed''s Bold Move!',
    1,
    ARRAY['Urdu'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1711499848.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2818'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2818'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-5.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2818',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2818',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2818", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2818", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2818", "heading": "Episode 5 - Urdu Subtitles", "title": "Mehmed Fetihleri Sultani Episode 5 Urdu Subtitles: Witness Mehmed''s Bold Move!", "season": 1, "season_source": "catalog", "episode": 5, "bolum": null, "part": null, "languages": ["Urdu"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 5 throws viewers into a whirlwind of emotions with a daring rescue mission, a heartbreaking loss, and escalating palace tensions.", "article_text": "Mehmed Fetihleri Sultani Episode 5: A Summary Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 5 throws viewers into a whirlwind of emotions with a daring rescue mission, a heartbreaking loss, and escalating palace tensions. A Risky Rescue on the Wedding Night The episode opens on a dramatic note as Mehmed embarks on a dangerous journey to Constantinople, his ultimate dream and the object of his affection, on his very wedding night. His mission: to rescue Zağanos, a captive, with the help of a mysterious insider within the Byzantine palace. Despite the high risk of being captured, Mehmed ventures into enemy territory, determined to save Zağanos. The success of this daring operation hinges on convincing Urban, the insider, to join him. Will Mehmed be able to persuade Urban to return with him? A Shocking Loss and Family Conflict Tragedy strikes as Mehmed receives devastating news – the death of his mother. This loss throws Mehmed into a state of emotional turmoil. He grapples with conflicting emotions, questioning whether to hold his father, Sultan Murad, accountable for his mother''s demise. Adding to the chaos, Mehmed''s absence from the wedding night after marrying Gülşah sends shockwaves through the Edirne Palace. Gülşah''s father, İbrahim, confronts Sultan Murad, demanding answers. The episode leaves the audience wondering: will Murad appease İbrahim by allowing Gülşah to return to her father, or will he uphold dynastic tradition? Byzantine Intrigue and Internal Power Struggles Meanwhile, in Constantinople, Byzantine spies uncover the presence of Turkish infiltrators within the city, including Mehmed! The cunning duo of Helena and Notaras devise a plan to capture Mehmed and his team. While Helena wields significant influence within the Byzantine administration, her presence creates tension with her son, Konstantinos. The audience wonders: will Helena and Notaras succeed in capturing Mehmed? How will Konstantinos react to his mother''s growing power? Where to Watch Mehmed Fetihleri Sultani Episode 5 with Urdu Subtitles Craving the next chapter of Mehmed''s enthralling story? You can watch Mehmed Fetihleri Sultani Episode 5 (Bolum 5) with Urdu subtitles on NiaziPlay ( https://play.niazitv.pk/ )! Remember to check for subscription options or any viewing requirements before diving in. A Look Ahead: Questions Remain Mehmed Fetihleri Sultani Episode 5 leaves viewers with several burning questions: Will Mehmed''s daring rescue mission in Constantinople succeed? How will he cope with the loss of his mother and the potential conflict with his father? Will Helena and Notaras'' trap capture Mehmed and his team? With tensions rising within the palace, what will the new balance of power be in the harem? Stay tuned for the next episode to witness how Mehmed navigates these challenges and witness the continuation of this captivating historical drama! References: Mehmed: Fetihler Sultanı 5.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 5.Bölüm Özet Mehmed: Fetihler Sultanı 4.Bölüm Özet", "article_sections": [{"heading": "Mehmed Fetihleri Sultani Episode 5: A Summary", "paragraphs": ["Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 5 throws viewers into a whirlwind of emotions with a daring rescue mission, a heartbreaking loss, and escalating palace tensions."]}, {"heading": "A Risky Rescue on the Wedding Night", "paragraphs": ["The episode opens on a dramatic note as Mehmed embarks on a dangerous journey to Constantinople, his ultimate dream and the object of his affection, on his very wedding night.", "His mission: to rescue Zağanos, a captive, with the help of a mysterious insider within the Byzantine palace.", "Despite the high risk of being captured, Mehmed ventures into enemy territory, determined to save Zağanos.", "The success of this daring operation hinges on convincing Urban, the insider, to join him. Will Mehmed be able to persuade Urban to return with him?"]}, {"heading": "A Shocking Loss and Family Conflict", "paragraphs": ["Tragedy strikes as Mehmed receives devastating news – the death of his mother.", "This loss throws Mehmed into a state of emotional turmoil. He grapples with conflicting emotions, questioning whether to hold his father, Sultan Murad, accountable for his mother''s demise.", "Adding to the chaos, Mehmed''s absence from the wedding night after marrying Gülşah sends shockwaves through the Edirne Palace. Gülşah''s father, İbrahim, confronts Sultan Murad, demanding answers.", "The episode leaves the audience wondering: will Murad appease İbrahim by allowing Gülşah to return to her father, or will he uphold dynastic tradition?"]}, {"heading": "Byzantine Intrigue and Internal Power Struggles", "paragraphs": ["Meanwhile, in Constantinople, Byzantine spies uncover the presence of Turkish infiltrators within the city, including Mehmed!", "The cunning duo of Helena and Notaras devise a plan to capture Mehmed and his team.", "While Helena wields significant influence within the Byzantine administration, her presence creates tension with her son, Konstantinos.", "The audience wonders: will Helena and Notaras succeed in capturing Mehmed? How will Konstantinos react to his mother''s growing power?"]}, {"heading": "Where to Watch Mehmed Fetihleri Sultani Episode 5 with Urdu Subtitles", "paragraphs": ["Craving the next chapter of Mehmed''s enthralling story? You can watch Mehmed Fetihleri Sultani Episode 5 (Bolum 5) with Urdu subtitles on NiaziPlay ( https://play.niazitv.pk/ )! Remember to check for subscription options or any viewing requirements before diving in."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fetihleri Sultani Episode 5 leaves viewers with several burning questions:", "Will Mehmed''s daring rescue mission in Constantinople succeed?", "How will he cope with the loss of his mother and the potential conflict with his father?", "Will Helena and Notaras'' trap capture Mehmed and his team?", "With tensions rising within the palace, what will the new balance of power be in the harem?", "Stay tuned for the next episode to witness how Mehmed navigates these challenges and witness the continuation of this captivating historical drama!", "References:", "Mehmed: Fetihler Sultanı 5.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 5.Bölüm Özet", "Mehmed: Fetihler Sultanı 4.Bölüm Özet"]}], "description_status": "extracted", "meta_description": "The captivating Mehmed Fetihleri Sultani continues in Episode 5! Witness Mehmed embark on a perilous mission on his wedding night, face a shocking loss, and nav", "player_urls": ["https://play.niazitv.pk/play?data=MjgxOA==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvVXJkdS9TMS9FcGlzb2RlLTUubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1711499848.webp"], "duration": "PT2H14M32S", "upload_date": "2024-03-27T01:37:28+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:13:58.209323+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-5.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2818", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 5", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-5"}'::jsonb,
    'b78a35949c4ca75375ae8cd7020a908d1b4dfcf7d766df70a49b0a0148c08e1b'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2819'),
    'video-2819',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-5'),
    'Mehmed Fetihleri Sultani Episode 5 English Subtitles: Peril and Loss Await',
    1,
    ARRAY['English'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1711500122.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2819'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2819'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-5.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2819',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2819',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2819", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2819", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2819", "heading": "Episode 5 - English Subtitles", "title": "Mehmed Fetihleri Sultani Episode 5 English Subtitles: Peril and Loss Await", "season": 1, "season_source": "catalog", "episode": 5, "bolum": null, "part": null, "languages": ["English"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 5 throws viewers into a whirlwind of emotions. Brace yourself for a daring rescue mission, a devastating loss, and simmering palace tensions.", "article_text": "Mehmed Fetihleri Sultani Episode 5: A Summary Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 5 throws viewers into a whirlwind of emotions. Brace yourself for a daring rescue mission, a devastating loss, and simmering palace tensions. A Risky Rescue on the Wedding Night On his wedding night to Gülşah, Mehmed defies expectations by embarking on a perilous journey to Constantinople, his ultimate dream and love. Driven by loyalty, he seeks to rescue his friend, Zağanos, who is imprisoned within the Byzantine capital. To achieve this impossible feat, Mehmed collaborates with an unexpected figure from the Byzantine palace. Will Mehmed succeed in saving Zağanos from the heart of enemy territory, despite the high risk of being captured? Will he be able to convince Urban, the Byzantine collaborator, to join him on his escape? A Devastating Loss and Mounting Tensions Just as Mehmed grapples with his mission, his world crumbles with the news of his mother''s sudden death. This tragedy throws him into turmoil, raising questions about his relationship with his father, Sultan Murad. Will Mehmed hold Murad responsible for his mother''s passing, further straining their relationship? Turmoil in Edirne Palace News of Mehmed''s daring escape to Constantinople on his wedding night sends shockwaves through Edirne Palace. Gülşah, his new wife, is left abandoned, causing tension with her father, İbrahim. İbrahim seeks an audience with Murad, demanding answers regarding his daughter''s treatment. Will Murad prioritize dynastic tradition and keep Gülşah as Mehmed''s wife, or will he acknowledge the awkward situation? Byzantine Intrigue and Internal Conflict Meanwhile, in Constantinople, Helena and Notaras, alerted by their spies, devise a plan to capture Mehmed and his team. Konstantinos, unaware of these machinations, becomes increasingly uncomfortable with his mother Helena''s growing influence in the Byzantine administration. Will Helena and Notaras succeed in capturing Mehmed, jeopardizing his mission and further escalating tensions between the Ottomans and the Byzantines? Where to Watch Mehmed Fetihleri Sultani Episode 5 with English Subtitles Embark on this captivating historical drama and witness the unfolding events in Mehmed Fetihleri Sultani Episode 5 (Bolum 5) ! Enjoy the episode with English subtitles on NiaziPlay ( https://play.niazitv.pk/ ). Remember to exercise caution while streaming online and only access content from trustworthy sources. A Look Ahead: Questions Remain Mehmed Fetihleri Sultani Episode 5 leaves viewers with several burning questions: Will Mehmed''s daring rescue mission succeed, or will he fall prey to the Byzantine trap? How will he cope with the devastating loss of his mother and its impact on his relationship with Sultan Murad? Will Gülşah remain Mehmed''s wife, or will the situation lead to a separation? How will the power struggle between Helena and Konstantinos within the Byzantine court play out? Stay tuned for the next episode to discover the answers to these pressing questions and witness the continuation of Mehmed''s journey towards becoming a conqueror! References: Mehmed: Fetihler Sultanı 5.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 5.Bölüm Özet Mehmed: Fetihler Sultanı 4.Bölüm Özet", "article_sections": [{"heading": "Mehmed Fetihleri Sultani Episode 5: A Summary", "paragraphs": ["Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 5 throws viewers into a whirlwind of emotions. Brace yourself for a daring rescue mission, a devastating loss, and simmering palace tensions."]}, {"heading": "A Risky Rescue on the Wedding Night", "paragraphs": ["On his wedding night to Gülşah, Mehmed defies expectations by embarking on a perilous journey to Constantinople, his ultimate dream and love.", "Driven by loyalty, he seeks to rescue his friend, Zağanos, who is imprisoned within the Byzantine capital.", "To achieve this impossible feat, Mehmed collaborates with an unexpected figure from the Byzantine palace.", "Will Mehmed succeed in saving Zağanos from the heart of enemy territory, despite the high risk of being captured?", "Will he be able to convince Urban, the Byzantine collaborator, to join him on his escape?"]}, {"heading": "A Devastating Loss and Mounting Tensions", "paragraphs": ["Just as Mehmed grapples with his mission, his world crumbles with the news of his mother''s sudden death.", "This tragedy throws him into turmoil, raising questions about his relationship with his father, Sultan Murad.", "Will Mehmed hold Murad responsible for his mother''s passing, further straining their relationship?"]}, {"heading": "Turmoil in Edirne Palace", "paragraphs": ["News of Mehmed''s daring escape to Constantinople on his wedding night sends shockwaves through Edirne Palace.", "Gülşah, his new wife, is left abandoned, causing tension with her father, İbrahim.", "İbrahim seeks an audience with Murad, demanding answers regarding his daughter''s treatment.", "Will Murad prioritize dynastic tradition and keep Gülşah as Mehmed''s wife, or will he acknowledge the awkward situation?"]}, {"heading": "Byzantine Intrigue and Internal Conflict", "paragraphs": ["Meanwhile, in Constantinople, Helena and Notaras, alerted by their spies, devise a plan to capture Mehmed and his team.", "Konstantinos, unaware of these machinations, becomes increasingly uncomfortable with his mother Helena''s growing influence in the Byzantine administration.", "Will Helena and Notaras succeed in capturing Mehmed, jeopardizing his mission and further escalating tensions between the Ottomans and the Byzantines?"]}, {"heading": "Where to Watch Mehmed Fetihleri Sultani Episode 5 with English Subtitles", "paragraphs": ["Embark on this captivating historical drama and witness the unfolding events in Mehmed Fetihleri Sultani Episode 5 (Bolum 5) ! Enjoy the episode with English subtitles on NiaziPlay ( https://play.niazitv.pk/ ). Remember to exercise caution while streaming online and only access content from trustworthy sources."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fetihleri Sultani Episode 5 leaves viewers with several burning questions:", "Will Mehmed''s daring rescue mission succeed, or will he fall prey to the Byzantine trap?", "How will he cope with the devastating loss of his mother and its impact on his relationship with Sultan Murad?", "Will Gülşah remain Mehmed''s wife, or will the situation lead to a separation?", "How will the power struggle between Helena and Konstantinos within the Byzantine court play out?", "Stay tuned for the next episode to discover the answers to these pressing questions and witness the continuation of Mehmed''s journey towards becoming a conqueror!", "References:", "Mehmed: Fetihler Sultanı 5.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 5.Bölüm Özet", "Mehmed: Fetihler Sultanı 4.Bölüm Özet"]}], "description_status": "extracted", "meta_description": "In Mehmed Fetihleri Sultani Episode 5, Mehmed risks everything on his wedding night to save a friend in Constantinople. Meanwhile, devastating news shakes the p", "player_urls": ["https://play.niazitv.pk/play?data=MjgxOQ==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvRW5nbGlzaC9TMS9FcGlzb2RlLTUubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1711500122.webp"], "duration": "PT2H14M34S", "upload_date": "2024-03-27T01:42:01+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:13:59.181366+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-5.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2819", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 5", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-5"}'::jsonb,
    '8d611690338873f8b460d4788d9ec1dd036695ba5ae8bd1e9e627acedd7de091'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2834'),
    'video-2834',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-6'),
    'Mehmed Fetihleri Sultani Episode 6 Urdu Subtitles : Witness Mehmed''s Challenges!',
    1,
    ARRAY['Urdu'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1712077876.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2834'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2834'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-6.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2834',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2834',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2834", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2834", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2834", "heading": "Episode 6 - Urdu Subtitles", "title": "Mehmed Fetihleri Sultani Episode 6 Urdu Subtitles : Witness Mehmed''s Challenges!", "season": 1, "season_source": "catalog", "episode": 6, "bolum": null, "part": null, "languages": ["Urdu"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fetihleri Sultani Episode 6 (Bolum 6) throws viewers into a whirlwind of political turmoil, unexpected encounters, and a perilous journey. Brace yourself for a captivating episode filled with intrigue and strategic maneuvering.", "article_text": "Mehmed Fetihleri Sultani Episode 6: A Summary Mehmed Fetihleri Sultani Episode 6 (Bolum 6) throws viewers into a whirlwind of political turmoil, unexpected encounters, and a perilous journey. Brace yourself for a captivating episode filled with intrigue and strategic maneuvering. An Ambush and a Mysterious Ally The episode opens with a heart-pounding scene as Mehmed finds himself ambushed by a group of impoverished people. Fighting fiercely for his survival, he awaits a crucial turn of events. Will Isaac, a mysterious figure galloping towards the scene with his men, come to Mehmed''s aid, or does he harbor a hidden agenda? This unexpected encounter sets the stage for a thrilling sequence of events. A Journey to Karamanoğlu and a Hidden Message Returning to Edirne after the events of the previous episode, Mehmed makes a surprising decision. He takes his harem and embarks on a journey to Manisa, where they decide to travel further to the lands of Karamanoğlu. A letter addressed to Gülşah sparks curiosity about the purpose of this unexpected trip. What challenges and discoveries await Mehmed on this journey, and what secrets lie within the letter? Political Maneuvers in Edirne and a Deteriorating Sultan Back in Edirne, the loss of his beloved Hüma weighs heavily on Sultan Murad. His emotional state deteriorates, causing concern for the stability of the throne. Çandarlı, the Grand Vizier, recognizes the gravity of the situation and worries about the future of the empire. What measures will he take to ensure stability in the absence of a strong Sultan? Aware of the situation in Edirne, Mehmed leaves Şehabeddin behind to maintain order. However, this decision might trigger another set of challenges. How will Çandarlı react to Mehmed''s absence and what new strategies will he employ? Byzantine Intrigue and a Looming Power Struggle In Byzantium, the conflict between Constantine and Helena deepens. Constantine, yearning for change, contemplates crucial decisions aimed at transforming the fate of the empire. However, Helena and Notaras stand as formidable obstacles, clinging to their positions of power. Will Constantine''s desire for change prevail against their resistance? Where to Watch Mehmed Fetihleri Sultani Episode 6 with Urdu Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fetihleri Sultani Episode 6 (Bolum 6) with Urdu subtitles! Immerse yourself in the historical drama and witness the complex interplay of power, personal struggles, and unexpected alliances. A Look Ahead: Questions Remain Mehmed Fetihleri Sultani Episode 6 leaves viewers with several unanswered questions: Will Mehmed find a powerful ally in Isaac, or will he face further betrayal? What secrets does the letter hold, and what will be the outcome of Mehmed''s journey to Karamanoğlu? Can Çandarlı successfully manage the empire in Murad''s weakened state? Will Constantine manage to overcome Helena and Notaras, and implement his vision for Byzantium? Stay tuned for the next episode to witness the continuation of this enthralling historical saga and discover the answers to these compelling questions! References: Mehmed: Fetihler Sultanı 6.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 6.Bölüm Özet Mehmed: Fetihler Sultanı 5.Bölüm Özet", "article_sections": [{"heading": "Mehmed Fetihleri Sultani Episode 6: A Summary", "paragraphs": ["Mehmed Fetihleri Sultani Episode 6 (Bolum 6) throws viewers into a whirlwind of political turmoil, unexpected encounters, and a perilous journey. Brace yourself for a captivating episode filled with intrigue and strategic maneuvering."]}, {"heading": "An Ambush and a Mysterious Ally", "paragraphs": ["The episode opens with a heart-pounding scene as Mehmed finds himself ambushed by a group of impoverished people. Fighting fiercely for his survival, he awaits a crucial turn of events.", "Will Isaac, a mysterious figure galloping towards the scene with his men, come to Mehmed''s aid, or does he harbor a hidden agenda? This unexpected encounter sets the stage for a thrilling sequence of events."]}, {"heading": "A Journey to Karamanoğlu and a Hidden Message", "paragraphs": ["Returning to Edirne after the events of the previous episode, Mehmed makes a surprising decision. He takes his harem and embarks on a journey to Manisa, where they decide to travel further to the lands of Karamanoğlu.", "A letter addressed to Gülşah sparks curiosity about the purpose of this unexpected trip. What challenges and discoveries await Mehmed on this journey, and what secrets lie within the letter?"]}, {"heading": "Political Maneuvers in Edirne and a Deteriorating Sultan", "paragraphs": ["Back in Edirne, the loss of his beloved Hüma weighs heavily on Sultan Murad. His emotional state deteriorates, causing concern for the stability of the throne.", "Çandarlı, the Grand Vizier, recognizes the gravity of the situation and worries about the future of the empire. What measures will he take to ensure stability in the absence of a strong Sultan?", "Aware of the situation in Edirne, Mehmed leaves Şehabeddin behind to maintain order. However, this decision might trigger another set of challenges. How will Çandarlı react to Mehmed''s absence and what new strategies will he employ?"]}, {"heading": "Byzantine Intrigue and a Looming Power Struggle", "paragraphs": ["In Byzantium, the conflict between Constantine and Helena deepens. Constantine, yearning for change, contemplates crucial decisions aimed at transforming the fate of the empire.", "However, Helena and Notaras stand as formidable obstacles, clinging to their positions of power. Will Constantine''s desire for change prevail against their resistance?"]}, {"heading": "Where to Watch Mehmed Fetihleri Sultani Episode 6 with Urdu Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fetihleri Sultani Episode 6 (Bolum 6) with Urdu subtitles! Immerse yourself in the historical drama and witness the complex interplay of power, personal struggles, and unexpected alliances."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fetihleri Sultani Episode 6 leaves viewers with several unanswered questions:", "Will Mehmed find a powerful ally in Isaac, or will he face further betrayal?", "What secrets does the letter hold, and what will be the outcome of Mehmed''s journey to Karamanoğlu?", "Can Çandarlı successfully manage the empire in Murad''s weakened state?", "Will Constantine manage to overcome Helena and Notaras, and implement his vision for Byzantium?", "Stay tuned for the next episode to witness the continuation of this enthralling historical saga and discover the answers to these compelling questions!", "References:", "Mehmed: Fetihler Sultanı 6.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 6.Bölüm Özet", "Mehmed: Fetihler Sultanı 5.Bölüm Özet"]}], "description_status": "extracted", "meta_description": "The serie of Mehmed Fetihleri Sultani continues in Episode 6! Face a thrilling ambush, a political struggle in Edirne, and Mehmed''s journey with hidden motives.", "player_urls": ["https://play.niazitv.pk/play?data=MjgzNA==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvVXJkdS9TMS9FcGlzb2RlLTYubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1712077876.webp"], "duration": "PT2H22M3S", "upload_date": "2024-04-02T19:11:16+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:00.197852+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-6.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2834", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 6", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-6"}'::jsonb,
    '9c128209112c037ec42831b458bfe8072a97b05a3e1f37e0c80d74d1fea98915'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2835'),
    'video-2835',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-6'),
    'Mehmed Fetihleri Sultani Episode 6 English Subtitles : Peril and Politics Await',
    1,
    ARRAY['English'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1712078128.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2835'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2835'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-6.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2835',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2835',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2835", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2835", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2835", "heading": "Episode 6 - English Subtitles", "title": "Mehmed Fetihleri Sultani Episode 6 English Subtitles : Peril and Politics Await", "season": 1, "season_source": "catalog", "episode": 6, "bolum": null, "part": null, "languages": ["English"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 6 picks up where the previous episode left off, brimming with tension and political turmoil. Prepare yourself for an episode filled with unexpected encounters, a journey filled with uncertainty, and internal conflicts within the Ottoman Empire and the Byzantine court.", "article_text": "Mehmed Fetihleri Sultani Episode 6: A Summary (English Subtitles) Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 6 picks up where the previous episode left off, brimming with tension and political turmoil. Prepare yourself for an episode filled with unexpected encounters, a journey filled with uncertainty, and internal conflicts within the Ottoman Empire and the Byzantine court. An Ambush and a Potential Ally The episode opens with a heart-stopping scene as Mehmed finds himself ambushed by a group of impoverished citizens. Fighting for his life, Mehmed awaits a critical turn of events. In a surprising twist, Isaac, a mysterious figure, appears with his men. Will Isaac come to Mehmed''s aid, or will he seize the opportunity to attack? A Journey with Purpose and a Letter of Hope Returning to Edirne, Mehmed makes a significant decision. He gathers his harem and embarks on a journey to Manisa, his childhood home. From Manisa, Mehmed and his harem travel onwards to Karamanoğlu, a neighboring beylik (principality). This journey is prompted by a letter he sends to Gülşah, hinting at a potential purpose or plan. Turmoil in Edirne and a State in Flux Back in Edirne, Sultan Murad struggles to cope with the recent loss of his wife, Hüma, his grief taking a toll on his well-being. The Grand Vizier, Çandarlı, keenly observes this decline, deeply concerned about the future of the empire. Aware of the situation''s gravity, Mehmed leaves Şehabeddin behind in Edirne to maintain order and stability during his absence. However, Çandarlı, a shrewd political player, is likely to make a move in response to this development. Byzantine Intrigue and a Looming Power Struggle Meanwhile, within the walls of Constantinople, the conflict between Constantine and his mother, Helena, intensifies. Constantine contemplates drastic decisions aimed at reforming Byzantium. Standing in his way are Helena and Notaras, powerful figures who represent the established order. Constantine must navigate this internal power struggle if he wishes to implement his vision. Where to Watch Mehmed Fetihleri Sultani Episode 6 with English Subtitles Embark on this captivating historical drama with Mehmed Fetihleri Sultani Episode 6 (Bolum 6) , available with English subtitles on NiaziPlay ( https://play.niazitv.pk )! Witness the political maneuverings, the uncertainties of Mehmed''s journey, and the growing tensions within both empires. A Look Ahead: Questions Remain Mehmed Fetihleri Sultani Episode 6 leaves viewers with several intriguing questions: Will Mehmed find a reliable ally in Isaac? What is the purpose of Mehmed''s journey to Karamanoğlu, and what message does his letter hold for Gülşah? How will Çandarlı react to Mehmed''s absence and the political vacuum in Edirne? Will Constantine be able to overcome the obstacles posed by Helena and Notaras, and what changes might he bring to Byzantium? Stay tuned for the next episode to witness the continuation of this enthralling historical saga and discover the answers to these pressing questions! References: Mehmed: Fetihler Sultanı 6.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 6.Bölüm Özet Mehmed: Fetihler Sultanı 5.Bölüm Özet", "article_sections": [{"heading": "Mehmed Fetihleri Sultani Episode 6: A Summary (English Subtitles)", "paragraphs": ["Mehmed Fetihleri Sultani (Mehmed: Sultan of Conquests) Episode 6 picks up where the previous episode left off, brimming with tension and political turmoil. Prepare yourself for an episode filled with unexpected encounters, a journey filled with uncertainty, and internal conflicts within the Ottoman Empire and the Byzantine court."]}, {"heading": "An Ambush and a Potential Ally", "paragraphs": ["The episode opens with a heart-stopping scene as Mehmed finds himself ambushed by a group of impoverished citizens. Fighting for his life, Mehmed awaits a critical turn of events.", "In a surprising twist, Isaac, a mysterious figure, appears with his men. Will Isaac come to Mehmed''s aid, or will he seize the opportunity to attack?"]}, {"heading": "A Journey with Purpose and a Letter of Hope", "paragraphs": ["Returning to Edirne, Mehmed makes a significant decision. He gathers his harem and embarks on a journey to Manisa, his childhood home.", "From Manisa, Mehmed and his harem travel onwards to Karamanoğlu, a neighboring beylik (principality). This journey is prompted by a letter he sends to Gülşah, hinting at a potential purpose or plan."]}, {"heading": "Turmoil in Edirne and a State in Flux", "paragraphs": ["Back in Edirne, Sultan Murad struggles to cope with the recent loss of his wife, Hüma, his grief taking a toll on his well-being. The Grand Vizier, Çandarlı, keenly observes this decline, deeply concerned about the future of the empire.", "Aware of the situation''s gravity, Mehmed leaves Şehabeddin behind in Edirne to maintain order and stability during his absence. However, Çandarlı, a shrewd political player, is likely to make a move in response to this development."]}, {"heading": "Byzantine Intrigue and a Looming Power Struggle", "paragraphs": ["Meanwhile, within the walls of Constantinople, the conflict between Constantine and his mother, Helena, intensifies. Constantine contemplates drastic decisions aimed at reforming Byzantium.", "Standing in his way are Helena and Notaras, powerful figures who represent the established order. Constantine must navigate this internal power struggle if he wishes to implement his vision."]}, {"heading": "Where to Watch Mehmed Fetihleri Sultani Episode 6 with English Subtitles", "paragraphs": ["Embark on this captivating historical drama with Mehmed Fetihleri Sultani Episode 6 (Bolum 6) , available with English subtitles on NiaziPlay ( https://play.niazitv.pk )! Witness the political maneuverings, the uncertainties of Mehmed''s journey, and the growing tensions within both empires."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fetihleri Sultani Episode 6 leaves viewers with several intriguing questions:", "Will Mehmed find a reliable ally in Isaac?", "What is the purpose of Mehmed''s journey to Karamanoğlu, and what message does his letter hold for Gülşah?", "How will Çandarlı react to Mehmed''s absence and the political vacuum in Edirne?", "Will Constantine be able to overcome the obstacles posed by Helena and Notaras, and what changes might he bring to Byzantium?", "Stay tuned for the next episode to witness the continuation of this enthralling historical saga and discover the answers to these pressing questions!", "References:", "Mehmed: Fetihler Sultanı 6.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 6.Bölüm Özet", "Mehmed: Fetihler Sultanı 5.Bölüm Özet"]}], "description_status": "extracted", "meta_description": "The most watched serie of Mehmed Fetihleri Sultani continues in Episode 6! Witness Mehmed face danger, navigate political intrigue, and embark on a new journey.", "player_urls": ["https://play.niazitv.pk/play?data=MjgzNQ==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvRW5nbGlzaC9TMS9FcGlzb2RlLTYubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1712078128.webp"], "duration": "PT2H27M23S", "upload_date": "2024-04-02T19:15:28+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:01.273323+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-6.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2835", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 6", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-6"}'::jsonb,
    'a52acda1280be36965b227da68a2cb31d42b4bcece5039525242f15556441d97'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2851'),
    'video-2851',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-7'),
    'Mehmed Fetihleri Sultani Episode 7 Urdu Subtitles : Witness the Rise of Tensions!',
    1,
    ARRAY['Urdu'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1712686804.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2851'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2851'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-7.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2851',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2851',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2851", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2851", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2851", "heading": "Episode 7 - Urdu Subtitles", "title": "Mehmed Fetihleri Sultani Episode 7 Urdu Subtitles : Witness the Rise of Tensions!", "season": 1, "season_source": "catalog", "episode": 7, "bolum": null, "part": null, "languages": ["Urdu"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fetihleri Sultani Episode 7 (Bolum 7) delves deeper into the complex world of Mehmed, the future conqueror. Get ready for a thrilling episode filled with political maneuvering, a brewing rebellion, and a perilous journey.", "article_text": "Mehmed Fetihleri Sultani Episode 7: A Summary Mehmed Fetihleri Sultani Episode 7 (Bolum 7) delves deeper into the complex world of Mehmed, the future conqueror. Get ready for a thrilling episode filled with political maneuvering, a brewing rebellion, and a perilous journey. Mehmed Fetihleri Sultani Episode 7: Intrigue and Rebellion A Prince on the Move: Escaping Danger and Seeking Refuge The episode picks up where the previous episode left off, with Mehmed facing a perilous ambush by impoverished citizens. The arrival of Isaac and his men creates suspense: will they come to Mehmed''s aid, or will they join the attack? A Journey to Karamanoğlu and a Mysterious Letter Returning to Edirne, Mehmed takes his harem and embarks on a journey to Manisa. From there, they set their sights on Karamanoğlu, carrying with them a mysterious letter addressed to Gülşah. Viewers are left to wonder: what dangers or opportunities await Mehmed on this journey? What secrets lie within the letter? A Sultan in Mourning and a Grand Vizier''s Concerns Sultan Murad, still grieving the loss of Hüma, spirals further into despair. This situation arouses concern in Çandarlı, the Grand Vizier, who fears for the future of the state. Aware of the situation, Mehmed leaves Şehabeddin in Edirne to maintain order. However, Çandarlı is not idle, and viewers are left curious: what will be his next move to ensure stability? Byzantine Turmoil and a Power Struggle The episode continues to explore the political turmoil within Byzantium. Constantine and Helena, the Empress, find themselves at odds, with Constantine on the verge of making crucial decisions to reform the empire. Helena and Notaras stand as significant obstacles to these changes. The audience wonders: how will Constantine address this conflict? Where to Watch Mehmed Fetihleri Sultani Episode 7 with Urdu Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fetihleri Sultani Episode 7 (Bolum 7) with Urdu subtitles! Immerse yourself in the captivating world of the Ottoman Empire and witness the rise of tensions that will shape history. A Look Ahead: Questions Remain Mehmed Fetihleri Sultani Episode 7 leaves viewers with several burning questions: Will Mehmed escape the ambush unharmed? What will Isaac''s true intentions be? What awaits Mehmed and Gülşah on their journey to Karamanoğlu? Will Çandarlı succeed in stabilizing the Ottoman Empire? How will the power struggle within the Byzantine court unfold? Stay tuned for the next episode to discover the answers to these questions and witness the continuation of this enthralling historical drama! References: Mehmed: Fetihler Sultanı 7.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 7.Bölüm Özet Mehmed: Fetihler Sultanı 7.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fetihleri Sultani Episode 7: A Summary", "paragraphs": ["Mehmed Fetihleri Sultani Episode 7 (Bolum 7) delves deeper into the complex world of Mehmed, the future conqueror. Get ready for a thrilling episode filled with political maneuvering, a brewing rebellion, and a perilous journey."]}, {"heading": "Mehmed Fetihleri Sultani Episode 7: Intrigue and Rebellion", "paragraphs": []}, {"heading": "A Prince on the Move: Escaping Danger and Seeking Refuge", "paragraphs": ["The episode picks up where the previous episode left off, with Mehmed facing a perilous ambush by impoverished citizens.", "The arrival of Isaac and his men creates suspense: will they come to Mehmed''s aid, or will they join the attack?"]}, {"heading": "A Journey to Karamanoğlu and a Mysterious Letter", "paragraphs": ["Returning to Edirne, Mehmed takes his harem and embarks on a journey to Manisa. From there, they set their sights on Karamanoğlu, carrying with them a mysterious letter addressed to Gülşah.", "Viewers are left to wonder: what dangers or opportunities await Mehmed on this journey? What secrets lie within the letter?"]}, {"heading": "A Sultan in Mourning and a Grand Vizier''s Concerns", "paragraphs": ["Sultan Murad, still grieving the loss of Hüma, spirals further into despair. This situation arouses concern in Çandarlı, the Grand Vizier, who fears for the future of the state.", "Aware of the situation, Mehmed leaves Şehabeddin in Edirne to maintain order. However, Çandarlı is not idle, and viewers are left curious: what will be his next move to ensure stability?"]}, {"heading": "Byzantine Turmoil and a Power Struggle", "paragraphs": ["The episode continues to explore the political turmoil within Byzantium. Constantine and Helena, the Empress, find themselves at odds, with Constantine on the verge of making crucial decisions to reform the empire.", "Helena and Notaras stand as significant obstacles to these changes. The audience wonders: how will Constantine address this conflict?"]}, {"heading": "Where to Watch Mehmed Fetihleri Sultani Episode 7 with Urdu Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fetihleri Sultani Episode 7 (Bolum 7) with Urdu subtitles! Immerse yourself in the captivating world of the Ottoman Empire and witness the rise of tensions that will shape history."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fetihleri Sultani Episode 7 leaves viewers with several burning questions:", "Will Mehmed escape the ambush unharmed?", "What will Isaac''s true intentions be?", "What awaits Mehmed and Gülşah on their journey to Karamanoğlu?", "Will Çandarlı succeed in stabilizing the Ottoman Empire?", "How will the power struggle within the Byzantine court unfold?", "Stay tuned for the next episode to discover the answers to these questions and witness the continuation of this enthralling historical drama!", "References:", "Mehmed: Fetihler Sultanı 7.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 7.Bölüm Özet", "Mehmed: Fetihler Sultanı 7.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Brace yourself for a captivating episode of Mehmed Fetihleri Sultani (Episode 7)! Witness Mehmed navigate political intrigue, a potential rebellion, and a journ", "player_urls": ["https://play.niazitv.pk/play?data=Mjg1MQ==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvVXJkdS9TMS9FcGlzb2RlLTcubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1712686804.webp"], "duration": "PT2H28M35S", "upload_date": "2024-04-09T20:20:04+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:02.258141+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-7.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2851", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 7", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-7"}'::jsonb,
    '7386afd8ebf1bcbbf25c47034eac2dfeeff353b237f9c95d6b8a5a23078ded12'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2852'),
    'video-2852',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-7'),
    'Mehmed Fetihleri Sultani Episode 7 English Subtitles: Witness Mehmed''s Political Maneuvers!',
    1,
    ARRAY['English'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1712687821.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2852'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2852'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-7.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2852',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2852',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2852", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2852", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2852", "heading": "Episode 7 - English Subtitles", "title": "Mehmed Fetihleri Sultani Episode 7 English Subtitles: Witness Mehmed''s Political Maneuvers!", "season": 1, "season_source": "catalog", "episode": 7, "bolum": null, "part": null, "languages": ["English"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fetihleri Sultani Episode 7 (Bolum 7) continues the enthralling story of Mehmed, the future conqueror. Buckle up for an episode filled with political maneuvering, a journey fraught with uncertainty, and the consequences of a devastating loss.", "article_text": "Mehmed Fetihleri Sultani Episode 7: A Summary Mehmed Fetihleri Sultani Episode 7 (Bolum 7) continues the enthralling story of Mehmed, the future conqueror. Buckle up for an episode filled with political maneuvering, a journey fraught with uncertainty, and the consequences of a devastating loss. Mehmed Fetihleri Sultani: Intrigue and Alliances in Episode 7 A Delicate Journey and a New Alliance The episode picks up with Mehmed embarking on a crucial journey to Karamanoğlu territory, accompanied by his harem. This journey is fueled by a letter sent to Gülşah, hinting at potential political negotiations or a personal plea. Viewers are left to wonder: what awaits Mehmed on this journey? What message does the letter hold? Will this trip lead to a new alliance or further complications? A Sultan in Mourning and Political Intrigue Back in Edirne, Sultan Murad grapples with grief after the passing of Hüma, Mehmed''s mother. This loss has significantly impacted his mental state, raising concerns for the stability of the Ottoman throne. The shrewd Grand Vizier, Çandarlı, is acutely aware of the situation. He strategizes to ensure the state''s continued well-being in light of Murad''s emotional vulnerability. Meanwhile, Mehmed, informed of his father''s condition, leaves Şehabeddin behind in Edirne, hinting at potential unrest or a need for a strong presence in the capital. The episode leaves the audience with a cliffhanger: what will Çandarlı''s next move be to navigate these political complexities? A Power Struggle Within Byzantium The episode delves back into the ongoing power struggle within the Byzantine Empire. The animosity between Constantine and Helena continues to escalate. Constantine, determined to enact significant changes in the Byzantine government, views Helena and Notaras as major obstacles to his vision. This internal conflict adds another layer of intrigue to the already tense relationship between the Ottomans and Byzantium. Where to Watch Mehmed Fetihleri Sultani Episode 7 with English Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fetihleri Sultani Episode 7 (Bolum 7) with English subtitles! Immerse yourself in the captivating historical narrative and witness Mehmed''s journey towards becoming a legend. A Look Ahead: Questions Remain Mehmed Fetihleri Sultani Episode 7 leaves viewers with several burning questions: Will Mehmed''s journey to Karamanoğlu yield a fruitful alliance or unforeseen challenges? How will Çandarlı manage the political landscape amidst Sultan Murad''s emotional turmoil? Will Constantine succeed in overcoming the opposition from Helena and Notaras to implement his vision for Byzantium? Stay tuned for the next episode to witness the continuation of this enthralling historical drama and discover the answers to these pressing questions! References: Mehmed: Fetihler Sultanı 7.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 7.Bölüm Özet Mehmed: Fetihler Sultanı 7.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fetihleri Sultani Episode 7: A Summary", "paragraphs": ["Mehmed Fetihleri Sultani Episode 7 (Bolum 7) continues the enthralling story of Mehmed, the future conqueror. Buckle up for an episode filled with political maneuvering, a journey fraught with uncertainty, and the consequences of a devastating loss."]}, {"heading": "Mehmed Fetihleri Sultani: Intrigue and Alliances in Episode 7", "paragraphs": []}, {"heading": "A Delicate Journey and a New Alliance", "paragraphs": ["The episode picks up with Mehmed embarking on a crucial journey to Karamanoğlu territory, accompanied by his harem. This journey is fueled by a letter sent to Gülşah, hinting at potential political negotiations or a personal plea.", "Viewers are left to wonder: what awaits Mehmed on this journey? What message does the letter hold? Will this trip lead to a new alliance or further complications?"]}, {"heading": "A Sultan in Mourning and Political Intrigue", "paragraphs": ["Back in Edirne, Sultan Murad grapples with grief after the passing of Hüma, Mehmed''s mother. This loss has significantly impacted his mental state, raising concerns for the stability of the Ottoman throne.", "The shrewd Grand Vizier, Çandarlı, is acutely aware of the situation. He strategizes to ensure the state''s continued well-being in light of Murad''s emotional vulnerability.", "Meanwhile, Mehmed, informed of his father''s condition, leaves Şehabeddin behind in Edirne, hinting at potential unrest or a need for a strong presence in the capital.", "The episode leaves the audience with a cliffhanger: what will Çandarlı''s next move be to navigate these political complexities?"]}, {"heading": "A Power Struggle Within Byzantium", "paragraphs": ["The episode delves back into the ongoing power struggle within the Byzantine Empire. The animosity between Constantine and Helena continues to escalate.", "Constantine, determined to enact significant changes in the Byzantine government, views Helena and Notaras as major obstacles to his vision.", "This internal conflict adds another layer of intrigue to the already tense relationship between the Ottomans and Byzantium."]}, {"heading": "Where to Watch Mehmed Fetihleri Sultani Episode 7 with English Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fetihleri Sultani Episode 7 (Bolum 7) with English subtitles! Immerse yourself in the captivating historical narrative and witness Mehmed''s journey towards becoming a legend."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fetihleri Sultani Episode 7 leaves viewers with several burning questions:", "Will Mehmed''s journey to Karamanoğlu yield a fruitful alliance or unforeseen challenges?", "How will Çandarlı manage the political landscape amidst Sultan Murad''s emotional turmoil?", "Will Constantine succeed in overcoming the opposition from Helena and Notaras to implement his vision for Byzantium?", "Stay tuned for the next episode to witness the continuation of this enthralling historical drama and discover the answers to these pressing questions!", "References:", "Mehmed: Fetihler Sultanı 7.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 7.Bölüm Özet", "Mehmed: Fetihler Sultanı 7.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Dive into the captivating world of Mehmed Fetihleri Sultani Episode 7! Witness Mehmed navigate political tensions, forge new alliances, and face a personal loss", "player_urls": ["https://play.niazitv.pk/play?data=Mjg1Mg==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvRW5nbGlzaC9TMS9FcGlzb2RlLTcubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1712687821.webp"], "duration": "PT2H28M43S", "upload_date": "2024-04-09T20:37:00+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:03.217271+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-7.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2852", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 7", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-7"}'::jsonb,
    'b88277ba36750ae01d33200931218162f1c616fe8b57c8f684e5a1601af0cee0'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2891'),
    'video-2891',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-8'),
    'Mehmed Fatihli Sultanı Episode 8 Urdu Subtitles: A Race to the Throne!',
    1,
    ARRAY['Urdu'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1713896370.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2891'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2891'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-8.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2891',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2891',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2891", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2891", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2891", "heading": "Episode 8 - Urdu Subtitles", "title": "Mehmed Fatihli Sultanı Episode 8 Urdu Subtitles: A Race to the Throne!", "season": 1, "season_source": "catalog", "episode": 8, "bolum": null, "part": null, "languages": ["Urdu"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fatihli Sultanı Episode 8 (Bolum 8) plunges viewers into the heart of Ottoman political turmoil following Sultan Murad''s death. The episode unfolds with captivating twists and turns as Mehmed and Orhan engage in a high-stakes race for the throne.", "article_text": "Mehmed Fatihli Sultanı Episode 8: A Summary Mehmed Fatihli Sultanı Episode 8 (Bolum 8) plunges viewers into the heart of Ottoman political turmoil following Sultan Murad''s death. The episode unfolds with captivating twists and turns as Mehmed and Orhan engage in a high-stakes race for the throne. A Throne Awaits and a Conspiracy Unfolds The episode opens with the entire Ottoman empire mourning the loss of Sultan Murad. This sudden event creates a power vacuum, leaving the question unanswered: who will ascend the throne? Will it be Mehmed, the ambitious prince, or Orhan, the heir apparent? The shrewd Grand Vizier, Çandarlı, defies İshak''s opposition and dispatches a message to Mehmed, urging him to return to Edirne and claim his rightful place as Sultan through the kut ceremony. However, İshak remains convinced that Mehmed''s rise to power will bring forth disastrous consequences. A Perilous Journey and a Deadly Trap Upon receiving news of his father''s passing, Mehmed embarks on a swift journey back to the capital, accompanied by his wife. However, his cautious nature leads him to tread carefully, constantly wary of potential plots against him. Meanwhile, the Byzantine emperor, Konstantinos, hatches a treacherous scheme. He intends to pave the way for Orhan''s ascension by placing his most formidable warriors in Mehmed''s path, aiming to eliminate him before he reaches Edirne. Will Mehmed fall victim to this deadly trap, or will he manage to outwit his enemies? A Race Against Time and an Unexpected Encounter Orhan, strategically located closer to the capital than Mehmed, sees a golden opportunity to secure the throne. He confidently sets out for Edirne, confident in his chances of becoming Sultan. However, Konstantinos'' offer to send reinforcements is met with a surprising rejection from Orhan, who fears a hostile reception in Edirne. As Orhan journeys towards his presumed destiny, a formidable obstacle emerges on his path – Bali Bey. Will Bali Bey pledge his allegiance to Orhan, or does he harbor a hidden agenda that could alter the course of events? Where to Watch Mehmed Fatihli Sultanı Episode 8 with Urdu Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Episode 8 (Bolum 8) with Urdu subtitles! Immerse yourself in the captivating world of Ottoman history and witness the birth of a legend. A Look Ahead: Questions Remain Mehmed Fatihli Sultanı Episode 8 leaves viewers with several burning questions: Will Mehmed escape Konstantinos'' assassination attempt and reach Edirne safely? How will Orhan overcome the unexpected challenge posed by Bali Bey? Will Çandarlı''s decision to support Mehmed succeed, or will internal conflicts within the Ottoman court jeopardize Mehmed''s claim to the throne? Stay tuned for the next episode to witness the continuation of this enthralling historical drama and discover the answers to these intriguing questions! References: Mehmed: Fetihler Sultanı 8.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 8.Bölüm Özet Mehmed: Fetihler Sultanı 8.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fatihli Sultanı Episode 8: A Summary", "paragraphs": ["Mehmed Fatihli Sultanı Episode 8 (Bolum 8) plunges viewers into the heart of Ottoman political turmoil following Sultan Murad''s death. The episode unfolds with captivating twists and turns as Mehmed and Orhan engage in a high-stakes race for the throne."]}, {"heading": "A Throne Awaits and a Conspiracy Unfolds", "paragraphs": ["The episode opens with the entire Ottoman empire mourning the loss of Sultan Murad. This sudden event creates a power vacuum, leaving the question unanswered: who will ascend the throne? Will it be Mehmed, the ambitious prince, or Orhan, the heir apparent?", "The shrewd Grand Vizier, Çandarlı, defies İshak''s opposition and dispatches a message to Mehmed, urging him to return to Edirne and claim his rightful place as Sultan through the kut ceremony. However, İshak remains convinced that Mehmed''s rise to power will bring forth disastrous consequences."]}, {"heading": "A Perilous Journey and a Deadly Trap", "paragraphs": ["Upon receiving news of his father''s passing, Mehmed embarks on a swift journey back to the capital, accompanied by his wife. However, his cautious nature leads him to tread carefully, constantly wary of potential plots against him.", "Meanwhile, the Byzantine emperor, Konstantinos, hatches a treacherous scheme. He intends to pave the way for Orhan''s ascension by placing his most formidable warriors in Mehmed''s path, aiming to eliminate him before he reaches Edirne. Will Mehmed fall victim to this deadly trap, or will he manage to outwit his enemies?"]}, {"heading": "A Race Against Time and an Unexpected Encounter", "paragraphs": ["Orhan, strategically located closer to the capital than Mehmed, sees a golden opportunity to secure the throne. He confidently sets out for Edirne, confident in his chances of becoming Sultan. However, Konstantinos'' offer to send reinforcements is met with a surprising rejection from Orhan, who fears a hostile reception in Edirne.", "As Orhan journeys towards his presumed destiny, a formidable obstacle emerges on his path – Bali Bey. Will Bali Bey pledge his allegiance to Orhan, or does he harbor a hidden agenda that could alter the course of events?"]}, {"heading": "Where to Watch Mehmed Fatihli Sultanı Episode 8 with Urdu Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Episode 8 (Bolum 8) with Urdu subtitles! Immerse yourself in the captivating world of Ottoman history and witness the birth of a legend."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fatihli Sultanı Episode 8 leaves viewers with several burning questions:", "Will Mehmed escape Konstantinos'' assassination attempt and reach Edirne safely?", "How will Orhan overcome the unexpected challenge posed by Bali Bey?", "Will Çandarlı''s decision to support Mehmed succeed, or will internal conflicts within the Ottoman court jeopardize Mehmed''s claim to the throne?", "Stay tuned for the next episode to witness the continuation of this enthralling historical drama and discover the answers to these intriguing questions!", "References:", "Mehmed: Fetihler Sultanı 8.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 8.Bölüm Özet", "Mehmed: Fetihler Sultanı 8.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "he Ottoman throne awaits! Witness the thrilling events of Mehmed Fatihli Sultanı Episode 8 (with Urdu subtitles) as Mehmed and Orhan race to claim their birthri", "player_urls": ["https://play.niazitv.pk/play?data=Mjg5MQ==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvVXJkdS9TMS9FcGlzb2RlLTgubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1713896370.webp"], "duration": "PT2H29M20S", "upload_date": "2024-04-23T20:19:29+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:04.248398+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-8.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2891", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 8", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-8"}'::jsonb,
    'a120e95d32cade4231823e2eec9b086f5b537bd6621892fe5d7d5af590c7bcb8'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2892'),
    'video-2892',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-8'),
    'Mehmed Fatihli Sultanı Episode 8 English Subtitles: Who Will Claim the Throne?',
    1,
    ARRAY['English'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1713896644.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2892'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2892'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-8.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2892',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2892',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2892", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2892", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2892", "heading": "Episode 8 - English Subtitles", "title": "Mehmed Fatihli Sultanı Episode 8 English Subtitles: Who Will Claim the Throne?", "season": 1, "season_source": "catalog", "episode": 8, "bolum": null, "part": null, "languages": ["English"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fatihli Sultanı Episode 8 (Bolum 8) plunges viewers into the heart of a power struggle. With Sultan Murad''s unexpected demise, the fate of the Ottoman Empire hangs in the balance. Who will rise to claim the vacant throne: Mehmed or Orhan?", "article_text": "Mehmed Fatihli Sultanı Episode 8: A Summary Mehmed Fatihli Sultanı Episode 8 (Bolum 8) plunges viewers into the heart of a power struggle. With Sultan Murad''s unexpected demise, the fate of the Ottoman Empire hangs in the balance. Who will rise to claim the vacant throne: Mehmed or Orhan? A Race Against Time and Treacherous Plots The episode opens with the Ottoman court and its people grappling with the profound loss of Sultan Murad. This event marks the beginning of a new and uncertain chapter for the empire. The Grand Vizier, Çandarlı, swiftly takes action. Despite Ishak''s fierce opposition, he dispatches a message summoning Mehmed to ascend the throne and fulfill the kut ceremony, a critical ritual solidifying his claim to rulership. Ishak, consumed by fear, believes Mehmed''s ascension will usher in a period of darkness. His anxieties foreshadow potential attempts to thwart Mehmed''s rise to power. A Deadly Ambush and a Cunning Foe Upon receiving news of his father''s death, Mehmed embarks on a hasty journey back to Edirne, accompanied by his wife. However, caution governs his every move, as he remains wary of potential plots against his claim. Meanwhile, the Byzantine emperor, Constantine, hatches a treacherous scheme. He aims to place Orhan on the Ottoman throne and dispatches his most formidable warriors to intercept Mehmed, hoping to eliminate him before he reaches Edirne. Will Mehmed manage to evade this deadly ambush, or will Constantine''s plot succeed? Orhan''s Ambitions and an Unexpected Encounter Orhan, fueled by ambition and proximity to Edirne, also sets out for the capital, believing his chances of claiming the throne are higher. He arrogantly rejects Constantine''s offer of military support, confident of his own strength. However, his journey is unexpectedly halted by Bali Bey. Will Bali Bey pledge his loyalty to Orhan, or will he stand in the way of Orhan''s aspirations? This encounter adds another layer of intrigue to the already suspenseful power struggle. Where to Watch Mehmed Fatihli Sultanı Episode 8 with English Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Episode 8 (Bolum 8) with English subtitles! Immerse yourself in the captivating world of Ottoman history and witness the birth of a legend. A Look Ahead: Questions Remain Mehmed Fatihli Sultanı Episode 8 leaves viewers with several burning questions: Will Mehmed survive Constantine''s ambush and reach Edirne safely? How will Orhan react to Bali Bey''s presence, and what role will Bali Bey play in the power struggle? Will Çandarlı''s decision to summon Mehmed be successful, or will unforeseen obstacles prevent Mehmed''s ascension? Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama! References: Mehmed: Fetihler Sultanı 8.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 8.Bölüm Özet Mehmed: Fetihler Sultanı 8.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fatihli Sultanı Episode 8: A Summary", "paragraphs": ["Mehmed Fatihli Sultanı Episode 8 (Bolum 8) plunges viewers into the heart of a power struggle. With Sultan Murad''s unexpected demise, the fate of the Ottoman Empire hangs in the balance. Who will rise to claim the vacant throne: Mehmed or Orhan?"]}, {"heading": "A Race Against Time and Treacherous Plots", "paragraphs": ["The episode opens with the Ottoman court and its people grappling with the profound loss of Sultan Murad. This event marks the beginning of a new and uncertain chapter for the empire.", "The Grand Vizier, Çandarlı, swiftly takes action. Despite Ishak''s fierce opposition, he dispatches a message summoning Mehmed to ascend the throne and fulfill the kut ceremony, a critical ritual solidifying his claim to rulership.", "Ishak, consumed by fear, believes Mehmed''s ascension will usher in a period of darkness. His anxieties foreshadow potential attempts to thwart Mehmed''s rise to power."]}, {"heading": "A Deadly Ambush and a Cunning Foe", "paragraphs": ["Upon receiving news of his father''s death, Mehmed embarks on a hasty journey back to Edirne, accompanied by his wife. However, caution governs his every move, as he remains wary of potential plots against his claim.", "Meanwhile, the Byzantine emperor, Constantine, hatches a treacherous scheme. He aims to place Orhan on the Ottoman throne and dispatches his most formidable warriors to intercept Mehmed, hoping to eliminate him before he reaches Edirne. Will Mehmed manage to evade this deadly ambush, or will Constantine''s plot succeed?"]}, {"heading": "Orhan''s Ambitions and an Unexpected Encounter", "paragraphs": ["Orhan, fueled by ambition and proximity to Edirne, also sets out for the capital, believing his chances of claiming the throne are higher. He arrogantly rejects Constantine''s offer of military support, confident of his own strength.", "However, his journey is unexpectedly halted by Bali Bey. Will Bali Bey pledge his loyalty to Orhan, or will he stand in the way of Orhan''s aspirations? This encounter adds another layer of intrigue to the already suspenseful power struggle."]}, {"heading": "Where to Watch Mehmed Fatihli Sultanı Episode 8 with English Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Episode 8 (Bolum 8) with English subtitles! Immerse yourself in the captivating world of Ottoman history and witness the birth of a legend."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fatihli Sultanı Episode 8 leaves viewers with several burning questions:", "Will Mehmed survive Constantine''s ambush and reach Edirne safely?", "How will Orhan react to Bali Bey''s presence, and what role will Bali Bey play in the power struggle?", "Will Çandarlı''s decision to summon Mehmed be successful, or will unforeseen obstacles prevent Mehmed''s ascension?", "Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama!", "References:", "Mehmed: Fetihler Sultanı 8.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 8.Bölüm Özet", "Mehmed: Fetihler Sultanı 8.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Brace yourself for a captivating episode of Mehmed Fatihli Sultanı (Episode 8)! The sudden death of Sultan Murad throws the Ottoman Empire into chaos. Witness M", "player_urls": ["https://play.niazitv.pk/play?data=Mjg5Mg==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvRW5nbGlzaC9TMS9FcGlzb2RlLTgubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1713896644.webp"], "duration": "PT2H30M38S", "upload_date": "2024-04-23T20:24:03+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:05.182215+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-8.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2892", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 8", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-8"}'::jsonb,
    '4d3c7ee68d4d534e2c28ab686f857419007b149a5a6fa72e6846b80618470fa4'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2908'),
    'video-2908',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-9'),
    'Mehmed Fatihli Sultanı Episode 9 Urdu Subtitles: Political Machinations Unveiled',
    1,
    ARRAY['Urdu'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1714531504.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2908'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2908'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-9.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2908',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2908',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2908", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2908", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2908", "heading": "Episode 9 - Urdu Subtitles", "title": "Mehmed Fatihli Sultanı Episode 9 Urdu Subtitles: Political Machinations Unveiled", "season": 1, "season_source": "catalog", "episode": 9, "bolum": null, "part": null, "languages": ["Urdu"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Welcome to the mesmerizing world of Mehmed Fatih Sultan Episode 9, where political machinations intertwine with personal ambitions, loyalty is tested, and the fate of empires hangs in the balance. In this gripping episode, we witness a tapestry of treachery, ambition, and love unfold as key players maneuver for power and survival in the Ottoman court.", "article_text": "Delving into the Drama Welcome to the mesmerizing world of Mehmed Fatih Sultan Episode 9, where political machinations intertwine with personal ambitions, loyalty is tested, and the fate of empires hangs in the balance. In this gripping episode, we witness a tapestry of treachery, ambition, and love unfold as key players maneuver for power and survival in the Ottoman court. Setting the Stage: Mehmed''s Expedition to Karaman As the episode opens, Mehmed embarks on an expedition to Karaman, a strategic move that sets the stage for a series of dramatic events. His decision to invite Evrenesoğlu Ali and appoint him as palace trustee underscores Mehmed''s foresight and strategic acumen, ensuring stability in the capital in his absence. The Machinations of Çandarlı: A Bid for Power Meanwhile, Çandarlı emerges as a formidable player in the political arena, devising a plan to ascend to the throne by manipulating the intricate dynamics of the harem. His audacious scheme to take Ahmed from the harem and install him as Sultan poses a significant challenge to Mehmed''s reign. Can Çandarlı outmaneuver his rivals and orchestrate Ahmed''s ascent to power? Gülşah: Pawn or Player? At the heart of Çandarlı''s scheme lies Gülşah, whose fate hangs precariously in the balance. Will she succumb to Çandarlı''s machinations and become a pawn in his quest for power? Or will her resilience and loyalty to Mehmed thwart Çandarlı''s ambitions? Halime''s Ambition: A Threat to Gülşah Halime, too, harbors ambitions of her own, seeking to manipulate Ahmed''s affections to further her own agenda. However, her plans are thwarted by Gülşah''s steadfast devotion to Mehmed. Can Halime overcome this formidable obstacle and realize her ambitions, or will she be consumed by her own desires? Konstantinos'' Gambit: A Dangerous Proposition In a parallel narrative, Konstantinos embarks on a perilous gambit, seeking to secure Mehmed''s favor by requesting an increase in Orhan''s allocation. His motives shrouded in secrecy, Konstantinos'' actions raise questions about his true intentions and the extent of his loyalty to Mehmed. The Confrontation with Kurtçu: A Test of Loyalty As Mehmed''s expedition draws to a close, he faces a critical juncture when confronted by Kurtçu, who offers him a fateful choice: pass under the swords or risk open conflict with the Janissaries. Mehmed''s decision will not only determine his fate but also the future of the Ottoman Empire. Conclusion: A Tapestry of Intrigue Unraveled In Mehmed Fatih Sultan Episode 9, viewers are treated to a riveting blend of political intrigue, personal ambition, and complex relationships. As the stakes escalate and loyalties are tested, the stage is set for a dramatic showdown that will shape the course of history. Tune in to witness the unfolding drama and discover the fate of Mehmed and his allies in this captivating episode. References: Mehmed: Fetihler Sultanı 9.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 9.Bölüm Özet Mehmed: Fetihler Sultanı 9.Bölüm Fragmani", "article_sections": [{"heading": "Delving into the Drama", "paragraphs": ["Welcome to the mesmerizing world of Mehmed Fatih Sultan Episode 9, where political machinations intertwine with personal ambitions, loyalty is tested, and the fate of empires hangs in the balance. In this gripping episode, we witness a tapestry of treachery, ambition, and love unfold as key players maneuver for power and survival in the Ottoman court."]}, {"heading": "Setting the Stage: Mehmed''s Expedition to Karaman", "paragraphs": ["As the episode opens, Mehmed embarks on an expedition to Karaman, a strategic move that sets the stage for a series of dramatic events. His decision to invite Evrenesoğlu Ali and appoint him as palace trustee underscores Mehmed''s foresight and strategic acumen, ensuring stability in the capital in his absence."]}, {"heading": "The Machinations of Çandarlı: A Bid for Power", "paragraphs": ["Meanwhile, Çandarlı emerges as a formidable player in the political arena, devising a plan to ascend to the throne by manipulating the intricate dynamics of the harem. His audacious scheme to take Ahmed from the harem and install him as Sultan poses a significant challenge to Mehmed''s reign. Can Çandarlı outmaneuver his rivals and orchestrate Ahmed''s ascent to power?"]}, {"heading": "Gülşah: Pawn or Player?", "paragraphs": ["At the heart of Çandarlı''s scheme lies Gülşah, whose fate hangs precariously in the balance. Will she succumb to Çandarlı''s machinations and become a pawn in his quest for power? Or will her resilience and loyalty to Mehmed thwart Çandarlı''s ambitions?"]}, {"heading": "Halime''s Ambition: A Threat to Gülşah", "paragraphs": ["Halime, too, harbors ambitions of her own, seeking to manipulate Ahmed''s affections to further her own agenda. However, her plans are thwarted by Gülşah''s steadfast devotion to Mehmed. Can Halime overcome this formidable obstacle and realize her ambitions, or will she be consumed by her own desires?"]}, {"heading": "Konstantinos'' Gambit: A Dangerous Proposition", "paragraphs": ["In a parallel narrative, Konstantinos embarks on a perilous gambit, seeking to secure Mehmed''s favor by requesting an increase in Orhan''s allocation. His motives shrouded in secrecy, Konstantinos'' actions raise questions about his true intentions and the extent of his loyalty to Mehmed."]}, {"heading": "The Confrontation with Kurtçu: A Test of Loyalty", "paragraphs": ["As Mehmed''s expedition draws to a close, he faces a critical juncture when confronted by Kurtçu, who offers him a fateful choice: pass under the swords or risk open conflict with the Janissaries. Mehmed''s decision will not only determine his fate but also the future of the Ottoman Empire."]}, {"heading": "Conclusion: A Tapestry of Intrigue Unraveled", "paragraphs": ["In Mehmed Fatih Sultan Episode 9, viewers are treated to a riveting blend of political intrigue, personal ambition, and complex relationships. As the stakes escalate and loyalties are tested, the stage is set for a dramatic showdown that will shape the course of history. Tune in to witness the unfolding drama and discover the fate of Mehmed and his allies in this captivating episode.", "References:", "Mehmed: Fetihler Sultanı 9.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 9.Bölüm Özet", "Mehmed: Fetihler Sultanı 9.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Embark on a journey of political intrigue and ambition with Mehmed Fatih Sultan Episode 9 Urdu Subtitles. Witness power play, loyalty, and drama unfold as allia", "player_urls": ["https://play.niazitv.pk/play?data=MjkwOA==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvVXJkdS9TMS9FcGlzb2RlLTkubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1714531504.webp"], "duration": "PT2H26M38S", "upload_date": "2024-04-30T07:28:29+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:06.194444+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-9.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2908", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 9", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-9"}'::jsonb,
    '02606b1feffdc3ee73734415806baa8af28a17a761b03c9200b8e9a26b4331b8'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2909'),
    'video-2909',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-9'),
    'Mehmed Fatihli Sultanı Episode 9 English Subtitles: On the Road to War',
    1,
    ARRAY['English'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1714531469.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2909'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2909'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-9.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2909',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2909',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2909", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2909", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2909", "heading": "Episode 9 - English Subtitles", "title": "Mehmed Fatihli Sultanı Episode 9 English Subtitles: On the Road to War", "season": 1, "season_source": "catalog", "episode": 9, "bolum": null, "part": null, "languages": ["English"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fatihli Sultanı Episode 9 (Bolum 9) thrusts viewers into the heart of political intrigue and military strategy. As Mehmed sets out on an expedition towards Karaman, a web of treacherous plots unfolds in the Ottoman capital.", "article_text": "Mehmed Fatihli Sultanı Episode 9: A Summary Mehmed Fatihli Sultanı Episode 9 (Bolum 9) thrusts viewers into the heart of political intrigue and military strategy. As Mehmed sets out on an expedition towards Karaman, a web of treacherous plots unfolds in the Ottoman capital. A Strategic Appointment and a Devious Grand Vizier Recognizing the potential for unrest in his absence, Mehmed takes a crucial step. He appoints the esteemed Evrenosoğlu Ali as palace trustee, ensuring a trusted leader safeguards the capital during his expedition. Meanwhile, the cunning Grand Vizier, Çandarlı, hatches a sinister plan. Fueled by ambition, he seeks to dethrone Mehmed and place his own pawn, Ahmed, on the throne. A Pawn in a Deadly Game and a Power Struggle in the Harem Çandarlı''s scheme hinges on manipulating Gülşah. He aims to use her as a tool to legitimize Ahmed''s claim to the throne. Will Gülşah succumb to Çandarlı''s machinations and become an unwitting participant in this political power struggle? The episode delves deeper into the ongoing power struggle within the harem. Halime, determined to see Ahmed on the throne, seeks to undermine Gülşah''s influence. Will Halime succeed in her manipulations, or will Gülşah remain a formidable obstacle? A Treacherous Offer and a Deadly Ambush Beyond the palace walls, a new threat emerges. The Byzantine emperor, Constantine, seeks to exploit the potential instability within the Ottoman Empire. He sends an envoy bearing a dangerous yet seemingly attractive offer to Mehmed. Will Mehmed, preoccupied with his expedition, accept Constantine''s proposal and inadvertently sow discord within his own ranks? Adding another layer of intrigue, Çandarlı issues a chilling order to Kurtçu. He instructs Kurtçu to ambush Mehmed upon his return and force him to submit to a humiliating public spectacle. Will Mehmed fall victim to this treacherous plot, or will he find a way to thwart Çandarlı''s malevolent designs? Where to Watch Mehmed Fatihli Sultanı Episode 9 with English Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Episode 9 (Bolum 9) with English subtitles! Immerse yourself in the captivating saga of Mehmed the Conqueror and witness his fight against internal and external threats to his nascent empire. A Look Ahead: Questions Remain Mehmed Fatihli Sultanı Episode 9 leaves viewers with several burning questions: Will Mehmed successfully complete his expedition and return to face the brewing rebellion in the capital? Can Gülşah see through Çandarlı''s manipulations and avoid becoming a pawn in his political game? How will Mehmed respond to Constantine''s offer, and what will be the consequences for the Ottoman Empire''s stability? Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama! References: Mehmed: Fetihler Sultanı 9.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 9.Bölüm Özet Mehmed: Fetihler Sultanı 9.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fatihli Sultanı Episode 9: A Summary", "paragraphs": ["Mehmed Fatihli Sultanı Episode 9 (Bolum 9) thrusts viewers into the heart of political intrigue and military strategy. As Mehmed sets out on an expedition towards Karaman, a web of treacherous plots unfolds in the Ottoman capital."]}, {"heading": "A Strategic Appointment and a Devious Grand Vizier", "paragraphs": ["Recognizing the potential for unrest in his absence, Mehmed takes a crucial step. He appoints the esteemed Evrenosoğlu Ali as palace trustee, ensuring a trusted leader safeguards the capital during his expedition.", "Meanwhile, the cunning Grand Vizier, Çandarlı, hatches a sinister plan. Fueled by ambition, he seeks to dethrone Mehmed and place his own pawn, Ahmed, on the throne."]}, {"heading": "A Pawn in a Deadly Game and a Power Struggle in the Harem", "paragraphs": ["Çandarlı''s scheme hinges on manipulating Gülşah. He aims to use her as a tool to legitimize Ahmed''s claim to the throne. Will Gülşah succumb to Çandarlı''s machinations and become an unwitting participant in this political power struggle?", "The episode delves deeper into the ongoing power struggle within the harem. Halime, determined to see Ahmed on the throne, seeks to undermine Gülşah''s influence. Will Halime succeed in her manipulations, or will Gülşah remain a formidable obstacle?"]}, {"heading": "A Treacherous Offer and a Deadly Ambush", "paragraphs": ["Beyond the palace walls, a new threat emerges. The Byzantine emperor, Constantine, seeks to exploit the potential instability within the Ottoman Empire. He sends an envoy bearing a dangerous yet seemingly attractive offer to Mehmed. Will Mehmed, preoccupied with his expedition, accept Constantine''s proposal and inadvertently sow discord within his own ranks?", "Adding another layer of intrigue, Çandarlı issues a chilling order to Kurtçu. He instructs Kurtçu to ambush Mehmed upon his return and force him to submit to a humiliating public spectacle. Will Mehmed fall victim to this treacherous plot, or will he find a way to thwart Çandarlı''s malevolent designs?"]}, {"heading": "Where to Watch Mehmed Fatihli Sultanı Episode 9 with English Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Episode 9 (Bolum 9) with English subtitles! Immerse yourself in the captivating saga of Mehmed the Conqueror and witness his fight against internal and external threats to his nascent empire."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fatihli Sultanı Episode 9 leaves viewers with several burning questions:", "Will Mehmed successfully complete his expedition and return to face the brewing rebellion in the capital?", "Can Gülşah see through Çandarlı''s manipulations and avoid becoming a pawn in his political game?", "How will Mehmed respond to Constantine''s offer, and what will be the consequences for the Ottoman Empire''s stability?", "Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama!", "References:", "Mehmed: Fetihler Sultanı 9.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 9.Bölüm Özet", "Mehmed: Fetihler Sultanı 9.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Brace yourself for a suspenseful episode of Mehmed Fatihli Sultanı (Episode 9 with English subtitles)! As Mehmed embarks on a crucial expedition, dark forces co", "player_urls": ["https://play.niazitv.pk/play?data=MjkwOQ==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvRW5nbGlzaC9TMS9FcGlzb2RlLTkubXA0L2luZGV4Lm0zdTg="], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1714531469.webp"], "duration": "PT2H28M11S", "upload_date": "2024-04-30T07:32:03+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:07.022946+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-9.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2909", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 9", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-9"}'::jsonb,
    'db7d49f398d4a48dccb5d49d7046cf17f3d6aca6132456bdb3c30e5634474994'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2925'),
    'video-2925',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-10'),
    'Mehmed Fatihli Sultanı Episode 10 Urdu Subtitles: Constantinople in Sight, Enemies Within the Walls',
    1,
    ARRAY['Urdu'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1715104956.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2925'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2925'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-10.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2925',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2925',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2925", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2925", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2925", "heading": "Episode 10 - Urdu Subtitles", "title": "Mehmed Fatihli Sultanı Episode 10 Urdu Subtitles: Constantinople in Sight, Enemies Within the Walls", "season": 1, "season_source": "catalog", "episode": 10, "bolum": null, "part": null, "languages": ["Urdu"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fatihli Sultanı Episode 10 (Bolum 10) marks a turning point in the series. The episode ushers in a new era with Mehmed taking control and Constantinople firmly in his sights. However, the road to his destiny is fraught with both external threats and internal struggles.", "article_text": "Mehmed Fatihli Sultanı Episode 10: A Summary Mehmed Fatihli Sultanı Episode 10 (Bolum 10) marks a turning point in the series. The episode ushers in a new era with Mehmed taking control and Constantinople firmly in his sights. However, the road to his destiny is fraught with both external threats and internal struggles. A Sultan Ascendant and a City Claimed The episode opens with a declaration of power. Following the dramatic events of the previous episode, Mehmed asserts his dominance. He vows to dismantle the old guard, symbolized by Kurtçu Doğan''s removal, and punish those who participated in the rebellion. This display of strength is followed by a clear statement of ambition. Mehmed unveils his ultimate goal – the conquest of Constantinople. This bold declaration sets the stage for the epic clash between the Ottoman Empire and the Byzantine capital. Byzantine Maneuvers and a Sultan''s Response On the Byzantine side, Constantine continues his diplomatic maneuvering. Encouraged by Mehmed''s apparent interest in peace through Orhan''s allocation, he sends another ambassador to test the Sultan''s intentions. Will Mehmed be swayed, or will he remain focused on his ultimate objective? Meanwhile, Helena harbors her own desires. She proposes an unexpected twist – marrying Constantine. This proposal adds another layer of complexity to the already intricate web of Byzantine politics. Palace Intrigue and the Shadows of Treachery While Mehmed focuses on his goals, the Ottoman court remains a breeding ground for conspiracies. Halime''s demise seems imminent as Hala Sultan receives the order for her execution. However, Halime''s grief over Ahmed''s death casts a shadow over the execution. The episode also hints at further treachery. Gülşah''s careless behavior attracts unwanted attention when Mihriban overhears a suspicious conversation. Will Gülşah''s actions jeopardize Mehmed''s position, and how will Mihriban respond to this discovery? Where to Watch Mehmed Fatihli Sultanı Episode 10 with Urdu Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Episode 10 (Bolum 10) with Urdu subtitles! Immerse yourself in the captivating world of Ottoman history and witness the birth of a legend as Mehmed Fatihli Sultanı unfolds. A Look Ahead: Questions Remain Mehmed Fatihli Sultanı Episode 10 leaves viewers with several burning questions: Will Mehmed achieve his goal of conquering Constantinople, or will Byzantine diplomacy or internal conflicts thwart his plans? How will Mehmed handle the situation with Gülşah, and what role will Mihriban play in exposing any potential treachery? Will Helena''s proposal of marriage to Constantine succeed, and how will it impact the Byzantine political landscape? Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama! References: Mehmed: Fetihler Sultanı 10.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 10.Bölüm Özet Mehmed: Fetihler Sultanı 10.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fatihli Sultanı Episode 10: A Summary", "paragraphs": ["Mehmed Fatihli Sultanı Episode 10 (Bolum 10) marks a turning point in the series. The episode ushers in a new era with Mehmed taking control and Constantinople firmly in his sights. However, the road to his destiny is fraught with both external threats and internal struggles."]}, {"heading": "A Sultan Ascendant and a City Claimed", "paragraphs": ["The episode opens with a declaration of power. Following the dramatic events of the previous episode, Mehmed asserts his dominance. He vows to dismantle the old guard, symbolized by Kurtçu Doğan''s removal, and punish those who participated in the rebellion.", "This display of strength is followed by a clear statement of ambition. Mehmed unveils his ultimate goal – the conquest of Constantinople. This bold declaration sets the stage for the epic clash between the Ottoman Empire and the Byzantine capital."]}, {"heading": "Byzantine Maneuvers and a Sultan''s Response", "paragraphs": ["On the Byzantine side, Constantine continues his diplomatic maneuvering. Encouraged by Mehmed''s apparent interest in peace through Orhan''s allocation, he sends another ambassador to test the Sultan''s intentions. Will Mehmed be swayed, or will he remain focused on his ultimate objective?", "Meanwhile, Helena harbors her own desires. She proposes an unexpected twist – marrying Constantine. This proposal adds another layer of complexity to the already intricate web of Byzantine politics."]}, {"heading": "Palace Intrigue and the Shadows of Treachery", "paragraphs": ["While Mehmed focuses on his goals, the Ottoman court remains a breeding ground for conspiracies. Halime''s demise seems imminent as Hala Sultan receives the order for her execution. However, Halime''s grief over Ahmed''s death casts a shadow over the execution.", "The episode also hints at further treachery. Gülşah''s careless behavior attracts unwanted attention when Mihriban overhears a suspicious conversation. Will Gülşah''s actions jeopardize Mehmed''s position, and how will Mihriban respond to this discovery?"]}, {"heading": "Where to Watch Mehmed Fatihli Sultanı Episode 10 with Urdu Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Episode 10 (Bolum 10) with Urdu subtitles! Immerse yourself in the captivating world of Ottoman history and witness the birth of a legend as Mehmed Fatihli Sultanı unfolds."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fatihli Sultanı Episode 10 leaves viewers with several burning questions:", "Will Mehmed achieve his goal of conquering Constantinople, or will Byzantine diplomacy or internal conflicts thwart his plans?", "How will Mehmed handle the situation with Gülşah, and what role will Mihriban play in exposing any potential treachery?", "Will Helena''s proposal of marriage to Constantine succeed, and how will it impact the Byzantine political landscape?", "Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama!", "References:", "Mehmed: Fetihler Sultanı 10.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 10.Bölüm Özet", "Mehmed: Fetihler Sultanı 10.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Witness the rise of a legend in Mehmed Fatihli Sultanı Episode 10 (with Urdu subtitles)! A new Sultan emerges, vowing to punish traitors and conquer Constantino", "player_urls": ["https://play.niazitv.pk/play?data=MjkyNQ==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvVXJkdS9TMS9FcGlzb2RlLTEwLm1wNC9pbmRleC5tM3U4"], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1715104956.webp"], "duration": "PT2H26M49S", "upload_date": "2024-05-07T20:02:35+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:07.896135+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-10.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2925", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 10", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-10"}'::jsonb,
    'f2576c9f9f37db888aefd8a4ce0a3b4b1d98ff375e87f8f50564c390b034d703'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2926'),
    'video-2926',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-10'),
    'Mehmed Fatihli Sultanı Episode 10 English Subtitles: Bloodshed and Betrayal Paved the Way for Conquest',
    1,
    ARRAY['English'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1715105181.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2926'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2926'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-10.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2926',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2926',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2926", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2926", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2926", "heading": "Episode 10 - English Subtitles", "title": "Mehmed Fatihli Sultanı Episode 10 English Subtitles: Bloodshed and Betrayal Paved the Way for Conquest", "season": 1, "season_source": "catalog", "episode": 10, "bolum": null, "part": null, "languages": ["English"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fatihli Sultanı Episode 10 (Bolum 10) marks a turning point in the Ottoman saga. Bloodshed has paved the way for a new era, and a resolute Sultan sets his sights on a monumental goal.", "article_text": "Mehmed Fatihli Sultanı Episode 10: A Summary Mehmed Fatihli Sultanı Episode 10 (Bolum 10) marks a turning point in the Ottoman saga. Bloodshed has paved the way for a new era, and a resolute Sultan sets his sights on a monumental goal. Justice and Retribution The episode opens with a resolute Mehmed asserting his dominance. Following the execution of Prince Ahmed and the forced suicide of Kurtçu Doğan, Mehmed declares a new beginning. The purge doesn''t end there – those who participated in the rebellion will face swift punishment. Constantinople: The Unwavering Goal Unfazed by the recent turmoil, Mehmed delivers a resounding message to the Byzantine ambassador. His unwavering ambition is laid bare: the conquest of Constantinople. This singular focus sets the stage for the epic conflict to come. Byzantine Maneuvers and Shifting Alliances On the Byzantine side, Constantine makes a calculated move. He exiles Notaras, a staunch opponent of Mehmed, and summons his old friend Sfrancis. This shift in advisors suggests a potential change in strategy. Constantine, ever the opportunist, decides to test the waters once more. He sends another ambassador to Mehmed, seeking peace. Will Mehmed be swayed by this renewed diplomatic effort? Internal Strife and Forbidden Love Meanwhile, the Ottoman court simmers with hidden agendas. Helena, Constantine''s ambitious sister, harbors a daring desire – to become Constantine''s wife. Her scheming threatens to disrupt the already volatile political landscape. Back in the harem, tensions rise as Halime faces her demise. Hala Sultan, tasked with carrying out Mehmed''s order, grapples with the weight of this duty. Will she be able to follow through with this act? A name whispered by Mihriban sparks Gülşah''s curiosity. How will Mihriban navigate this precarious situation, and what role does Hala Sultan play in this clandestine exchange? Where to Watch Mehmed Fatihli Sultanı Episode 10 with English Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Episode 10 (Bolum 10) with English subtitles! Immerse yourself in the captivating story of Mehmed the Conqueror and witness his unwavering determination to forge an empire. A Look Ahead: Questions Remain Mehmed Fatihli Sultanı Episode 10 leaves viewers with several burning questions: Will Mehmed''s pursuit of Constantinople lead to a bloody war with the Byzantines? Can Constantine maintain control amidst the political machinations within his own court? How will the power struggle within the harem unfold, and will Gülşah''s hidden message be exposed? Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama! References: Mehmed: Fetihler Sultanı 10.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 10.Bölüm Özet Mehmed: Fetihler Sultanı 10.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fatihli Sultanı Episode 10: A Summary", "paragraphs": ["Mehmed Fatihli Sultanı Episode 10 (Bolum 10) marks a turning point in the Ottoman saga. Bloodshed has paved the way for a new era, and a resolute Sultan sets his sights on a monumental goal."]}, {"heading": "Justice and Retribution", "paragraphs": ["The episode opens with a resolute Mehmed asserting his dominance. Following the execution of Prince Ahmed and the forced suicide of Kurtçu Doğan, Mehmed declares a new beginning. The purge doesn''t end there – those who participated in the rebellion will face swift punishment."]}, {"heading": "Constantinople: The Unwavering Goal", "paragraphs": ["Unfazed by the recent turmoil, Mehmed delivers a resounding message to the Byzantine ambassador. His unwavering ambition is laid bare: the conquest of Constantinople. This singular focus sets the stage for the epic conflict to come."]}, {"heading": "Byzantine Maneuvers and Shifting Alliances", "paragraphs": ["On the Byzantine side, Constantine makes a calculated move. He exiles Notaras, a staunch opponent of Mehmed, and summons his old friend Sfrancis. This shift in advisors suggests a potential change in strategy.", "Constantine, ever the opportunist, decides to test the waters once more. He sends another ambassador to Mehmed, seeking peace. Will Mehmed be swayed by this renewed diplomatic effort?"]}, {"heading": "Internal Strife and Forbidden Love", "paragraphs": ["Meanwhile, the Ottoman court simmers with hidden agendas. Helena, Constantine''s ambitious sister, harbors a daring desire – to become Constantine''s wife. Her scheming threatens to disrupt the already volatile political landscape.", "Back in the harem, tensions rise as Halime faces her demise. Hala Sultan, tasked with carrying out Mehmed''s order, grapples with the weight of this duty. Will she be able to follow through with this act?", "A name whispered by Mihriban sparks Gülşah''s curiosity. How will Mihriban navigate this precarious situation, and what role does Hala Sultan play in this clandestine exchange?"]}, {"heading": "Where to Watch Mehmed Fatihli Sultanı Episode 10 with English Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Episode 10 (Bolum 10) with English subtitles! Immerse yourself in the captivating story of Mehmed the Conqueror and witness his unwavering determination to forge an empire."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fatihli Sultanı Episode 10 leaves viewers with several burning questions:", "Will Mehmed''s pursuit of Constantinople lead to a bloody war with the Byzantines?", "Can Constantine maintain control amidst the political machinations within his own court?", "How will the power struggle within the harem unfold, and will Gülşah''s hidden message be exposed?", "Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama!", "References:", "Mehmed: Fetihler Sultanı 10.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 10.Bölüm Özet", "Mehmed: Fetihler Sultanı 10.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Witness the dramatic aftermath of Prince Ahmed''s death in Mehmed Fatihli Sultanı Episode 10 (English subtitles)! A new Sultan ascends, vengeance is swift, and a", "player_urls": ["https://play.niazitv.pk/play?data=MjkyNg==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvRW5nbGlzaC9TMS9FcGlzb2RlLTEwLm1wNC9pbmRleC5tM3U4"], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1715105181.webp"], "duration": "PT2H28M50S", "upload_date": "2024-05-07T20:06:20+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:08.849886+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-10.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2926", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 10", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-10"}'::jsonb,
    'bd99c7d7c03ab1f04705c1949401cd69b8963d111dacdd024ebc7f572ffc8269'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2943'),
    'video-2943',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-11'),
    'Mehmed Fatihli Sultani Episode 11 Urdu Subtitles: A Sultan''s Resolve, A City Under Threat',
    1,
    ARRAY['Urdu'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1715706201.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2943'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2943'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-11.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2943',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2943',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2943", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2943", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2943", "heading": "Episode 11 - Urdu Subtitles", "title": "Mehmed Fatihli Sultani Episode 11 Urdu Subtitles: A Sultan''s Resolve, A City Under Threat", "season": 1, "season_source": "catalog", "episode": 11, "bolum": null, "part": null, "languages": ["Urdu"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fatihli Sultanı Episode 11 (Bolum 11) plunges viewers into the heart of the Ottoman Empire''s preparations for the monumental conquest of Constantinople. However, the episode also explores the undercurrents of suspicion and potential treachery that threaten to undermine these efforts.", "article_text": "Mehmed Fatihli Sultanı Episode 11: A Summary Mehmed Fatihli Sultanı Episode 11 (Bolum 11) plunges viewers into the heart of the Ottoman Empire''s preparations for the monumental conquest of Constantinople. However, the episode also explores the undercurrents of suspicion and potential treachery that threaten to undermine these efforts. A Sultan''s Unyielding Resolve The episode opens with Mehmed''s unwavering determination on full display. He reaffirms his unwavering goal: the conquest of Constantinople. This declaration sends a powerful message throughout the empire, leaving no room for doubt about his ultimate objective. To ensure a successful campaign, Mehmed dispatches Zağanos Pasha to Hızır Çelebi. He needs Hızır''s expertise and influence to implement the necessary legal reforms and ensure logistical preparedness. However, Zağanos returns empty-handed, setting a potential roadblock on the path to conquest. Whispers of Betrayal and Internal Discord The episode delves deeper into the web of suspicion and intrigue within the palace walls. Gülşah, suspicious of Mihriban''s actions, informs Hala Sultan about a cryptic message. This accusation casts a shadow of doubt on Mihriban''s loyalty, potentially disrupting the delicate balance within the harem. Meanwhile, Mara, unconvinced by Bahar''s attempts to explain the situation, suspects Hala Sultan of plotting against her. This misunderstanding leads to a confrontation between the two women, adding another layer of tension to the already volatile atmosphere. A Threat from Beyond the Walls The episode doesn''t solely focus on internal conflicts. The Byzantines, desperate to thwart the Ottoman siege, devise a plan to disrupt the construction of a critical Ottoman fortress. Konstantinos, aided by the cunning Sfrancis, hatches a plot to launch a raid on the construction site. Orhan, manipulated by the Byzantines, becomes an unwitting participant in this scheme. The success of the Ottoman conquest hinges on the ability of the workers at the fortress to repel this surprise attack. Where to Watch Mehmed Fatihli Sultanı Episode 11 with Urdu Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Episode 11 (Bolum 11) with Urdu subtitles! Immerse yourself in the captivating saga of Mehmed the Conqueror''s rise to power and his relentless pursuit of conquering Constantinople. A Look Ahead: Questions Remain Mehmed Fatihli Sultanı Episode 11 leaves viewers with several burning questions: Will Mehmed find a way to overcome Hızır Çelebi''s resistance and ensure the implementation of his reforms? How will the accusations against Mihriban unfold, and will her loyalty be proven? Can the Ottomans successfully defend the crucial fortress against the Byzantine attack led by Orhan? Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama! References: Mehmed: Fetihler Sultanı 11.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 11.Bölüm Özet Mehmed: Fetihler Sultanı 11.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fatihli Sultanı Episode 11: A Summary", "paragraphs": ["Mehmed Fatihli Sultanı Episode 11 (Bolum 11) plunges viewers into the heart of the Ottoman Empire''s preparations for the monumental conquest of Constantinople. However, the episode also explores the undercurrents of suspicion and potential treachery that threaten to undermine these efforts."]}, {"heading": "A Sultan''s Unyielding Resolve", "paragraphs": ["The episode opens with Mehmed''s unwavering determination on full display. He reaffirms his unwavering goal: the conquest of Constantinople. This declaration sends a powerful message throughout the empire, leaving no room for doubt about his ultimate objective.", "To ensure a successful campaign, Mehmed dispatches Zağanos Pasha to Hızır Çelebi. He needs Hızır''s expertise and influence to implement the necessary legal reforms and ensure logistical preparedness. However, Zağanos returns empty-handed, setting a potential roadblock on the path to conquest."]}, {"heading": "Whispers of Betrayal and Internal Discord", "paragraphs": ["The episode delves deeper into the web of suspicion and intrigue within the palace walls. Gülşah, suspicious of Mihriban''s actions, informs Hala Sultan about a cryptic message. This accusation casts a shadow of doubt on Mihriban''s loyalty, potentially disrupting the delicate balance within the harem.", "Meanwhile, Mara, unconvinced by Bahar''s attempts to explain the situation, suspects Hala Sultan of plotting against her. This misunderstanding leads to a confrontation between the two women, adding another layer of tension to the already volatile atmosphere."]}, {"heading": "A Threat from Beyond the Walls", "paragraphs": ["The episode doesn''t solely focus on internal conflicts. The Byzantines, desperate to thwart the Ottoman siege, devise a plan to disrupt the construction of a critical Ottoman fortress. Konstantinos, aided by the cunning Sfrancis, hatches a plot to launch a raid on the construction site.", "Orhan, manipulated by the Byzantines, becomes an unwitting participant in this scheme. The success of the Ottoman conquest hinges on the ability of the workers at the fortress to repel this surprise attack."]}, {"heading": "Where to Watch Mehmed Fatihli Sultanı Episode 11 with Urdu Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Episode 11 (Bolum 11) with Urdu subtitles! Immerse yourself in the captivating saga of Mehmed the Conqueror''s rise to power and his relentless pursuit of conquering Constantinople."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fatihli Sultanı Episode 11 leaves viewers with several burning questions:", "Will Mehmed find a way to overcome Hızır Çelebi''s resistance and ensure the implementation of his reforms?", "How will the accusations against Mihriban unfold, and will her loyalty be proven?", "Can the Ottomans successfully defend the crucial fortress against the Byzantine attack led by Orhan?", "Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama!", "References:", "Mehmed: Fetihler Sultanı 11.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 11.Bölüm Özet", "Mehmed: Fetihler Sultanı 11.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Witness the unwavering determination of Mehmed Fatihli Sultanı in Episode 11 (Season 1 with Urdu subtitles)! The path to conquering Constantinople intensifies, ", "player_urls": ["https://play.niazitv.pk/play?data=Mjk0Mw==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvVXJkdS9TMS9FcGlzb2RlLTExLm1wNC9pbmRleC5tM3U4"], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1715706201.webp"], "duration": "PT2H27M26S", "upload_date": "2024-05-14T19:03:20+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:09.846715+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-11.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2943", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 11", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-11"}'::jsonb,
    '03720b0d405fc2cd7c27b5fa2d0c6c7c84d605a852469a9b85e47351b5216009'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2944'),
    'video-2944',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-11'),
    'Mehmed Fatihli Sultani Episode 11 English Subtitles: A Quest for Justice, A Clash of Queens',
    1,
    ARRAY['English'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1715706453.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2944'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2944'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-11.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2944',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2944',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2944", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2944", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2944", "heading": "Episode 11 - English Subtitles", "title": "Mehmed Fatihli Sultani Episode 11 English Subtitles: A Quest for Justice, A Clash of Queens", "season": 1, "season_source": "catalog", "episode": 11, "bolum": null, "part": null, "languages": ["English"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fatihli Sultanı Season 1, Episode 11 (Bolum 11) delves deeper into the complex web of political maneuvering, personal vendettas, and the relentless pursuit of a historic conquest.", "article_text": "Mehmed Fatihli Sultanı Season 1, Episode 11: A Summary Mehmed Fatihli Sultanı Season 1, Episode 11 (Bolum 11) delves deeper into the complex web of political maneuvering, personal vendettas, and the relentless pursuit of a historic conquest. A Determined Sultan and a Quest for Justice The episode opens with Mehmed''s unwavering resolve. After declaring Constantinople his ultimate goal, he seeks to ensure justice within his own ranks. He dispatches Zağanos Pasha to Hızır Çelebi, aiming to implement a much-needed ''justice revolution'' and solidify preparations for the conquest. However, Zağanos returns empty-handed, forcing Mehmed to take matters into his own hands. He embarks on a personal mission to convince Hızır Çelebi, showcasing his dedication to both internal reform and the conquest itself. Whispers of Betrayal and a Queen''s Dilemma The episode explores a potential rift within the Ottoman court. Gülşah discovers a message from Mihriban, leading her to suspect betrayal. Hala Sultan, aware of the delicate situation, attempts to assuage Gülşah''s doubts. Meanwhile, the cunning Mara remains unconvinced of Hala Sultan''s loyalty. Despite Bahar''s attempts to reason with her, Mara confronts Hala Sultan directly. Will this confrontation escalate into a physical clash, jeopardizing the already fragile unity within the palace? Threats from Within and Without: Defending the Fortress The episode also highlights the external challenges faced by the Ottomans. Konstantinos, desperate to halt the Ottoman advance, hatches a plan with Sfrancis to raid the newly constructed Ottoman fortress. They enlist Orhan in this scheme, further complicating the situation. Will the Ottomans, amidst internal turmoil, be able to defend the crucial fortress against this surprise attack? The Balinese workers, tasked with its construction, find themselves on the frontlines of this critical battle. Where to Watch Mehmed Fatihli Sultanı Season 1, Episode 11 with English Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Season 1, Episode 11 (Bolum 11) with English subtitles! Witness the captivating story of Mehmed the Conqueror''s rise to power and his relentless pursuit of a legendary conquest. A Look Ahead: Questions Remain Mehmed Fatihli Sultanı Season 1, Episode 11 leaves viewers with several burning questions: Will Mehmed succeed in convincing Hızır Çelebi of his vision and achieve justice within the Ottoman ranks? Can Hala Sultan overcome the accusations of betrayal and maintain her position within the palace? Will the Ottomans successfully defend the fortress against Konstantinos'' surprise attack, or will this setback hinder their progress? Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical saga! References: Mehmed: Fetihler Sultanı 11.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 11.Bölüm Özet Mehmed: Fetihler Sultanı 11.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fatihli Sultanı Season 1, Episode 11: A Summary", "paragraphs": ["Mehmed Fatihli Sultanı Season 1, Episode 11 (Bolum 11) delves deeper into the complex web of political maneuvering, personal vendettas, and the relentless pursuit of a historic conquest."]}, {"heading": "A Determined Sultan and a Quest for Justice", "paragraphs": ["The episode opens with Mehmed''s unwavering resolve. After declaring Constantinople his ultimate goal, he seeks to ensure justice within his own ranks. He dispatches Zağanos Pasha to Hızır Çelebi, aiming to implement a much-needed ''justice revolution'' and solidify preparations for the conquest.", "However, Zağanos returns empty-handed, forcing Mehmed to take matters into his own hands. He embarks on a personal mission to convince Hızır Çelebi, showcasing his dedication to both internal reform and the conquest itself."]}, {"heading": "Whispers of Betrayal and a Queen''s Dilemma", "paragraphs": ["The episode explores a potential rift within the Ottoman court. Gülşah discovers a message from Mihriban, leading her to suspect betrayal. Hala Sultan, aware of the delicate situation, attempts to assuage Gülşah''s doubts.", "Meanwhile, the cunning Mara remains unconvinced of Hala Sultan''s loyalty. Despite Bahar''s attempts to reason with her, Mara confronts Hala Sultan directly. Will this confrontation escalate into a physical clash, jeopardizing the already fragile unity within the palace?"]}, {"heading": "Threats from Within and Without: Defending the Fortress", "paragraphs": ["The episode also highlights the external challenges faced by the Ottomans. Konstantinos, desperate to halt the Ottoman advance, hatches a plan with Sfrancis to raid the newly constructed Ottoman fortress. They enlist Orhan in this scheme, further complicating the situation.", "Will the Ottomans, amidst internal turmoil, be able to defend the crucial fortress against this surprise attack? The Balinese workers, tasked with its construction, find themselves on the frontlines of this critical battle."]}, {"heading": "Where to Watch Mehmed Fatihli Sultanı Season 1, Episode 11 with English Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Season 1, Episode 11 (Bolum 11) with English subtitles! Witness the captivating story of Mehmed the Conqueror''s rise to power and his relentless pursuit of a legendary conquest."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fatihli Sultanı Season 1, Episode 11 leaves viewers with several burning questions:", "Will Mehmed succeed in convincing Hızır Çelebi of his vision and achieve justice within the Ottoman ranks?", "Can Hala Sultan overcome the accusations of betrayal and maintain her position within the palace?", "Will the Ottomans successfully defend the fortress against Konstantinos'' surprise attack, or will this setback hinder their progress?", "Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical saga!", "References:", "Mehmed: Fetihler Sultanı 11.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 11.Bölüm Özet", "Mehmed: Fetihler Sultanı 11.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Witness the rising tensions in Mehmed Fatihli Sultanı (Season 1, Episode 11 with English Subtitles)! Mehmed embarks on a mission for justice, while Hala Sultan ", "player_urls": ["https://play.niazitv.pk/play?data=Mjk0NA==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvRW5nbGlzaC9TMS9FcGlzb2RlLTExLm1wNC9pbmRleC5tM3U4"], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1715706453.webp"], "duration": "PT2H27M36S", "upload_date": "2024-05-14T19:07:32+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:10.792710+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-11.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2944", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 11", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-11"}'::jsonb,
    '791f5a5f5a93c89668a33d6ac7afa49ffa307d0a5f6f2504f27bebf08ed0b6b0'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2969'),
    'video-2969',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-12'),
    'Mehmed Fatihli Sultani Episode 12 Urdu Subtitles: Betrayal, Abduction, and a Sultan''s Resolve',
    1,
    ARRAY['Urdu'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1716318060.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2969'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2969'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-12.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2969',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2969',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2969", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2969", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2969", "heading": "Episode 12 - Urdu Subtitles", "title": "Mehmed Fatihli Sultani Episode 12 Urdu Subtitles: Betrayal, Abduction, and a Sultan''s Resolve", "season": 1, "season_source": "catalog", "episode": 12, "bolum": null, "part": null, "languages": ["Urdu"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fatihli Sultanı Season 1, Episode 12 (Bolum 12) throws Mehmed''s carefully laid plans into disarray. The episode explores themes of betrayal, resilience, and the unwavering pursuit of justice.", "article_text": "Mehmed Fatihli Sultanı Episode 12: A Summary Mehmed Fatihli Sultanı Season 1, Episode 12 (Bolum 12) throws Mehmed''s carefully laid plans into disarray. The episode explores themes of betrayal, resilience, and the unwavering pursuit of justice. A Devastating Setback and the Loss of a Loved One The episode opens with a devastating turn of events. The cannon Mehmed himself aims explodes, causing widespread chaos and hindering the progress of the siege. This unexpected disaster is compounded by the news that Mara, a woman close to Mehmed''s heart, has been kidnapped. A Sultan''s Fury and a Quest for Answers Deeply shaken but not defeated, Mehmed vows to overcome these challenges. He seeks not only to secure the success of his campaign but also to bring those responsible for the attack and the abduction to swift justice. His determination to find Mara and exact revenge on the perpetrators fuels his actions. Shifting Sands in the Harem While Mehmed focuses on external threats, the episode also delves into the power struggles within the palace walls. Hala Sultan, seizing the opportunity created by Mara''s absence, attempts to solidify her own position. Meanwhile, Bahar and Gülşah remain vigilant, wary of Hala Sultan''s ambitions. An Impending Showdown and the Fate of Bali Bey Orhan, fueled by his hatred for Mehmed, becomes an unexpected pawn in the Byzantine emperor''s plot. He joins a team tasked with disrupting the construction of the Ottoman fortress. Will Bali Bey, overseeing the construction, be able to defend it against this attack? Will Orhan finally get his revenge? Where to Watch Mehmed Fatihli Sultanı Episode 12 with Urdu Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Season 1, Episode 12 (Bolum 12) with Urdu subtitles! Immerse yourself in the captivating saga of Mehmed the Conqueror and witness his journey to become a legendary leader. A Look Ahead: Questions Remain Mehmed Fatihli Sultanı Episode 12 leaves viewers with several burning questions: How will Mehmed respond to the devastating setback caused by the cannon explosion? Will Mehmed succeed in rescuing Mara from her captors? What fate awaits Bali Bey as the Ottomans face a potential attack on the fortress? Will Hala Sultan manage to consolidate her power within the harem, or will Bahar and Gülşah thwart her plans? Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama! References: Mehmed: Fetihler Sultanı 12.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 12.Bölüm Özet Mehmed: Fetihler Sultanı 12.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fatihli Sultanı Episode 12: A Summary", "paragraphs": ["Mehmed Fatihli Sultanı Season 1, Episode 12 (Bolum 12) throws Mehmed''s carefully laid plans into disarray. The episode explores themes of betrayal, resilience, and the unwavering pursuit of justice."]}, {"heading": "A Devastating Setback and the Loss of a Loved One", "paragraphs": ["The episode opens with a devastating turn of events. The cannon Mehmed himself aims explodes, causing widespread chaos and hindering the progress of the siege. This unexpected disaster is compounded by the news that Mara, a woman close to Mehmed''s heart, has been kidnapped."]}, {"heading": "A Sultan''s Fury and a Quest for Answers", "paragraphs": ["Deeply shaken but not defeated, Mehmed vows to overcome these challenges. He seeks not only to secure the success of his campaign but also to bring those responsible for the attack and the abduction to swift justice. His determination to find Mara and exact revenge on the perpetrators fuels his actions."]}, {"heading": "Shifting Sands in the Harem", "paragraphs": ["While Mehmed focuses on external threats, the episode also delves into the power struggles within the palace walls. Hala Sultan, seizing the opportunity created by Mara''s absence, attempts to solidify her own position. Meanwhile, Bahar and Gülşah remain vigilant, wary of Hala Sultan''s ambitions."]}, {"heading": "An Impending Showdown and the Fate of Bali Bey", "paragraphs": ["Orhan, fueled by his hatred for Mehmed, becomes an unexpected pawn in the Byzantine emperor''s plot. He joins a team tasked with disrupting the construction of the Ottoman fortress. Will Bali Bey, overseeing the construction, be able to defend it against this attack? Will Orhan finally get his revenge?"]}, {"heading": "Where to Watch Mehmed Fatihli Sultanı Episode 12 with Urdu Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Season 1, Episode 12 (Bolum 12) with Urdu subtitles! Immerse yourself in the captivating saga of Mehmed the Conqueror and witness his journey to become a legendary leader."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fatihli Sultanı Episode 12 leaves viewers with several burning questions:", "How will Mehmed respond to the devastating setback caused by the cannon explosion?", "Will Mehmed succeed in rescuing Mara from her captors?", "What fate awaits Bali Bey as the Ottomans face a potential attack on the fortress?", "Will Hala Sultan manage to consolidate her power within the harem, or will Bahar and Gülşah thwart her plans?", "Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama!", "References:", "Mehmed: Fetihler Sultanı 12.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 12.Bölüm Özet", "Mehmed: Fetihler Sultanı 12.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Brace yourself for a heart-stopping episode of Mehmed Fatihli Sultanı (Season 1, Episode 12 with Urdu subtitles)! Witness a devastating setback for Mehmed, the ", "player_urls": ["https://play.niazitv.pk/play?data=Mjk2OQ==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvVXJkdS9TMS9FcGlzb2RlLTEyLm1wNC9pbmRleC5tM3U4"], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1716318060.webp"], "duration": "PT2H12M54S", "upload_date": "2024-05-21T21:00:59+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:11.825766+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-12.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2969", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 12", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-12"}'::jsonb,
    'efbde41ca32c663347b494104235c1ade75d8ca2856b4997a60dd49e812c7b26'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2970'),
    'video-2970',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-12'),
    'Mehmed Fatihli Sultani Episode 12 English Subtitles: Will Mehmed Rise Above?',
    1,
    ARRAY['English'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1716318297.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2970'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2970'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-12.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2970',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2970',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2970", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2970", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2970", "heading": "Episode 12 - English Subtitles", "title": "Mehmed Fatihli Sultani Episode 12 English Subtitles: Will Mehmed Rise Above?", "season": 1, "season_source": "catalog", "episode": 12, "bolum": null, "part": null, "languages": ["English"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fatihli Sultanı Season 1 Episode 12 (Bolum 12) throws viewers into a vortex of chaos and despair. A catastrophic event throws Mehmed''s plans into disarray, and a brazen act by the Byzantines forces him to confront a difficult situation.", "article_text": "Mehmed Fatihli Sultanı Season 1 Episode 12: A Summary Mehmed Fatihli Sultanı Season 1 Episode 12 (Bolum 12) throws viewers into a vortex of chaos and despair. A catastrophic event throws Mehmed''s plans into disarray, and a brazen act by the Byzantines forces him to confront a difficult situation. A Devastating Blow and the Search for Answers The episode opens with a disaster of epic proportions. The cannon that Mehmed himself came to fire explodes, causing widespread destruction and injury. This devastating setback throws a wrench into the Ottoman siege plans and casts a shadow of doubt on their abilities. In the aftermath of the explosion, Mehmed is swiftly removed from the area, but his troubles are far from over. The episode delves into his emotional turmoil as he grapples with the disappointment and frustration of this unexpected setback. A Daring Kidnapping and a Test of Faith Meanwhile, the Byzantines take advantage of the chaos caused by the explosion. They launch a daring raid on the Ottoman fortress and kidnap Mara, the woman Mehmed hopes to marry. This act of aggression pushes Mehmed to the brink of despair. The episode explores how Mehmed will navigate this crisis. Will he succumb to despair, or will he rise to the challenge and find a way to rescue Mara and continue his conquest of Constantinople? A Web of Intrigue in the Harem The episode also delves deeper into the power struggles within the Ottoman court. Hala Sultan, who has been quietly maneuvering for influence, sees an opportunity with Mara''s removal from the harem. The episode explores the potential clash between Hala Sultan and the other women in the harem, particularly Bahar and Gülşah. Will they unite against Hala Sultan''s growing power, or will she solidify her position? Where to Watch Mehmed Fatihli Sultanı Season 1 Episode 12 with English Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Season 1 Episode 12 (Bolum 12) with English subtitles! Witness the captivating story of Mehmed the Conqueror''s rise to power and his unwavering determination to achieve his goals. A Look Ahead: Questions Remain Mehmed Fatihli Sultanı Season 1 Episode 12 leaves viewers with several burning questions: How will Mehmed overcome the devastating setback caused by the cannon explosion? Will he be able to rescue Mara and thwart the Byzantine plot? How will the power struggle within the harem unfold, and who will emerge victorious? Will Mehmed find the traitor responsible for the cannon malfunction? Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama! References: Mehmed: Fetihler Sultanı 12.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 12.Bölüm Özet Mehmed: Fetihler Sultanı 12.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fatihli Sultanı Season 1 Episode 12: A Summary", "paragraphs": ["Mehmed Fatihli Sultanı Season 1 Episode 12 (Bolum 12) throws viewers into a vortex of chaos and despair. A catastrophic event throws Mehmed''s plans into disarray, and a brazen act by the Byzantines forces him to confront a difficult situation."]}, {"heading": "A Devastating Blow and the Search for Answers", "paragraphs": ["The episode opens with a disaster of epic proportions. The cannon that Mehmed himself came to fire explodes, causing widespread destruction and injury. This devastating setback throws a wrench into the Ottoman siege plans and casts a shadow of doubt on their abilities.", "In the aftermath of the explosion, Mehmed is swiftly removed from the area, but his troubles are far from over. The episode delves into his emotional turmoil as he grapples with the disappointment and frustration of this unexpected setback."]}, {"heading": "A Daring Kidnapping and a Test of Faith", "paragraphs": ["Meanwhile, the Byzantines take advantage of the chaos caused by the explosion. They launch a daring raid on the Ottoman fortress and kidnap Mara, the woman Mehmed hopes to marry. This act of aggression pushes Mehmed to the brink of despair.", "The episode explores how Mehmed will navigate this crisis. Will he succumb to despair, or will he rise to the challenge and find a way to rescue Mara and continue his conquest of Constantinople?"]}, {"heading": "A Web of Intrigue in the Harem", "paragraphs": ["The episode also delves deeper into the power struggles within the Ottoman court. Hala Sultan, who has been quietly maneuvering for influence, sees an opportunity with Mara''s removal from the harem.", "The episode explores the potential clash between Hala Sultan and the other women in the harem, particularly Bahar and Gülşah. Will they unite against Hala Sultan''s growing power, or will she solidify her position?"]}, {"heading": "Where to Watch Mehmed Fatihli Sultanı Season 1 Episode 12 with English Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Season 1 Episode 12 (Bolum 12) with English subtitles! Witness the captivating story of Mehmed the Conqueror''s rise to power and his unwavering determination to achieve his goals."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fatihli Sultanı Season 1 Episode 12 leaves viewers with several burning questions:", "How will Mehmed overcome the devastating setback caused by the cannon explosion?", "Will he be able to rescue Mara and thwart the Byzantine plot?", "How will the power struggle within the harem unfold, and who will emerge victorious?", "Will Mehmed find the traitor responsible for the cannon malfunction?", "Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama!", "References:", "Mehmed: Fetihler Sultanı 12.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 12.Bölüm Özet", "Mehmed: Fetihler Sultanı 12.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Brace yourself for a heart-stopping episode of Mehmed Fatihli Sultanı (Season 1, Episode 12 with English subtitles)! Witness a devastating cannon explosion, the", "player_urls": ["https://play.niazitv.pk/play?data=Mjk3MA==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvRW5nbGlzaC9TMS9FcGlzb2RlLTEyLm1wNC9pbmRleC5tM3U4"], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1716318297.webp"], "duration": "PT2H12M49S", "upload_date": "2024-05-21T21:04:56+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:12.833450+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-12.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2970", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 12", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-12"}'::jsonb,
    '445483ede51311b11b4e253e4ef26c23ab3de4ef74459a7d853f94b83f768e4c'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2985'),
    'video-2985',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-13'),
    'Mehmed Fatihli Sultanı Episode 13 Urdu Subtitles: War Drums Beat, Secrets Revealed',
    1,
    ARRAY['Urdu'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1716918726.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2985'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2985'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-13.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2985',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2985',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2985", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2985", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2985", "heading": "Episode 13 - Urdu Subtitles", "title": "Mehmed Fatihli Sultanı Episode 13 Urdu Subtitles: War Drums Beat, Secrets Revealed", "season": 1, "season_source": "catalog", "episode": 13, "bolum": null, "part": null, "languages": ["Urdu"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fatihli Sultanı Season 1, Episode 13 (Bolum 13) plunges viewers into the heart of a complex web of war preparations, political maneuvers, and the ever-present threat of betrayal.", "article_text": "Mehmed Fatihli Sultanı Season 1, Episode 13: A Summary Mehmed Fatihli Sultanı Season 1, Episode 13 (Bolum 13) plunges viewers into the heart of a complex web of war preparations, political maneuvers, and the ever-present threat of betrayal. Mehmed''s New Target: Dimitria Castle The episode opens with Mehmed, determined and undeterred by recent setbacks. Weary of political gamesmanship, he focuses his relentless energy on the conquest of Constantinople. His unwavering resolve leads him to set his sights on a new strategic target: Dimitria Castle. Can the capture of Dimitria Castle provide a crucial advantage for Mehmed''s ultimate goal of conquering the Byzantine capital? A Web of Secrets and Divided Loyalties The episode delves deeper into the complex relationship between Mehmed and Mara. Konstantinos'' confession regarding Çandarlı Halil''s cooperation creates a dilemma for Mara. Will she reveal this truth to Mehmed or confront Çandarlı Halil herself? The return of Mara throws the power dynamics within the harem into disarray. Hala Sultan, fearing for her own position, warns Mihriban to be cautious. Will Mara use this opportunity to expose Hala Sultan''s schemes? A City Under Siege: Konstantinos'' Desperate Plea In Constantinople, Konstantinos grapples with the daunting task of fortifying the city against the impending Ottoman siege. Recognizing the city''s vulnerability, he makes a last-ditch effort to secure aid. Despite opposition from Helena and Sfrancis, Konstantinos seeks help from the Vatican. Will he be able to unite the city against the Ottomans, or will internal divisions prove to be his undoing? Where to Watch Mehmed Fatihli Sultanı Season 1, Episode 13 with Urdu Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Season 1, Episode 13 (Bolum 13) with Urdu subtitles! Immerse yourself in the captivating saga of Mehmed the Conqueror''s rise to power and his relentless pursuit of conquering Constantinople. A Look Ahead: Questions Remain Mehmed Fatihli Sultanı Season 1, Episode 13 (Bolum 13) leaves viewers with several burning questions: Will Mehmed successfully capture Dimitria Castle and gain a strategic advantage? What will Mara''s choice be? Will she expose Çandarlı Halil''s treachery or remain silent? Can Konstantinos secure aid from the Vatican, or will his city face the Ottoman siege alone? Will Hala Sultan''s power within the harem be challenged by Mara''s return? Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama! References: Mehmed: Fetihler Sultanı 13.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 13.Bölüm Özet Mehmed: Fetihler Sultanı 13.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fatihli Sultanı Season 1, Episode 13: A Summary", "paragraphs": ["Mehmed Fatihli Sultanı Season 1, Episode 13 (Bolum 13) plunges viewers into the heart of a complex web of war preparations, political maneuvers, and the ever-present threat of betrayal."]}, {"heading": "Mehmed''s New Target: Dimitria Castle", "paragraphs": ["The episode opens with Mehmed, determined and undeterred by recent setbacks. Weary of political gamesmanship, he focuses his relentless energy on the conquest of Constantinople. His unwavering resolve leads him to set his sights on a new strategic target: Dimitria Castle.", "Can the capture of Dimitria Castle provide a crucial advantage for Mehmed''s ultimate goal of conquering the Byzantine capital?"]}, {"heading": "A Web of Secrets and Divided Loyalties", "paragraphs": ["The episode delves deeper into the complex relationship between Mehmed and Mara. Konstantinos'' confession regarding Çandarlı Halil''s cooperation creates a dilemma for Mara. Will she reveal this truth to Mehmed or confront Çandarlı Halil herself?", "The return of Mara throws the power dynamics within the harem into disarray. Hala Sultan, fearing for her own position, warns Mihriban to be cautious. Will Mara use this opportunity to expose Hala Sultan''s schemes?"]}, {"heading": "A City Under Siege: Konstantinos'' Desperate Plea", "paragraphs": ["In Constantinople, Konstantinos grapples with the daunting task of fortifying the city against the impending Ottoman siege. Recognizing the city''s vulnerability, he makes a last-ditch effort to secure aid.", "Despite opposition from Helena and Sfrancis, Konstantinos seeks help from the Vatican. Will he be able to unite the city against the Ottomans, or will internal divisions prove to be his undoing?"]}, {"heading": "Where to Watch Mehmed Fatihli Sultanı Season 1, Episode 13 with Urdu Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Season 1, Episode 13 (Bolum 13) with Urdu subtitles! Immerse yourself in the captivating saga of Mehmed the Conqueror''s rise to power and his relentless pursuit of conquering Constantinople."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fatihli Sultanı Season 1, Episode 13 (Bolum 13) leaves viewers with several burning questions:", "Will Mehmed successfully capture Dimitria Castle and gain a strategic advantage?", "What will Mara''s choice be? Will she expose Çandarlı Halil''s treachery or remain silent?", "Can Konstantinos secure aid from the Vatican, or will his city face the Ottoman siege alone?", "Will Hala Sultan''s power within the harem be challenged by Mara''s return?", "Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama!", "References:", "Mehmed: Fetihler Sultanı 13.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 13.Bölüm Özet", "Mehmed: Fetihler Sultanı 13.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Witness the rising tensions in Mehmed Fatihli Sultanı (Season 1, Episode 13 with Urdu subtitles)! Mehmed sets his sights on a new target, while Konstantinos des", "player_urls": ["https://play.niazitv.pk/play?data=Mjk4NQ==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvVXJkdS9TMS9FcGlzb2RlLTEzLm1wNC9pbmRleC5tM3U4"], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1716918726.webp"], "duration": "PT2H17M52S", "upload_date": "2024-05-28T19:52:06+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:13.664116+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-13.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2985", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 13", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-13"}'::jsonb,
    '9738efcc28ca094ffa0aa31ed124c65b22169bcb5d721bf707d529d11feed35e'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2986'),
    'video-2986',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-13'),
    'Mehmed Fatihli Sultanı Episode 13 English Subtitles: Mara''s Choice, A City Under Siege',
    1,
    ARRAY['English'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1716918978.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-2986'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-2986'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-13.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-2986',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2986',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "2986", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2986", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=2986", "heading": "Episode 13 - English Subtitles", "title": "Mehmed Fatihli Sultanı Episode 13 English Subtitles: Mara''s Choice, A City Under Siege", "season": 1, "season_source": "catalog", "episode": 13, "bolum": null, "part": null, "languages": ["English"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fatihli Sultanı Season 1, Episode 13 (Bolum 13) delves deeper into the complex political and personal struggles surrounding the conquest of Constantinople.", "article_text": "Mehmed Fatihli Sultanı Season 1, Episode 13: A Summary Mehmed Fatihli Sultanı Season 1, Episode 13 (Bolum 13) delves deeper into the complex political and personal struggles surrounding the conquest of Constantinople. The Burden of Truth and Mara''s Dilemma The episode opens with the revelation of Konstantinos'' treachery. It emerges that Çandarlı Halil, a trusted advisor to Mehmed, collaborated with the Byzantine emperor. This betrayal leaves Mehmed questioning his inner circle and forces Mara to confront a difficult decision. Will Mara choose to expose Konstantinos'' deception to Mehmed, jeopardizing her own safety, or will she confront Çandarlı Halil directly? This internal struggle adds another layer of complexity to the already volatile situation. Mehmed''s Resolve and a New Target Weary of political maneuvering, Mehmed sets his sights on a new strategic target: Dimitria Castle. This decisive move demonstrates his unwavering resolve to conquer Constantinople. With renewed focus and determination, Mehmed prepares his forces for the next phase of the siege. Power Struggles Within the Harem The episode also explores the ongoing power struggle within the Ottoman harem. Hala Sultan, emboldened by Mara''s absence, sees an opportunity to solidify her own position. This threatens the status quo and raises concerns for Mihriban and others. Will Bahar and Gülşah retaliate against Hala Sultan''s growing influence, or will a new power dynamic emerge within the palace walls? A City Under Siege and a Desperate Plea In Constantinople, Konstantinos, faced with the imminent threat of a siege, makes a last-ditch effort to bolster the city''s defenses. He seeks an unlikely alliance with the Vatican, a move that sparks opposition from Helena and Sfrancis. Will Konstantinos be able to secure additional support despite internal dissent, or will this division prove detrimental to his defense efforts? Where to Watch Mehmed Fatihli Sultanı Season 1, Episode 13 with English Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Season 1, Episode 13 (Bolum 13) with English subtitles! Witness the captivating story of Mehmed the Conqueror and the monumental events leading up to the fall of Constantinople. A Look Ahead: Questions Remain Mehmed Fatihli Sultanı Season 1, Episode 13 leaves viewers with several burning questions: Will Mara choose to side with Mehmed or protect her own interests? Can Mehmed successfully capture Dimitria Castle and further tighten his grip on Constantinople? Will Hala Sultan gain control of the harem, or will Bahar and Gülşah challenge her authority? Will Konstantinos find the support he needs to defend the city, or will internal divisions weaken his position? Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical saga! References: Mehmed: Fetihler Sultanı 13.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 13.Bölüm Özet Mehmed: Fetihler Sultanı 13.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fatihli Sultanı Season 1, Episode 13: A Summary", "paragraphs": ["Mehmed Fatihli Sultanı Season 1, Episode 13 (Bolum 13) delves deeper into the complex political and personal struggles surrounding the conquest of Constantinople."]}, {"heading": "The Burden of Truth and Mara''s Dilemma", "paragraphs": ["The episode opens with the revelation of Konstantinos'' treachery. It emerges that Çandarlı Halil, a trusted advisor to Mehmed, collaborated with the Byzantine emperor. This betrayal leaves Mehmed questioning his inner circle and forces Mara to confront a difficult decision.", "Will Mara choose to expose Konstantinos'' deception to Mehmed, jeopardizing her own safety, or will she confront Çandarlı Halil directly? This internal struggle adds another layer of complexity to the already volatile situation."]}, {"heading": "Mehmed''s Resolve and a New Target", "paragraphs": ["Weary of political maneuvering, Mehmed sets his sights on a new strategic target: Dimitria Castle. This decisive move demonstrates his unwavering resolve to conquer Constantinople. With renewed focus and determination, Mehmed prepares his forces for the next phase of the siege."]}, {"heading": "Power Struggles Within the Harem", "paragraphs": ["The episode also explores the ongoing power struggle within the Ottoman harem. Hala Sultan, emboldened by Mara''s absence, sees an opportunity to solidify her own position. This threatens the status quo and raises concerns for Mihriban and others. Will Bahar and Gülşah retaliate against Hala Sultan''s growing influence, or will a new power dynamic emerge within the palace walls?"]}, {"heading": "A City Under Siege and a Desperate Plea", "paragraphs": ["In Constantinople, Konstantinos, faced with the imminent threat of a siege, makes a last-ditch effort to bolster the city''s defenses. He seeks an unlikely alliance with the Vatican, a move that sparks opposition from Helena and Sfrancis. Will Konstantinos be able to secure additional support despite internal dissent, or will this division prove detrimental to his defense efforts?"]}, {"heading": "Where to Watch Mehmed Fatihli Sultanı Season 1, Episode 13 with English Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Season 1, Episode 13 (Bolum 13) with English subtitles! Witness the captivating story of Mehmed the Conqueror and the monumental events leading up to the fall of Constantinople."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fatihli Sultanı Season 1, Episode 13 leaves viewers with several burning questions:", "Will Mara choose to side with Mehmed or protect her own interests?", "Can Mehmed successfully capture Dimitria Castle and further tighten his grip on Constantinople?", "Will Hala Sultan gain control of the harem, or will Bahar and Gülşah challenge her authority?", "Will Konstantinos find the support he needs to defend the city, or will internal divisions weaken his position?", "Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical saga!", "References:", "Mehmed: Fetihler Sultanı 13.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 13.Bölüm Özet", "Mehmed: Fetihler Sultanı 13.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Brace yourself for a captivating episode of Mehmed Fatihli Sultanı (Season 1, Episode 13 with English subtitles)! Witness the fallout from Konstantinos'' decepti", "player_urls": ["https://play.niazitv.pk/play?data=Mjk4Ng==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvRW5nbGlzaC9TMS9FcGlzb2RlLTEzLm1wNC9pbmRleC5tM3U4"], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1716918978.webp"], "duration": "PT2H17M55S", "upload_date": "2024-05-28T19:56:18+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:14.589004+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-13.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-2986", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 13", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-13"}'::jsonb,
    '43f3f898af39f7df3079caddb800638c83e5c191660be67a6bff71c4b28cc448'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-3001'),
    'video-3001',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-14'),
    'Mehmed Fatihli Sultani Episode 14 Urdu Subtitles: A Bold Attack, A Devious Plan',
    1,
    ARRAY['Urdu'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1717554505.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-3001'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-3001'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-14.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-3001',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=3001',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "3001", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=3001", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=3001", "heading": "Episode 14 - Urdu Subtitles", "title": "Mehmed Fatihli Sultani Episode 14 Urdu Subtitles: A Bold Attack, A Devious Plan", "season": 1, "season_source": "catalog", "episode": 14, "bolum": null, "part": null, "languages": ["Urdu"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fatihli Sultanı Season 1, Episode 14 (Bolum 14) intensifies the captivating story of Mehmed the Conqueror''s quest to capture Constantinople. The episode is a captivating blend of military strategy, political maneuvering, and personal agendas.", "article_text": "Mehmed Fatihli Sultanı Season 1, Episode 14: A Summary Mehmed Fatihli Sultanı Season 1, Episode 14 (Bolum 14) intensifies the captivating story of Mehmed the Conqueror''s quest to capture Constantinople. The episode is a captivating blend of military strategy, political maneuvering, and personal agendas. A Determined Sultan and a Desperate Defense The episode opens with the Ottoman army, led by the courageous Zağanos Pasha, facing a fierce resistance at Dimitria castle. With hope waning, Sultan Mehmed takes a bold step. He personally rallies his troops at the forefront, urging them for a final, decisive attack. Will this renewed determination lead to the capture of the strategic Dimitria castle? Will Mehmed''s leadership secure a crucial victory for the Ottoman conquest? Countering Corruption and Exposing Deceit The episode delves deeper into the internal struggles within the Ottoman Empire. The Hurufis, a heretical sect, continue their attempts to spread dissent and undermine the state. However, Mehmed remains steadfast in his resolve to protect his empire from corrupt influences. What measures will Mehmed take to counter the Hurufi threat and safeguard the integrity of his state? A Devious Scheme and a Quest for Revenge The episode also explores the complex dynamics within the Byzantine court. Mara, the captive princess, devises a cunning plan with Mehmed''s approval. This scheme, facilitated by Hala Sultan, aims to manipulate the Byzantines from within. Will Mara''s plot succeed in destabilizing the Byzantine defenses? How will this manipulation impact the balance of power between the Ottomans and the Byzantines? A City Under Siege and a Mother''s Fury The episode further explores the plight of Constantinople. Emperor Constantine grapples with the growing threat of the Ottoman siege. He contemplates seeking aid from the Vatican, a move opposed by his mother, Helena, and Sfrancis. Will Constantine manage to secure outside help, or will internal divisions hinder the city''s defense? Meanwhile, Helena seeks revenge for the loss of Dimitria castle. How will she punish those deemed responsible? Where to Watch Mehmed Fatihli Sultanı Season 1, Episode 14 with Urdu Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Season 1, Episode 14 (Bolum 14) with Urdu subtitles! Immerse yourself in the enthralling saga of Mehmed the Conqueror''s rise to power and witness the pivotal events leading to the fall of Constantinople. A Look Ahead: Questions Remain Mehmed Fatihli Sultanı Season 1, Episode 14 leaves viewers with several burning questions: Will Mehmed''s final attack on Dimitria castle be successful? How will the Hurufi threat be addressed, and will Mehmed maintain control over his empire? Will Mara''s scheme achieve its intended outcome, and what will be the consequences? Will Constantine receive external help, or will the city of Constantinople fall under siege? Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this captivating historical drama! References: Mehmed: Fetihler Sultanı 14.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 14.Bölüm Özet Mehmed: Fetihler Sultanı 14.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fatihli Sultanı Season 1, Episode 14: A Summary", "paragraphs": ["Mehmed Fatihli Sultanı Season 1, Episode 14 (Bolum 14) intensifies the captivating story of Mehmed the Conqueror''s quest to capture Constantinople. The episode is a captivating blend of military strategy, political maneuvering, and personal agendas."]}, {"heading": "A Determined Sultan and a Desperate Defense", "paragraphs": ["The episode opens with the Ottoman army, led by the courageous Zağanos Pasha, facing a fierce resistance at Dimitria castle. With hope waning, Sultan Mehmed takes a bold step. He personally rallies his troops at the forefront, urging them for a final, decisive attack.", "Will this renewed determination lead to the capture of the strategic Dimitria castle? Will Mehmed''s leadership secure a crucial victory for the Ottoman conquest?"]}, {"heading": "Countering Corruption and Exposing Deceit", "paragraphs": ["The episode delves deeper into the internal struggles within the Ottoman Empire. The Hurufis, a heretical sect, continue their attempts to spread dissent and undermine the state. However, Mehmed remains steadfast in his resolve to protect his empire from corrupt influences.", "What measures will Mehmed take to counter the Hurufi threat and safeguard the integrity of his state?"]}, {"heading": "A Devious Scheme and a Quest for Revenge", "paragraphs": ["The episode also explores the complex dynamics within the Byzantine court. Mara, the captive princess, devises a cunning plan with Mehmed''s approval. This scheme, facilitated by Hala Sultan, aims to manipulate the Byzantines from within.", "Will Mara''s plot succeed in destabilizing the Byzantine defenses? How will this manipulation impact the balance of power between the Ottomans and the Byzantines?"]}, {"heading": "A City Under Siege and a Mother''s Fury", "paragraphs": ["The episode further explores the plight of Constantinople. Emperor Constantine grapples with the growing threat of the Ottoman siege. He contemplates seeking aid from the Vatican, a move opposed by his mother, Helena, and Sfrancis.", "Will Constantine manage to secure outside help, or will internal divisions hinder the city''s defense? Meanwhile, Helena seeks revenge for the loss of Dimitria castle. How will she punish those deemed responsible?"]}, {"heading": "Where to Watch Mehmed Fatihli Sultanı Season 1, Episode 14 with Urdu Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Season 1, Episode 14 (Bolum 14) with Urdu subtitles! Immerse yourself in the enthralling saga of Mehmed the Conqueror''s rise to power and witness the pivotal events leading to the fall of Constantinople."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fatihli Sultanı Season 1, Episode 14 leaves viewers with several burning questions:", "Will Mehmed''s final attack on Dimitria castle be successful?", "How will the Hurufi threat be addressed, and will Mehmed maintain control over his empire?", "Will Mara''s scheme achieve its intended outcome, and what will be the consequences?", "Will Constantine receive external help, or will the city of Constantinople fall under siege?", "Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this captivating historical drama!", "References:", "Mehmed: Fetihler Sultanı 14.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 14.Bölüm Özet", "Mehmed: Fetihler Sultanı 14.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Witness the relentless pursuit of conquest in Mehmed Fatihli Sultanı (Season 1, Episode 14 with Urdu subtitles)! Mehmed leads a final assault on Dimitria castle", "player_urls": ["https://play.niazitv.pk/play?data=MzAwMQ==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvVXJkdS9TMS9FcGlzb2RlLTE0Lm1wNC9pbmRleC5tM3U4"], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1717554505.webp"], "duration": "PT2H12M31S", "upload_date": "2024-06-05T04:28:25+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:15.386217+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-14.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-3001", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 14", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-14"}'::jsonb,
    '7c32bda50b26d7b93ed0d5b5adf5e19b64e85767b8ff38b4e537998a525e31aa'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-3002'),
    'video-3002',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-14'),
    'Mehmed Fatihli Sultani Episode 14 English Subtitles: A Leader''s Courage, A City''s Last Stand',
    1,
    ARRAY['English'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1717554788.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-3002'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-3002'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-14.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-3002',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=3002',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "3002", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=3002", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=3002", "heading": "Episode 14 - English Subtitles", "title": "Mehmed Fatihli Sultani Episode 14 English Subtitles: A Leader''s Courage, A City''s Last Stand", "season": 1, "season_source": "catalog", "episode": 14, "bolum": null, "part": null, "languages": ["English"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fatihli Sultanı Season 1, Episode 14 (Bolum 14) intensifies the struggle between the Ottoman Empire and the Byzantine Empire as Mehmed sets his sights on a critical conquest. The episode also explores internal challenges faced by both empires.", "article_text": "Mehmed Fatihli Sultani Season 1, Episode 14: A Summary Mehmed Fatihli Sultanı Season 1, Episode 14 (Bolum 14) intensifies the struggle between the Ottoman Empire and the Byzantine Empire as Mehmed sets his sights on a critical conquest. The episode also explores internal challenges faced by both empires. A Leader''s Resolve and a Final Attack The episode opens with the Ottoman army, led by Zağanos Pasha, facing a valiant defense at Dimitria Castle. Hope seems to dwindle, but Sultan Mehmed arrives at the forefront, his presence rekindling the fighting spirit of his soldiers. With renewed determination, Mehmed orders a final, decisive attack. Will the Ottomans succeed in capturing Dimitria Castle, a strategic point on their path to Constantinople? The answer hinges on Mehmed''s leadership and the resilience of his forces. A City''s Last Stand and a Mother''s Fury Within the walls of Constantinople, Konstantinos grapples with the aftermath of Dimitria Castle''s fall. Seeking answers, he confronts his mother, Helena, who reveals the reason for the loss. The episode hints at a potential punishment, a message intended to deter further failures. Meanwhile, Mara hatches a daring plan to expose Byzantium''s internal struggles. With Mehmed''s approval, she utilizes Hala Sultan as a pawn in this intricate game. Will Mara''s deception succeed in weakening Byzantium''s resolve? A Power Struggle Within the Hurufis The episode delves deeper into the internal conflict plaguing the Hurufis. Their efforts to spread their ideology and gain influence within the Ottoman state encounter an unexpected obstacle. Mehmed, determined to protect the integrity of his empire, seeks a solution to combat their corrupting influence. Where to Watch Mehmed Fatihli Sultanı Season 1, Episode 14 with English Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Season 1, Episode 14 (Bolum 14) with English subtitles! Witness the captivating story of Mehmed the Conqueror''s rise to power and his relentless pursuit of his ultimate goal: the conquest of Constantinople. A Look Ahead: Questions Remain Mehmed Fatihli Sultanı Season 1, Episode 14 leaves viewers with several burning questions: Will the Ottomans successfully capture Dimitria Castle, and what repercussions will it have on the siege of Constantinople? Will Mara''s plan to expose Byzantium''s weaknesses prove successful? How will Mehmed counter the growing influence of the Hurufis within his empire? Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical saga! References: Mehmed: Fetihler Sultanı 14.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 14.Bölüm Özet Mehmed: Fetihler Sultanı 14.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fatihli Sultani Season 1, Episode 14: A Summary", "paragraphs": ["Mehmed Fatihli Sultanı Season 1, Episode 14 (Bolum 14) intensifies the struggle between the Ottoman Empire and the Byzantine Empire as Mehmed sets his sights on a critical conquest. The episode also explores internal challenges faced by both empires."]}, {"heading": "A Leader''s Resolve and a Final Attack", "paragraphs": ["The episode opens with the Ottoman army, led by Zağanos Pasha, facing a valiant defense at Dimitria Castle. Hope seems to dwindle, but Sultan Mehmed arrives at the forefront, his presence rekindling the fighting spirit of his soldiers.", "With renewed determination, Mehmed orders a final, decisive attack. Will the Ottomans succeed in capturing Dimitria Castle, a strategic point on their path to Constantinople? The answer hinges on Mehmed''s leadership and the resilience of his forces."]}, {"heading": "A City''s Last Stand and a Mother''s Fury", "paragraphs": ["Within the walls of Constantinople, Konstantinos grapples with the aftermath of Dimitria Castle''s fall. Seeking answers, he confronts his mother, Helena, who reveals the reason for the loss. The episode hints at a potential punishment, a message intended to deter further failures.", "Meanwhile, Mara hatches a daring plan to expose Byzantium''s internal struggles. With Mehmed''s approval, she utilizes Hala Sultan as a pawn in this intricate game. Will Mara''s deception succeed in weakening Byzantium''s resolve?"]}, {"heading": "A Power Struggle Within the Hurufis", "paragraphs": ["The episode delves deeper into the internal conflict plaguing the Hurufis. Their efforts to spread their ideology and gain influence within the Ottoman state encounter an unexpected obstacle. Mehmed, determined to protect the integrity of his empire, seeks a solution to combat their corrupting influence."]}, {"heading": "Where to Watch Mehmed Fatihli Sultanı Season 1, Episode 14 with English Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Season 1, Episode 14 (Bolum 14) with English subtitles! Witness the captivating story of Mehmed the Conqueror''s rise to power and his relentless pursuit of his ultimate goal: the conquest of Constantinople."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fatihli Sultanı Season 1, Episode 14 leaves viewers with several burning questions:", "Will the Ottomans successfully capture Dimitria Castle, and what repercussions will it have on the siege of Constantinople?", "Will Mara''s plan to expose Byzantium''s weaknesses prove successful?", "How will Mehmed counter the growing influence of the Hurufis within his empire?", "Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical saga!", "References:", "Mehmed: Fetihler Sultanı 14.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 14.Bölüm Özet", "Mehmed: Fetihler Sultanı 14.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Brace yourself for a heart-pounding episode of Mehmed Fatihli Sultanı (Season 1, Episode 14 with English subtitles)! Witness Sultan Mehmed''s unwavering determin", "player_urls": ["https://play.niazitv.pk/play?data=MzAwMg==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvRW5nbGlzaC9TMS9FcGlzb2RlLTE0Lm1wNC9pbmRleC5tM3U4"], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1717554788.webp"], "duration": "PT2H14M24S", "upload_date": "2024-06-05T04:33:07+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:16.232061+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-14.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-3002", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 14", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-14"}'::jsonb,
    'a965f35e059742c11588297f463a285caf57a0f5567d7d4dee901ba95b81d9c4'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-3018'),
    'video-3018',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-15'),
    'Mehmed Fatihli Sultani Last Episode 15 Urdu Subtitles: Will Orhan Fall Victim to Betrayal?',
    1,
    ARRAY['Urdu'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1718124343.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-3018'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-3018'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-15.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-3018',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=3018',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "3018", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=3018", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=3018", "heading": "S-1 Last Episode 15 - Urdu Subtitles", "title": "Mehmed Fatihli Sultani Last Episode 15 Urdu Subtitles: Will Orhan Fall Victim to Betrayal?", "season": 1, "season_source": "catalog", "episode": 15, "bolum": null, "part": null, "languages": ["Urdu"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fatihli Sultanı Episode 15 (Bolum 15) plunges viewers into the heart of a complex web of political maneuvering, personal vendettas, and the relentless pursuit of conquest.", "article_text": "Mehmed Fatihli Sultanı Episode 15: A Summary Mehmed Fatihli Sultanı Episode 15 (Bolum 15) plunges viewers into the heart of a complex web of political maneuvering, personal vendettas, and the relentless pursuit of conquest. A Brother''s Betrayal and a Deadly Plot The episode opens with Mehmed, emboldened by his victory at Dimitria castle, setting his sights firmly on Constantinople. However, a shocking revelation threatens to derail his plans. Believing Orhan to be an obstacle, Mehmed summons Evrenos and entrusts him with a chilling task - to eliminate his own brother! Will Mehmed succeed in his scheme to manipulate the Sultan and orchestrate Orhan''s downfall? This act of betrayal casts a dark shadow over Mehmed''s ambitions. A Daring Rescue and a Byzantine Game Meanwhile, Konstantinos, reeling from his recent defeat, hatches a desperate plan to undermine Ottoman morale. He sends Sfrancis to attack the dervishes, aiming to paint the Ottomans as incapable of maintaining order. However, the Ottomans retaliate swiftly, and Çandarlı confronts Sfrancis. This encounter holds the potential to escalate the already tense situation. A Harem Power Struggle and a Kidnap Attempt The episode also delves deeper into the power struggles within the Sultan''s harem. Halime, finally free from her charade of madness, devises a daring plan to kidnap Hala Sultan. Desperate and facing potential death, will Hala Sultan become an unwilling pawn in Halime''s game? Where to Watch Mehmed Fatihli Sultanı Episode 15 with Urdu Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Episode 15 (Bolum 15) with Urdu subtitles! Immerse yourself in the captivating saga of Mehmed the Conqueror''s rise to power and witness the ruthless tactics employed during this pivotal moment in history. A Look Ahead: Questions Remain Mehmed Fatihli Sultanı Episode 15 leaves viewers with several burning questions: Will Evrenos carry out Mehmed''s ruthless plan against Orhan? Will Halime succeed in kidnapping Hala Sultan, and what are her motives? How will Konstantinos react to the Ottomans'' swift retaliation against Sfrancis'' attack? Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama! References: Mehmed: Fetihler Sultanı 15.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 15.Bölüm Özet Mehmed: Fetihler Sultanı 15.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fatihli Sultanı Episode 15: A Summary", "paragraphs": ["Mehmed Fatihli Sultanı Episode 15 (Bolum 15) plunges viewers into the heart of a complex web of political maneuvering, personal vendettas, and the relentless pursuit of conquest."]}, {"heading": "A Brother''s Betrayal and a Deadly Plot", "paragraphs": ["The episode opens with Mehmed, emboldened by his victory at Dimitria castle, setting his sights firmly on Constantinople. However, a shocking revelation threatens to derail his plans. Believing Orhan to be an obstacle, Mehmed summons Evrenos and entrusts him with a chilling task - to eliminate his own brother!", "Will Mehmed succeed in his scheme to manipulate the Sultan and orchestrate Orhan''s downfall? This act of betrayal casts a dark shadow over Mehmed''s ambitions."]}, {"heading": "A Daring Rescue and a Byzantine Game", "paragraphs": ["Meanwhile, Konstantinos, reeling from his recent defeat, hatches a desperate plan to undermine Ottoman morale. He sends Sfrancis to attack the dervishes, aiming to paint the Ottomans as incapable of maintaining order.", "However, the Ottomans retaliate swiftly, and Çandarlı confronts Sfrancis. This encounter holds the potential to escalate the already tense situation."]}, {"heading": "A Harem Power Struggle and a Kidnap Attempt", "paragraphs": ["The episode also delves deeper into the power struggles within the Sultan''s harem. Halime, finally free from her charade of madness, devises a daring plan to kidnap Hala Sultan. Desperate and facing potential death, will Hala Sultan become an unwilling pawn in Halime''s game?"]}, {"heading": "Where to Watch Mehmed Fatihli Sultanı Episode 15 with Urdu Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Episode 15 (Bolum 15) with Urdu subtitles! Immerse yourself in the captivating saga of Mehmed the Conqueror''s rise to power and witness the ruthless tactics employed during this pivotal moment in history."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fatihli Sultanı Episode 15 leaves viewers with several burning questions:", "Will Evrenos carry out Mehmed''s ruthless plan against Orhan?", "Will Halime succeed in kidnapping Hala Sultan, and what are her motives?", "How will Konstantinos react to the Ottomans'' swift retaliation against Sfrancis'' attack?", "Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama!", "References:", "Mehmed: Fetihler Sultanı 15.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 15.Bölüm Özet", "Mehmed: Fetihler Sultanı 15.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Brace yourself for the heart-stopping Mehmed Fatihli Sultanı Episode 15 (Season 1, Bolum 15 with Urdu subtitles)! Witness a shocking plot against Orhan, a despe", "player_urls": ["https://play.niazitv.pk/play?data=MzAxOA==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvVXJkdS9TMS9FcGlzb2RlLTE1Lm1wNC9pbmRleC5tM3U4"], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1718124343.webp"], "duration": "PT2H18M6S", "upload_date": "2024-06-11T18:45:42+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:17.005198+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S1/Episode-15.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-3018", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 15", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-15"}'::jsonb,
    '01227503abfbd1bb23825afae41aa166fd0efe601bcf9a22b7413f8404a8e90e'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-3019'),
    'video-3019',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-15'),
    'Mehmed Fatihli Sultani Last Episode 15 English Subtitles: Betrayal and Warfare Intensify',
    1,
    ARRAY['English'],
    'subtitled',
    'published',
    2700,
    'https://play.niazitv.pk/images/episode_1718124583.webp'
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:video-3019'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:video-3019'),
    'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-15.mp4/index.m3u8',
    'hls',
    true,
    1,
    'reachable',
    NOW()
) ON CONFLICT (id) DO UPDATE SET
    delivery_url = EXCLUDED.delivery_url,
    is_active = true,
    verification_state = 'reachable',
    last_verified_at = NOW();

INSERT INTO public.source_records (
    source_id, source_url, raw_json, content_hash
) VALUES (
    'video-3019',
    'https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=3019',
    '{"drama": "Mehmed: Fetihler Sultani", "catalog_id": "62", "catalog_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles", "catalog_seasons": [1], "catalog_season_source": "default_single_season", "catalog_issues": [], "season_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani", "record_id": "3019", "source_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=3019", "final_url": "https://play.niazitv.pk/drama/62/single-serie?watch=1&episode=3019", "heading": "S-1 Last Episode 15 - English Subtitles", "title": "Mehmed Fatihli Sultani Last Episode 15 English Subtitles: Betrayal and Warfare Intensify", "season": 1, "season_source": "catalog", "episode": 15, "bolum": null, "part": null, "languages": ["English"], "language_source": "episode_heading", "version": "subtitled", "version_source": "episode_heading", "episode_numbering_basis": "source_heading_not_normalized", "description": "Mehmed Fatihli Sultanı Season 1, Episode 15 (Bolum 15) throws viewers into the heart of the conflict between the Ottomans and the Byzantines, as both sides employ cunning strategies and engage in desperate struggles.", "article_text": "Mehmed Fatihli Sultanı Season 1, Episode 15: A Summary Mehmed Fatihli Sultanı Season 1, Episode 15 (Bolum 15) throws viewers into the heart of the conflict between the Ottomans and the Byzantines, as both sides employ cunning strategies and engage in desperate struggles. A Sultan''s Ruthless Calculation The episode opens with Mehmed, emboldened by his victory at Dimitria castle, setting his sights on the ultimate prize: Constantinople. However, a perceived obstacle stands in his way – Orhan. In a shocking turn of events, Mehmed summons Evrenosoglu and entrusts him with a chilling task – to eliminate Orhan. Will Mehmed''s ruthless plan, devised with the Sultan''s knowledge, succeed in removing Orhan from the equation? This unexpected development raises questions about Mehmed''s true intentions and the lengths he is willing to go to in pursuit of his goals. A Desperate Gamble by the Desperate Meanwhile, Konstantinos, reeling from his recent defeat, hatches a desperate plan to counter the Ottoman threat. He dispatches Sfrancis on a mission to attack the dervishes, aiming to shatter Ottoman morale and demonstrate the supposed weakness of the Turks. This act of aggression sparks a clash between Sfrancis and Çandarlı. Will Konstantinos'' gamble succeed in turning the tide, or will it only escalate the conflict? A Harem Power Struggle and a Daring Kidnapping Attempt The episode also delves deeper into the power struggles within the Ottoman court. Halime, having shed the facade of madness, devises a daring plot. Her target: Hala Sultan. With Hala Sultan languishing in a state of despair and resignation, will Halime be successful in her audacious kidnapping attempt? What are her motives, and how will this scheme impact the ongoing political and military battles? Where to Watch Mehmed Fatihli Sultanı Season 1, Episode 15 with English Subtitles Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Season 1, Episode 15 (Bolum 15) with English subtitles! Immerse yourself in the captivating saga of Mehmed the Conqueror''s rise to power and witness the ruthless tactics and cunning strategies employed during the conquest of Constantinople. A Look Ahead: Questions Remain Mehmed Fatihli Sultanı Season 1, Episode 15 leaves viewers with several burning questions: Will Mehmed''s plot to eliminate Orhan succeed? What will be the consequences of this decision? Will Sfrancis'' attack on the dervishes achieve Konstantinos'' desired outcome, or will it backfire? Can Halime pull off her kidnapping scheme, and if so, what will be her next move? Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama! References: Mehmed: Fetihler Sultanı 15.Bölüm - Gallery TRT1 Mehmed: Fetihler Sultanı 15.Bölüm Özet Mehmed: Fetihler Sultanı 15.Bölüm Fragmani", "article_sections": [{"heading": "Mehmed Fatihli Sultanı Season 1, Episode 15: A Summary", "paragraphs": ["Mehmed Fatihli Sultanı Season 1, Episode 15 (Bolum 15) throws viewers into the heart of the conflict between the Ottomans and the Byzantines, as both sides employ cunning strategies and engage in desperate struggles."]}, {"heading": "A Sultan''s Ruthless Calculation", "paragraphs": ["The episode opens with Mehmed, emboldened by his victory at Dimitria castle, setting his sights on the ultimate prize: Constantinople. However, a perceived obstacle stands in his way – Orhan. In a shocking turn of events, Mehmed summons Evrenosoglu and entrusts him with a chilling task – to eliminate Orhan.", "Will Mehmed''s ruthless plan, devised with the Sultan''s knowledge, succeed in removing Orhan from the equation? This unexpected development raises questions about Mehmed''s true intentions and the lengths he is willing to go to in pursuit of his goals."]}, {"heading": "A Desperate Gamble by the Desperate", "paragraphs": ["Meanwhile, Konstantinos, reeling from his recent defeat, hatches a desperate plan to counter the Ottoman threat. He dispatches Sfrancis on a mission to attack the dervishes, aiming to shatter Ottoman morale and demonstrate the supposed weakness of the Turks.", "This act of aggression sparks a clash between Sfrancis and Çandarlı. Will Konstantinos'' gamble succeed in turning the tide, or will it only escalate the conflict?"]}, {"heading": "A Harem Power Struggle and a Daring Kidnapping Attempt", "paragraphs": ["The episode also delves deeper into the power struggles within the Ottoman court. Halime, having shed the facade of madness, devises a daring plot. Her target: Hala Sultan.", "With Hala Sultan languishing in a state of despair and resignation, will Halime be successful in her audacious kidnapping attempt? What are her motives, and how will this scheme impact the ongoing political and military battles?"]}, {"heading": "Where to Watch Mehmed Fatihli Sultanı Season 1, Episode 15 with English Subtitles", "paragraphs": ["Head over to NiaziPlay ( https://play.niazitv.pk ) to stream Mehmed Fatihli Sultanı Season 1, Episode 15 (Bolum 15) with English subtitles! Immerse yourself in the captivating saga of Mehmed the Conqueror''s rise to power and witness the ruthless tactics and cunning strategies employed during the conquest of Constantinople."]}, {"heading": "A Look Ahead: Questions Remain", "paragraphs": ["Mehmed Fatihli Sultanı Season 1, Episode 15 leaves viewers with several burning questions:", "Will Mehmed''s plot to eliminate Orhan succeed? What will be the consequences of this decision?", "Will Sfrancis'' attack on the dervishes achieve Konstantinos'' desired outcome, or will it backfire?", "Can Halime pull off her kidnapping scheme, and if so, what will be her next move?", "Stay tuned for the next episode to discover the answers to these gripping questions and witness the continuation of this enthralling historical drama!", "References:", "Mehmed: Fetihler Sultanı 15.Bölüm - Gallery TRT1", "Mehmed: Fetihler Sultanı 15.Bölüm Özet", "Mehmed: Fetihler Sultanı 15.Bölüm Fragmani"]}], "description_status": "extracted", "meta_description": "Witness the Ottomans and Byzantines locked in a deadly game of cat and mouse in Mehmed Fatihli Sultanı (Season 1, Episode 15 with English subtitles)! Mehmed hat", "player_urls": ["https://play.niazitv.pk/play?data=MzAxOQ==", "https://play.niazitv.pk/play?url=aHR0cHM6Ly9jZG40Lm5pYXppdHYucGsvTmlhemlQbGF5LTEvTWVobWVkLUZldGlobGVyLVN1bHRhbmkvRW5nbGlzaC9TMS9FcGlzb2RlLTE1Lm1wNC9pbmRleC5tM3U4"], "thumbnail_urls": ["https://play.niazitv.pk/images/episode_1718124583.webp"], "duration": "PT2H19M49S", "upload_date": "2024-06-11T18:49:43+00:00", "quality_flags": [], "status": "needs_review", "extraction_done": true, "playback_verified": false, "html_source": "live_fetch", "collected_at": "2026-10-02T05:14:17.864621+00:00", "runs_attempted": 1, "stream_urls": ["https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S1/Episode-15.mp4/index.m3u8"], "stream_url_source": "VideoObject.contentUrl", "direct_playback_status": "not_tested", "id": "video-3019", "canonical_drama": "Mehmed: Fetihler Sultani", "drama_id": "mehmed-fetihler-sultani", "source_quality_flags": [], "organization_notes": [], "collection_id": "collection-62", "content_type": "episode", "display_label": "Episode 15", "numbering_basis": "source_episode_number", "season_navigation_state": "reported_season", "stream_present": true, "organization_review_flags": [], "episode_group_id": "collection-62-episode-15"}'::jsonb,
    '18da4401a138f629c73e1c016d3179be85db46295c0de6258d7122e7aa676b1c'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;


UPDATE public.dramas 
SET video_records_count = (SELECT COUNT(*) FROM public.video_variants vv JOIN public.collections c ON vv.collection_id = c.id WHERE c.drama_id = '1c5a90f7-cced-5b88-af7e-b8ad27e7e691'),
    updated_at = NOW()
WHERE id = '1c5a90f7-cced-5b88-af7e-b8ad27e7e691';
