#!/usr/bin/env python3
"""
Scrape one NiaziPlay collection page and every episode page it lists, producing
video records in the same shape as catalog_data/videos.json.

    python3 scripts/scrape-niazi-collection.py 81 --drama-id ask-ve-taht \
        --drama "Aşk ve Taht" --out /tmp/niazi/collection-81.json

Source text (descriptions, full article) is kept verbatim in the record so it
can go to source_records; it is never written to published_editorial.
"""
import argparse
import base64
import datetime as dt
import html
import json
import re
import sys
import urllib.request

BASE = 'https://play.niazitv.pk'
UA = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124 Safari/537.36'


def fetch(url):
    req = urllib.request.Request(url, headers={'User-Agent': UA})
    with urllib.request.urlopen(req, timeout=40) as r:
        return r.geturl(), r.read().decode('utf-8', 'replace')


def text(fragment):
    fragment = re.sub(r'<(script|style)\b.*?</\1>', ' ', fragment, flags=re.S | re.I)
    return re.sub(r'\s+', ' ', html.unescape(re.sub(r'<[^>]+>', ' ', fragment))).strip()


def balanced_div(h, start):
    """Return the HTML of the <div> that opens at index `start`."""
    depth = 0
    for m in re.finditer(r'<(/?)div\b[^>]*>', h[start:], re.I):
        depth += -1 if m.group(1) else 1
        if depth == 0:
            return h[start:start + m.end()]
    return h[start:]


def json_ld(h, type_name):
    for m in re.finditer(r'<script[^>]*ld\+json[^>]*>(.*?)</script>', h, re.S):
        try:
            data = json.loads(m.group(1))
        except json.JSONDecodeError:
            continue
        for node in (data.get('@graph') or [data]) if isinstance(data, dict) else data:
            if isinstance(node, dict) and node.get('@type') == type_name:
                return node
    return {}


def article(h):
    """Structured and plain text of the episode article (div.pagebody)."""
    i = h.find('class="pagebody"')
    if i < 0:
        return '', []
    body = balanced_div(h, h.rfind('<div', 0, i))
    sections, cur = [], {'heading': None, 'paragraphs': []}
    for m in re.finditer(r'<(h[1-6]|p|li)\b[^>]*>(.*?)</\1>', body, re.S | re.I):
        t = text(m.group(2))
        if not t:
            continue
        if m.group(1).lower().startswith('h'):
            if cur['heading'] or cur['paragraphs']:
                sections.append(cur)
            cur = {'heading': t, 'paragraphs': []}
        else:
            cur['paragraphs'].append(t)
    if cur['heading'] or cur['paragraphs']:
        sections.append(cur)
    return text(body), sections


def iso_seconds(d):
    m = re.fullmatch(r'PT(?:(\d+)H)?(?:(\d+)M)?(?:(\d+)S)?', d or '')
    return (int(m.group(1) or 0) * 3600 + int(m.group(2) or 0) * 60 + int(m.group(3) or 0)) if m else 0


def scrape(catalog_id, drama, drama_id):
    season_url, ch = fetch(f'{BASE}/drama/{catalog_id}')
    catalog_heading = text((re.search(r'<h2 class="[^"]*pagetitle[^"]*">(.*?)</h2>', ch, re.S) or re.search(r'<title>(.*?)</title>', ch, re.S)).group(1))
    canon = re.search(r'<link rel="canonical" href="([^"]+)"', ch)
    season_url = canon.group(1) if canon else season_url
    seasons = sorted({int(n) for n in re.findall(r'Season\s+(\d+)', catalog_heading, re.I)}) or [1]
    ids = []
    for rid in re.findall(r'single-serie\?watch=1&(?:amp;)?episode=(\d+)', ch):
        if rid not in ids:
            ids.append(rid)

    out = []
    for rid in ids:
        src = f'{BASE}/drama/{catalog_id}/single-serie?watch=1&episode={rid}'
        final, h = fetch(src)
        vo = json_ld(h, 'VideoObject')
        h1 = text((re.search(r'<h1[^>]*>(.*?)</h1>', h, re.S) or re.search(r'<title>(.*?)</title>', h, re.S)).group(1))
        h3m = re.search(r'<h3 class="uk-text-contrast[^"]*">(.*?)</h3>', h, re.S)
        h3 = text(re.sub(r'<span.*?</span>', '', h3m.group(1), flags=re.S)) if h3m else ''
        label_src = f'{h3} {h1}'
        # The h3 badge sometimes numbers by Bolum ("Episode 84"); the h1 carries the season episode.
        ep = re.search(r'Episode\s+(\d+)', h1, re.I) or re.search(r'Episode\s+(\d+)', h3, re.I)
        bolum = re.search(r'B[oö]l[uü]m\s+(\d+)', label_src, re.I)
        part = re.search(r'Part\s+(\d+)', label_src, re.I)
        season = re.search(r'Season\s+(\d+)', h1, re.I)
        dubbed = re.search(r'dubbed', label_src, re.I)
        langs = [l for l in ('Urdu', 'English') if re.search(rf'\b{l}\b', h3 or h1, re.I)] or ['Urdu']
        art_text, sections = article(h)
        first_para = next((p for s in sections for p in s['paragraphs']), '')
        meta_desc = re.search(r'<meta name="description" content="([^"]*)"', h)
        players = sorted(set(re.findall(r'https://play\.niazitv\.pk/play\?(?:data|url)=[A-Za-z0-9+/=]+', h)))
        stream = vo.get('contentUrl') or ''
        if not stream:  # fall back to the embedded player page
            for p in players:
                _, ph = fetch(p)
                s = re.search(r'<source src="([^"?]+\.m3u8[^"]*?)(?:\?token=[^"]*)?"', ph)
                if s:
                    stream = s.group(1)
                    break
        thumbs = vo.get('thumbnailUrl') or []
        thumbs = [thumbs] if isinstance(thumbs, str) else thumbs
        n = int(ep.group(1)) if ep else None
        b = int(bolum.group(1)) if bolum else None
        p_ = int(part.group(1)) if part else None
        group = f'collection-{catalog_id}-' + (f'bolum-{b}' if b else f'episode-{n}') + (f'-part-{p_}' if p_ else '')
        label = (f'Episode {n}' if n else h3 or h1) + (f' · Bolum {b}' if b else '') + (f' · Part {p_}' if p_ else '')
        flags = [] if iso_seconds(vo.get('duration')) else ['duration_missing_or_zero']
        out.append({
            'drama': drama, 'catalog_id': str(catalog_id), 'catalog_heading': catalog_heading,
            'catalog_seasons': seasons, 'catalog_season_source': 'heading' if re.search('Season', catalog_heading) else 'default_single_season',
            'catalog_issues': [], 'season_url': season_url, 'record_id': rid, 'source_url': src, 'final_url': final,
            'heading': h3 or h1, 'title': h1, 'season': int(season.group(1)) if season else seasons[0],
            'season_source': 'episode_heading' if season else 'catalog', 'episode': n, 'bolum': b, 'part': p_,
            'languages': langs, 'language_source': 'episode_heading', 'version': 'dubbed' if dubbed else 'subtitled',
            'version_source': 'episode_heading', 'episode_numbering_basis': 'source_heading_not_normalized',
            'description': first_para, 'article_text': art_text, 'article_sections': sections,
            'description_status': 'extracted' if first_para else 'missing',
            'meta_description': html.unescape(meta_desc.group(1)) if meta_desc else vo.get('description', ''),
            'player_urls': players, 'thumbnail_urls': thumbs, 'duration': vo.get('duration') or 'PT0H0M0S',
            'upload_date': vo.get('uploadDate'), 'quality_flags': flags, 'status': 'needs_review',
            'extraction_done': True, 'playback_verified': False, 'html_source': 'live_fetch',
            'collected_at': dt.datetime.now(dt.timezone.utc).isoformat(), 'runs_attempted': 1,
            'stream_urls': [stream] if stream else [], 'stream_url_source': 'VideoObject.contentUrl' if vo.get('contentUrl') else 'player_page',
            'direct_playback_status': 'not_tested', 'id': f'video-{rid}', 'canonical_drama': drama, 'drama_id': drama_id,
            'source_quality_flags': flags, 'organization_notes': [], 'collection_id': f'collection-{catalog_id}',
            'content_type': 'episode', 'display_label': label, 'numbering_basis': 'source_episode_number',
            'season_navigation_state': 'reported_season', 'stream_present': bool(stream),
            'organization_review_flags': [], 'episode_group_id': group,
        })
    return {'catalog_id': str(catalog_id), 'catalog_heading': catalog_heading, 'season_url': season_url,
            'reported_seasons': seasons, 'poster_url': (re.search(r'<meta property="og:image" content="([^"]+)"', ch) or [None, None])[1],
            'listed_record_ids': ids, 'videos': out}


if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('catalog_id')
    ap.add_argument('--drama', required=True)
    ap.add_argument('--drama-id', required=True)
    ap.add_argument('--out')
    a = ap.parse_args()
    data = scrape(a.catalog_id, a.drama, a.drama_id)
    s = json.dumps(data, ensure_ascii=False, indent=1)
    if a.out:
        open(a.out, 'w').write(s)
        print(f"collection-{a.catalog_id}: {len(data['videos'])} videos -> {a.out}", file=sys.stderr)
    else:
        print(s)
