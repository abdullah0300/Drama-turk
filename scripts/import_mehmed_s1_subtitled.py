import json
import os
import hashlib

def sql_escape(val):
    if val is None:
        return 'NULL'
    if isinstance(val, bool):
        return 'true' if val else 'false'
    if isinstance(val, (int, float)):
        return str(val)
    if isinstance(val, list):
        items = [sql_escape(x) for x in val]
        return f"ARRAY[{', '.join(items)}]"
    s = str(val).replace("'", "''")
    return f"'{s}'"

def main():
    scraped_path = r'C:\Users\larai\.gemini\antigravity\brain\310a9528-7ebd-4591-b785-91a73fcae536\scratch\collection_62_scraped.json'
    with open(scraped_path, encoding='utf-8') as f:
        data = json.load(f)

    videos = data['videos']
    print(f"Loaded {len(videos)} videos from scraped data.")

    # Sort videos by episode, then by language (Urdu first, English second)
    videos.sort(key=lambda v: (v['episode'] or 0, 0 if 'Urdu' in v.get('languages', []) else 1))

    # Group by episode (1..15)
    episodes = {}
    for v in videos:
        ep = v['episode']
        episodes.setdefault(ep, []).append(v)

    # 1. Generate SQL statements
    sql_lines = []
    sql_lines.append("-- Import Mehmed Season 1 Subtitled (collection-62)")
    sql_lines.append("""
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
""")

    # Episode groups
    stills_map = {}
    for ep in sorted(episodes.keys()):
        vlist = episodes[ep]
        thumb = vlist[0]['thumbnail_urls'][0] if vlist[0].get('thumbnail_urls') else None
        stills_map[f'collection-62-episode-{ep}'] = thumb
        sql_lines.append(f"""
INSERT INTO public.episode_groups (
    id, source_id, collection_id, label, reported_episode_number, bolum, part, order_key, content_type, status, still_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-{ep}'),
    'collection-62-episode-{ep}',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    'Episode {ep}',
    {ep},
    NULL,
    NULL,
    {ep},
    'episode',
    'published',
    {sql_escape(thumb)}
) ON CONFLICT (source_id) DO UPDATE SET
    label = EXCLUDED.label,
    reported_episode_number = EXCLUDED.reported_episode_number,
    still_url = COALESCE(EXCLUDED.still_url, episode_groups.still_url);
""")

    # Video variants, stream sources, and source records
    for v in videos:
        rid = v['record_id']
        ep = v['episode']
        vid = f"video-{rid}"
        thumb = v['thumbnail_urls'][0] if v.get('thumbnail_urls') else None
        langs_pg = sql_escape(v['languages'])
        stream_url = v['stream_urls'][0] if v.get('stream_urls') else None
        raw_json_str = json.dumps(v, ensure_ascii=False).replace("'", "''")
        chash = hashlib.sha256(json.dumps(v, sort_keys=True).encode()).hexdigest()

        sql_lines.append(f"""
INSERT INTO public.video_variants (
    id, source_id, collection_id, group_id, display_label, reported_season, languages, version, publication_state, duration_seconds, thumbnail_url
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:{vid}'),
    '{vid}',
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:collection-62'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'group:collection-62-episode-{ep}'),
    {sql_escape(v.get('title') or f'Episode {ep}')},
    1,
    {langs_pg},
    'subtitled',
    'published',
    2700,
    {sql_escape(thumb)}
) ON CONFLICT (source_id) DO UPDATE SET
    group_id = EXCLUDED.group_id,
    display_label = EXCLUDED.display_label,
    languages = EXCLUDED.languages,
    version = EXCLUDED.version,
    thumbnail_url = EXCLUDED.thumbnail_url;

INSERT INTO public.stream_sources (
    id, variant_id, delivery_url, format, is_active, priority, verification_state, last_verified_at
) VALUES (
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:{vid}'),
    extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:{vid}'),
    {sql_escape(stream_url)},
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
    '{vid}',
    {sql_escape(v.get('source_url'))},
    '{raw_json_str}'::jsonb,
    '{chash}'
) ON CONFLICT (source_id) DO UPDATE SET
    raw_json = EXCLUDED.raw_json,
    content_hash = EXCLUDED.content_hash;
""")

    # Update dramas video count
    sql_lines.append("""
UPDATE public.dramas 
SET video_records_count = (SELECT COUNT(*) FROM public.video_variants vv JOIN public.collections c ON vv.collection_id = c.id WHERE c.drama_id = '1c5a90f7-cced-5b88-af7e-b8ad27e7e691'),
    updated_at = NOW()
WHERE id = '1c5a90f7-cced-5b88-af7e-b8ad27e7e691';
""")

    sql_output = "\n".join(sql_lines)
    sql_file = r'd:\Webcraftio\Drama turk\supabase\import_mehmed_s1_subtitled.sql'
    with open(sql_file, 'w', encoding='utf-8') as f:
        f.write(sql_output)
    print(f"Generated SQL migration: {sql_file}")

    # 2. Update catalog_data/catalog.json
    catalog_path = r'd:\Webcraftio\Drama turk\catalog_data\catalog.json'
    with open(catalog_path, encoding='utf-8') as f:
        catalog = json.load(f)

    # Check drama collection_ids
    for d in catalog['dramas']:
        if d['id'] == 'mehmed-fetihler-sultani':
            if 'collection-62' not in d['collection_ids']:
                d['collection_ids'].insert(0, 'collection-62')
            d['video_records'] = d.get('video_records', 149) + len(videos)

    # Add collection-62
    ep_group_ids = [f"collection-62-episode-{ep}" for ep in sorted(episodes.keys())]
    existing_coll = next((c for c in catalog['collections'] if c['id'] == 'collection-62'), None)
    new_coll = {
        "id": "collection-62",
        "source_catalog_id": "62",
        "drama_id": "mehmed-fetihler-sultani",
        "source_heading": "Mehmed: Fetihler Sultani - Urdu & English Subtitles",
        "source_url": "https://play.niazitv.pk/drama/62/mehmed-fetihler-sultani",
        "reported_seasons": [1],
        "episode_group_ids": ep_group_ids,
        "extra_video_ids": [],
        "video_records": len(videos)
    }
    if existing_coll:
        catalog['collections'].remove(existing_coll)
    catalog['collections'].append(new_coll)

    # Add episode groups
    existing_group_ids = {g['id'] for g in catalog['episode_groups']}
    for ep in sorted(episodes.keys()):
        gid = f"collection-62-episode-{ep}"
        vids = [f"video-{x['record_id']}" for x in episodes[ep]]
        new_g = {
            "id": gid,
            "collection_id": "collection-62",
            "drama_id": "mehmed-fetihler-sultani",
            "display_label": f"Episode {ep}",
            "episode_number": ep,
            "bolum": None,
            "part": None,
            "video_ids": vids,
            "numbering_basis": "source_episode_number",
            "reported_season": 1
        }
        if gid in existing_group_ids:
            catalog['episode_groups'] = [g for g in catalog['episode_groups'] if g['id'] != gid]
        catalog['episode_groups'].append(new_g)

    with open(catalog_path, 'w', encoding='utf-8') as f:
        json.dump(catalog, f, indent=2, ensure_ascii=False)
    print("Updated catalog_data/catalog.json successfully.")

    # 3. Update catalog_data/videos.json
    videos_path = r'd:\Webcraftio\Drama turk\catalog_data\videos.json'
    with open(videos_path, encoding='utf-8') as f:
        all_videos = json.load(f)

    existing_vids = {v['id'] for v in all_videos}
    added_vids = 0
    for v in videos:
        vid = f"video-{v['record_id']}"
        ep = v['episode']
        rec = dict(v)
        rec['id'] = vid
        rec['collection_id'] = 'collection-62'
        rec['episode_group_id'] = f"collection-62-episode-{ep}"
        rec['reported_season'] = 1
        rec['season'] = 1
        rec['version'] = 'subtitled'
        rec['display_label'] = f"Episode {ep}"
        if vid in existing_vids:
            all_videos = [x for x in all_videos if x['id'] != vid]
        all_videos.append(rec)
        added_vids += 1

    with open(videos_path, 'w', encoding='utf-8') as f:
        json.dump(all_videos, f, indent=1, ensure_ascii=False)
    print(f"Updated catalog_data/videos.json with {added_vids} videos.")

    # 4. Update catalog_data/episode-stills.json
    stills_path = r'd:\Webcraftio\Drama turk\catalog_data\episode-stills.json'
    with open(stills_path, encoding='utf-8') as f:
        all_stills = json.load(f)

    for gid, still in stills_map.items():
        if still:
            all_stills[gid] = still

    with open(stills_path, 'w', encoding='utf-8') as f:
        json.dump(all_stills, f, indent=2, ensure_ascii=False)
    print("Updated catalog_data/episode-stills.json.")

if __name__ == '__main__':
    main()
