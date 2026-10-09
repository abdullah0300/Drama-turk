#!/usr/bin/env python3
"""
Scheduled catalog sync with NiaziPlay (run by .github/workflows/catalog-sync.yml).

    python3 scripts/catalog_sync.py episodes   # import new episodes of seasons we already have
    python3 scripts/catalog_sync.py links      # health-check stream links, repair from Niazi
    python3 scripts/catalog_sync.py discover   # look for Niazi collections we don't have yet
    python3 scripts/catalog_sync.py approve 80 --drama-id kizil-elma --drama "Kızıl Elma"
                                               # import a discovered collection after review
Options: --dry-run (read only, prints the plan), --limit N (links per run).

Rules (no guessing):
  * Insert-only for catalog rows. Existing episodes, labels, edits and URLs are never rewritten;
    a replacement stream link is added as a new, higher-priority source and the old one is kept.
  * Anything that does not match the expected pattern goes to review_findings instead of the site.
  * Source text goes to source_records only; published_editorial is never touched.
  * Exit code 1 when something needs attention (failed scrape, layout change, unfixable links),
    so GitHub marks the run red and emails the repository owner.

Environment: SUPABASE_URL plus SUPABASE_SERVICE_ROLE_KEY (writes). With --dry-run the public
NEXT_PUBLIC_SUPABASE_ANON_KEY is enough. Values are read from the environment or .env.local.
"""
import argparse
import datetime as dt
import hashlib
import json
import os
import re
import sys
import time
import urllib.error
import urllib.parse
import urllib.request

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import niazi_scraper as niazi  # noqa: E402

SITE_ORIGIN = 'https://greatnation.webcraftio.com'
POLITE_DELAY = 1.0  # seconds between Niazi page requests
LINK_RECHECK_HOURS = 20


# --------------------------------------------------------------------------- config / REST

def load_env():
    env = dict(os.environ)
    path = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), '.env.local')
    if os.path.exists(path):
        for line in open(path, encoding='utf-8'):
            m = re.match(r'^([A-Z0-9_]+)=(.*)$', line.strip())
            if m and m.group(1) not in env:
                env[m.group(1)] = m.group(2).strip().strip('"')
    return env


class Supabase:
    def __init__(self, url, key, dry_run):
        self.base = url.rstrip('/') + '/rest/v1/'
        self.key = key
        self.dry_run = dry_run
        self.writes = []

    def _req(self, method, path, body=None, prefer=None):
        req = urllib.request.Request(self.base + path, method=method, data=None if body is None else json.dumps(body).encode())
        req.add_header('apikey', self.key)
        req.add_header('Authorization', f'Bearer {self.key}')
        req.add_header('Content-Type', 'application/json')
        if prefer:
            req.add_header('Prefer', prefer)
        try:
            with urllib.request.urlopen(req, timeout=60) as r:
                raw = r.read()
                return json.loads(raw) if raw else None
        except urllib.error.HTTPError as e:
            raise RuntimeError(f'{method} {path} -> {e.code}: {e.read().decode()[:300]}') from None

    def select(self, table, query):
        rows, offset = [], 0
        while True:
            page = self._req('GET', f'{table}?{query}&limit=1000&offset={offset}')
            rows += page
            if len(page) < 1000:
                return rows
            offset += 1000

    def insert(self, table, rows, on_conflict=None, returning=True):
        rows = rows if isinstance(rows, list) else [rows]
        self.writes.append(('insert', table, len(rows)))
        if self.dry_run:
            return [dict(r, id=f'dry-{table}-{i}') for i, r in enumerate(rows)]
        q = f'?on_conflict={on_conflict}' if on_conflict else ''
        prefer = ('resolution=ignore-duplicates,' if on_conflict else '') + ('return=representation' if returning else 'return=minimal')
        return self._req('POST', table + q, rows, prefer) or []

    def update(self, table, match, values):
        self.writes.append(('update', table, match))
        if self.dry_run:
            return
        self._req('PATCH', f'{table}?{match}', values, 'return=minimal')


# --------------------------------------------------------------------------- helpers

def now():
    return dt.datetime.now(dt.timezone.utc).isoformat()


def iso_seconds(d):
    m = re.fullmatch(r'PT(?:(\d+)H)?(?:(\d+)M)?(?:(\d+)S)?', d or '')
    return (int(m.group(1) or 0) * 3600 + int(m.group(2) or 0) * 60 + int(m.group(3) or 0)) if m else 0


def check_stream(url):
    """Fetch an HLS playlist the way the site's player does (no Referer, cross-origin).
    Returns (ok, http_status, detail, duration_seconds)."""
    def get(u):
        req = urllib.request.Request(u, headers={'User-Agent': niazi.UA, 'Origin': SITE_ORIGIN})
        with urllib.request.urlopen(req, timeout=30) as r:
            return r.status, r.headers.get('Access-Control-Allow-Origin'), r.read(400_000)
    try:
        status, cors, body = get(url)
        text = body.decode('utf-8', 'replace')
        if not text.startswith('#EXTM3U'):
            return False, status, 'response is not an HLS playlist', 0
        if cors not in ('*', SITE_ORIGIN):
            return False, status, f'CORS does not allow the site (Access-Control-Allow-Origin: {cors})', 0
        variants = re.findall(r'#EXT-X-STREAM-INF:[^\n]*\n([^\n#]+)', text)
        media = text
        if variants:  # master playlist: the first rendition must load too
            s2, _, b2 = get(urllib.parse.urljoin(url, variants[0].strip()))
            media = b2.decode('utf-8', 'replace')
            if not media.startswith('#EXTM3U'):
                return False, s2, 'rendition playlist is not HLS', 0
        # A live/sliding playlist exposes only a partial runtime.
        duration = round(sum(float(x) for x in re.findall(r'#EXTINF:([\d.]+)', media))) if '#EXT-X-ENDLIST' in media else 0
        return True, status, 'playlist and first rendition load without a Referer', duration
    except urllib.error.HTTPError as e:
        return False, e.code, f'HTTP {e.code}', 0
    except Exception as e:  # network errors, timeouts
        return False, None, f'{type(e).__name__}: {e}'[:200], 0


def content_hash(record):
    return hashlib.sha256(json.dumps(record, ensure_ascii=False, sort_keys=True).encode()).hexdigest()


class Report:
    def __init__(self):
        self.lines, self.problems = [], []

    def add(self, line):
        print(line)
        self.lines.append(line)

    def problem(self, line):
        print('PROBLEM: ' + line)
        self.problems.append(line)

    def write_summary(self, title):
        path = os.environ.get('GITHUB_STEP_SUMMARY')
        if not path:
            return
        with open(path, 'a', encoding='utf-8') as f:
            f.write(f'## {title}\n\n')
            for l in self.lines:
                f.write(f'- {l}\n')
            if self.problems:
                f.write('\n### Needs attention\n\n' + ''.join(f'- {p}\n' for p in self.problems))
            f.write('\n')


def finding(db, target, flag, severity, evidence):
    """Queue an item for a person to review (skips duplicates that are still open)."""
    open_ = db.select('review_findings', f'select=id&target_source_id=eq.{urllib.parse.quote(target)}&flag_type=eq.{flag}&is_resolved=eq.false')
    if open_:
        return False
    db.insert('review_findings', {'target_source_id': target, 'flag_type': flag, 'severity': severity, 'evidence': evidence[:2000]}, returning=False)
    return True


# --------------------------------------------------------------------------- catalog state

def clean_episode_title(rec):
    n = rec.get('episode')
    b = rec.get('bolum')
    p_ = rec.get('part')
    if n:
        label = f'Episode {n}' + (f' · Bolum {b}' if b else '') + (f' · Part {p_}' if p_ else '')
    else:
        raw = rec.get('display_label') or rec.get('heading') or rec.get('title') or ''
        label = re.sub(r'\s*[-–—:]?\s*\b(trailer|teaser|promo|fragman|ön\s*izleme)\b\s*', ' ', raw, flags=re.I).strip()
    return label


MIN_EPISODE_SECONDS = 600  # 10 minutes: anything under 10m is treated as a short trailer/preview cut


def load_catalog(db):
    dramas = {d['id']: d for d in db.select('dramas', 'select=id,source_id,display_name,video_records_count')}
    collections = db.select('collections', 'select=id,source_id,drama_id,collection_type,reported_seasons,status,label')
    groups = db.select('episode_groups', 'select=id,source_id,collection_id,reported_episode_number,bolum,part,order_key')
    variants = db.select('video_variants', 'select=id,source_id,collection_id,group_id,duration_seconds,display_label,thumbnail_url')
    return dramas, collections, groups, variants


# --------------------------------------------------------------------------- import one episode

def reviewed_source_date(value):
    """Retain an explicit publisher timestamp; ambiguous dates require review."""
    if not isinstance(value, str):
        return None
    try:
        parsed = dt.datetime.fromisoformat(value.replace('Z', '+00:00'))
        if parsed.tzinfo is None or parsed.year < 2000 or parsed > dt.datetime.now(dt.timezone.utc):
            return None
        return parsed.isoformat()
    except ValueError:
        return None


def upgrade_episode(db, rep, coll, drama, rec, variant_row, new_duration, ok, status, detail):
    """Upgrade an existing trailer/short video with the newly released full episode."""
    vid = variant_row['id']
    rid = rec['id']
    clean_label = clean_episode_title(rec)

    # 1. Update variant with full duration and clean display label
    db.update('video_variants', f"id=eq.{vid}", {
        'duration_seconds': new_duration,
        'display_label': clean_label,
        'thumbnail_url': (rec.get('thumbnail_urls') or [None])[0] or variant_row.get('thumbnail_url'),
        'updated_at': now(),
    })

    # 2. Update or insert new stream source
    streams = db.select('stream_sources', f"select=id,delivery_url,priority&variant_id=eq.{vid}")
    new_url = rec['stream_urls'][0]
    matched_stream = next((s for s in streams if s['delivery_url'] == new_url), None)

    if matched_stream:
        db.update('stream_sources', f"id=eq.{matched_stream['id']}", {
            'verification_state': 'reachable' if ok else 'unavailable',
            'last_verified_at': now(),
        })
        stream_id = matched_stream['id']
    else:
        for s in streams:
            db.update('stream_sources', f"id=eq.{s['id']}", {'priority': (s.get('priority') or 1) + 1})
        created_stream = db.insert('stream_sources', {
            'variant_id': vid,
            'delivery_url': new_url,
            'format': 'hls',
            'is_active': True,
            'priority': 1,
            'verification_state': 'reachable' if ok else 'unavailable',
            'last_verified_at': now(),
        })
        stream_id = created_stream[0]['id'] if created_stream else None

    if stream_id:
        db.insert('stream_checks', {
            'stream_source_id': stream_id,
            'variant_source_id': rid,
            'stream_url': new_url,
            'check_method': 'reachability_head',
            'status': 'passed' if ok else 'failed',
            'http_status': status,
            'content_type': 'application/x-mpegURL',
            'error_message': detail,
            'origin_device': 'catalog-sync-upgrade',
        }, returning=False)

    db.update('source_records', f"source_id=eq.{rid}", {
        'raw_json': rec,
        'content_hash': content_hash(rec),
    })

    if variant_row.get('group_id'):
        db.update('episode_groups', f"id=eq.{variant_row['group_id']}", {
            'label': clean_label,
            'updated_at': now(),
        })

    old_dur = variant_row.get('duration_seconds') or 0
    rep.add(f"Upgraded {coll['source_id']} {clean_label} ({rid}): replaced trailer ({old_dur}s) with full episode ({new_duration}s).")
    return True


def import_episode(db, rep, coll, drama, rec, groups_by_coll):
    """Insert one scraped episode record into a known collection. Returns True if imported."""
    rid = rec['id']
    if rec['title'].startswith('NiaziPlay - ') and not rec['stream_urls']:
        # Niazi lists the episode but its page is Niazi's "page not found": note it once.
        if finding(db, rid, 'sync_dead_episode', 'info', f"Listed on {coll['source_id']} but {rec['source_url']} is a 'page not found'"):
            rep.add(f"{rid}: listed by Niazi but its page does not exist; noted for review")
        return False
    if rec['episode'] is None:
        finding(db, rid, 'sync_unparsed_episode', 'warning', f"No episode number in heading: {rec['title']!r} ({rec['source_url']})")
        rep.problem(f"{rid}: no episode number in {rec['title']!r}; sent to review")
        return False
    if not rec['stream_urls']:
        finding(db, rid, 'sync_missing_stream', 'warning', f"No stream URL on {rec['source_url']}")
        rep.problem(f"{rid}: no stream link on Niazi yet; sent to review")
        return False
    if rec['version'] != coll['collection_type'] and coll['collection_type'] in ('subtitled', 'dubbed'):
        finding(db, rid, 'sync_version_mismatch', 'warning',
                f"{rec['title']!r} looks {rec['version']} but {coll['source_id']} is {coll['collection_type']}")
        rep.problem(f"{rid}: version {rec['version']} does not match {coll['source_id']}; sent to review")
        return False

    clean_label = clean_episode_title(rec)
    ok, status, detail, measured = check_stream(rec['stream_urls'][0])
    # Publisher durations can be placeholders. Only advertise a measured complete playlist.
    duration = measured or iso_seconds(rec.get('duration')) or None

    # Reuse an existing group with the same numbering (a dubbed and a subtitled cut of the same
    # episode share one group); otherwise create one using the scraper's stable id.
    existing = groups_by_coll.get(coll['id'], [])
    group = next((g for g in existing if g['source_id'] == rec['episode_group_id']), None)
    if not group:
        group = next((g for g in existing if g['reported_episode_number'] == rec['episode']
                      and (g['bolum'] or None) == (rec['bolum'] or None) and (g['part'] or None) == (rec['part'] or None)), None)
    if not group:
        row = {'source_id': rec['episode_group_id'], 'collection_id': coll['id'], 'label': clean_label,
               'reported_episode_number': rec['episode'], 'bolum': rec['bolum'], 'part': rec['part'],
               'order_key': rec['episode'], 'content_type': 'episode', 'status': 'published'}
        created = db.insert('episode_groups', row, on_conflict='source_id')
        group = created[0] if created else db.select('episode_groups', f"select=id,source_id&source_id=eq.{rec['episode_group_id']}")[0]
        group = {**row, **group}
        existing.append(group)
        groups_by_coll[coll['id']] = existing

    variant = db.insert('video_variants', {
        'source_id': rid, 'collection_id': coll['id'], 'group_id': group['id'], 'display_label': clean_label,
        'reported_season': rec['season'], 'languages': rec['languages'], 'version': rec['version'],
        'publication_state': 'published', 'duration_seconds': duration,
        'thumbnail_url': (rec['thumbnail_urls'] or [None])[0],
        'source_uploaded_at': reviewed_source_date(rec.get('upload_date')),
    }, on_conflict='source_id')
    if not variant:
        return False  # already present (another run got there first)
    stream = db.insert('stream_sources', {
        'variant_id': variant[0]['id'], 'delivery_url': rec['stream_urls'][0], 'format': 'hls', 'is_active': True,
        'priority': 1, 'verification_state': 'reachable' if ok else 'unavailable', 'last_verified_at': now(),
    })
    db.insert('stream_checks', {
        'stream_source_id': stream[0]['id'], 'variant_source_id': rid, 'stream_url': rec['stream_urls'][0],
        'check_method': 'reachability_head', 'status': 'passed' if ok else 'failed', 'http_status': status,
        'content_type': 'application/x-mpegURL', 'error_message': detail, 'origin_device': 'catalog-sync',
    }, returning=False)
    db.insert('source_records', {'source_id': rid, 'source_url': rec['source_url'], 'raw_json': rec,
                                 'content_hash': content_hash(rec)}, on_conflict='source_id', returning=False)
    if drama:
        db.update('dramas', f"id=eq.{drama['id']}", {'video_records_count': (drama.get('video_records_count') or 0) + 1, 'updated_at': now()})
        drama['video_records_count'] = (drama.get('video_records_count') or 0) + 1
    rep.add(f"Added {coll['source_id']} {rec['display_label']} ({'/'.join(rec['languages'])} {rec['version']}) as {rid}"
            + ('' if ok else f' - stream check failed: {detail}'))
    if not ok:
        rep.problem(f"{rid}: imported but its stream does not load yet ({detail})")
    return True


# --------------------------------------------------------------------------- modes

def run_episodes(db, rep, only=None):
    dramas, collections, groups, variants = load_catalog(db)
    # Known ids include source records that never became videos (e.g. unavailable records).
    have = {v['source_id'] for v in variants} | {r['source_id'] for r in db.select('source_records', 'select=source_id')}
    per_coll = {}
    for v in variants:
        per_coll[v['collection_id']] = per_coll.get(v['collection_id'], 0) + 1
    groups_by_coll = {}
    for g in groups:
        groups_by_coll.setdefault(g['collection_id'], []).append(g)

    # Track any variant under 10 minutes so we can check if full episode has dropped
    short_variants = {v['source_id']: v for v in variants if (v.get('duration_seconds') or 0) < MIN_EPISODE_SECONDS}

    added = upgraded = checked = 0
    for coll in sorted(collections, key=lambda c: int(c['source_id'].split('-')[1])):
        if coll['status'] in ('archived', 'hidden'):
            continue
        cat_id = coll['source_id'].split('-')[1]
        if only and cat_id not in only:
            continue
        try:
            page = niazi.catalog_page(cat_id)
        except Exception as e:
            rep.problem(f"{coll['source_id']}: could not load Niazi page ({e})")
            continue
        checked += 1
        time.sleep(POLITE_DELAY)
        if not page['listed_record_ids'] and per_coll.get(coll['id'], 0) > 0:
            rep.problem(f"{coll['source_id']}: Niazi page lists 0 episodes but we have {per_coll[coll['id']]} - page layout may have changed")
            continue

        drama = dramas.get(coll['drama_id'])

        # 1. Upgrade any pending trailer / short videos if Niazi now has the full episode (10+ min)
        upgrade_ids = [i for i in page['listed_record_ids'] if f'video-{i}' in short_variants]
        for rid in upgrade_ids:
            try:
                rec = niazi.scrape_episode(cat_id, rid, drama['display_name'] if drama else '', drama['source_id'] if drama else '', page)
            except Exception as e:
                continue
            time.sleep(POLITE_DELAY)
            if not rec.get('stream_urls'):
                continue
            ok, status, detail, measured = check_stream(rec['stream_urls'][0])
            new_dur = measured or iso_seconds(rec.get('duration')) or 0
            if ok and new_dur >= MIN_EPISODE_SECONDS:
                v_row = short_variants[f'video-{rid}']
                if upgrade_episode(db, rep, coll, drama, rec, v_row, new_dur, ok, status, detail):
                    upgraded += 1
                    del short_variants[f'video-{rid}']

        # 2. Ingest completely new episodes
        new_ids = [i for i in page['listed_record_ids'] if f'video-{i}' not in have]
        for rid in new_ids:
            try:
                rec = niazi.scrape_episode(cat_id, rid, drama['display_name'] if drama else '', drama['source_id'] if drama else '', page)
            except Exception as e:
                rep.problem(f'video-{rid} in {coll["source_id"]}: scrape failed ({e})')
                continue
            time.sleep(POLITE_DELAY)
            if import_episode(db, rep, coll, drama, rec, groups_by_coll):
                added += 1
                have.add(rec['id'])
                dur = iso_seconds(rec.get('duration')) or 0
                if dur < MIN_EPISODE_SECONDS:
                    short_variants[rec['id']] = {'source_id': rec['id'], 'duration_seconds': dur, 'collection_id': coll['id'], 'id': f'dry-video-{rid}'}
    msg = f'Checked {checked} Niazi collections; added {added} new episode videos.'
    if upgraded > 0:
        msg += f' Upgraded {upgraded} trailers to full episodes.'
    rep.add(msg)


def run_links(db, rep, limit):
    sources = db.select('stream_sources', 'select=id,variant_id,delivery_url,priority,is_active,verification_state,last_verified_at&is_active=eq.true')
    cutoff = dt.datetime.now(dt.timezone.utc) - dt.timedelta(hours=LINK_RECHECK_HOURS)
    def stamp(s):
        return dt.datetime.fromisoformat(s['last_verified_at']) if s['last_verified_at'] else dt.datetime.min.replace(tzinfo=dt.timezone.utc)
    due = sorted([s for s in sources if stamp(s) < cutoff], key=stamp)[:limit]
    if not due:
        rep.add('All active stream links were checked within the last %d hours.' % LINK_RECHECK_HOURS)
        return
    variants = {v['id']: v for v in db.select('video_variants', 'select=id,source_id,collection_id')}
    colls = {c['id']: c for c in db.select('collections', 'select=id,source_id')}
    by_variant = {}
    for s in sources:
        by_variant.setdefault(s['variant_id'], []).append(s)
    ok_n = fixed = broken = 0
    for s in due:
        v = variants.get(s['variant_id'])
        vid = v['source_id'] if v else s['variant_id']
        ok, status, detail, _ = check_stream(s['delivery_url'])
        db.insert('stream_checks', {'stream_source_id': s['id'], 'variant_source_id': vid, 'stream_url': s['delivery_url'],
                                    'check_method': 'reachability_head', 'status': 'passed' if ok else 'failed',
                                    'http_status': status, 'error_message': detail, 'origin_device': 'catalog-sync'}, returning=False)
        if ok:
            ok_n += 1
            db.update('stream_sources', f"id=eq.{s['id']}", {'verification_state': 'browser_tested' if s['verification_state'] == 'browser_tested' else 'reachable', 'last_verified_at': now()})
            continue
        # Failed. Ask Niazi for the episode's current link before calling it broken.
        db.update('stream_sources', f"id=eq.{s['id']}", {'verification_state': 'unavailable', 'last_verified_at': now()})
        new_url = None
        new_duration = None
        m = re.match(r'video-(\d+)$', vid or '')
        coll = colls.get(v['collection_id']) if v else None
        if m and coll:
            try:
                rec = niazi.scrape_episode(coll['source_id'].split('-')[1], m.group(1), '', '')
                time.sleep(POLITE_DELAY)
                cand = (rec.get('stream_urls') or [None])[0]
                known = {x['delivery_url'] for x in by_variant.get(s['variant_id'], [])}
                if cand and cand not in known:
                    candidate_ok, _, _, candidate_duration = check_stream(cand)
                    if candidate_ok:
                        new_url = cand
                        new_duration = candidate_duration or None
            except Exception as e:
                detail += f'; re-scrape failed ({e})'
        if new_url:
            db.update('video_variants', f"id=eq.{s['variant_id']}", {'duration_seconds': new_duration, 'updated_at': now()})
            # Keep every existing link (pushed down one place) and put the new one first.
            for other in by_variant.get(s['variant_id'], []):
                db.update('stream_sources', f"id=eq.{other['id']}", {'priority': (other['priority'] or 1) + 1})
            db.insert('stream_sources', {'variant_id': s['variant_id'], 'delivery_url': new_url, 'format': 'hls', 'is_active': True,
                                         'priority': 1, 'verification_state': 'reachable', 'last_verified_at': now()}, returning=False)
            fixed += 1
            rep.add(f'{vid}: link failed ({detail}); Niazi has a new link, added it as primary and kept the old one')
            continue
        others_ok = [o for o in by_variant.get(s['variant_id'], []) if o['id'] != s['id'] and o['verification_state'] in ('reachable', 'browser_tested')]
        if others_ok:
            # A working backup exists: stop offering the broken link first.
            db.update('stream_sources', f"id=eq.{s['id']}", {'priority': max(o['priority'] or 1 for o in by_variant[s['variant_id']]) + 1})
            rep.add(f'{vid}: link failed ({detail}); a working backup link takes over')
        else:
            broken += 1
            finding(db, vid, 'sync_broken_stream', 'critical', f"{s['delivery_url']} failed: {detail}. Niazi has no working replacement.")
            rep.problem(f'{vid}: no working link ({detail}); flagged for review')
    rep.add(f'Checked {len(due)} links: {ok_n} working, {fixed} repaired from Niazi, {broken} broken with no replacement.')


def run_discover(db, rep, probe_ahead=6):
    _, collections, _, _ = load_catalog(db)
    known = {int(c['source_id'].split('-')[1]) for c in collections}
    candidates = set()
    try:  # Niazi's own lists: home page and series sitemap
        _, home = niazi.fetch(niazi.BASE + '/')
        candidates |= {int(n) for n in re.findall(r'/drama/(\d+)', home)}
        _, sm = niazi.fetch(niazi.BASE + '/sitemaps/series_sitemap.xml')
        candidates |= {int(n) for n in re.findall(r'/drama/(\d+)', sm)}
    except Exception as e:
        rep.problem(f'Could not read Niazi listings ({e})')
    top = max(known | candidates)
    candidates |= set(range(top + 1, top + 1 + probe_ahead))  # the sitemap lags behind new seasons
    found = 0
    for n in sorted(candidates - known):
        try:
            page = niazi.catalog_page(n)
        except Exception as e:
            rep.problem(f'collection-{n}: could not load ({e})')
            continue
        time.sleep(POLITE_DELAY)
        if not page['exists']:
            continue
        found += 1
        finding(db, f'collection-{n}', 'sync_new_collection', 'info',
                f"Niazi collection {n} is not in the catalog: {page['catalog_heading']!r}, {len(page['listed_record_ids'])} episodes, "
                f"{page['season_url']}. Approve with: python3 scripts/catalog_sync.py approve {n} --drama-id <drama> --drama \"<name>\"")
        rep.add(f"New on Niazi: collection-{n} {page['catalog_heading']!r} ({len(page['listed_record_ids'])} episodes) - waiting for approval")
    if not found:
        rep.add('No new Niazi collections.')


def run_approve(db, rep, cat_id, drama_id, drama_name):
    """Import a reviewed collection: creates the drama if needed, the collection, and all episodes."""
    page = niazi.catalog_page(cat_id)
    if not page['exists']:
        raise SystemExit(f'collection {cat_id} does not exist on Niazi')
    existing = db.select('collections', f'select=id&source_id=eq.collection-{cat_id}')
    if existing:
        raise SystemExit(f'collection-{cat_id} is already in the catalog; the episodes job keeps it updated')
    drama = (db.select('dramas', f'select=id,source_id,display_name,video_records_count&source_id=eq.{drama_id}') or [None])[0]
    if not drama:
        drama = db.insert('dramas', {'source_id': drama_id, 'slug': drama_id, 'display_name': drama_name, 'status': 'published',
                                     'short_overview': f'Preserved catalog records for {drama_name}.', 'genres': ['Drama'],
                                     'languages': ['Urdu'], 'poster_url': page['poster_url'], 'backdrop_url': page['poster_url'],
                                     'video_records_count': 0})[0]
        drama['video_records_count'] = 0
        rep.add(f'Created drama {drama_id}')
    heading = page['catalog_heading']
    dubbed = bool(re.search('dubbed', heading, re.I))
    langs = [l for l in ('Urdu', 'English') if re.search(l, heading, re.I)] or ['Urdu']
    coll = db.insert('collections', {
        'source_id': f'collection-{cat_id}', 'drama_id': drama['id'], 'slug': f'collection-{cat_id}', 'label': heading,
        'collection_type': 'dubbed' if dubbed else 'subtitled', 'reported_seasons': page['reported_seasons'],
        'version_label': 'Urdu Dubbed Edition' if dubbed else ' & '.join(langs) + ' Subtitles', 'languages': langs,
        'status': 'published', 'sort_order': 0,
    })[0]
    rep.add(f"Created collection-{cat_id} ({heading})")
    groups_by_coll = {coll['id']: []}
    for rid in page['listed_record_ids']:
        rec = niazi.scrape_episode(cat_id, rid, drama.get('display_name') or drama_name, drama_id, page)
        time.sleep(POLITE_DELAY)
        import_episode(db, rep, coll, drama, rec, groups_by_coll)
    if not db.dry_run:
        for f in db.select('review_findings', f'select=id&target_source_id=eq.collection-{cat_id}&flag_type=eq.sync_new_collection&is_resolved=eq.false'):
            db.update('review_findings', f"id=eq.{f['id']}", {'is_resolved': True, 'resolution_notes': f'Imported as {drama_id}', 'reviewed_at': now()})


# --------------------------------------------------------------------------- main

def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('mode', choices=['episodes', 'links', 'discover', 'approve'])
    ap.add_argument('catalog_id', nargs='?')
    ap.add_argument('--drama-id')
    ap.add_argument('--drama')
    ap.add_argument('--only', help='comma-separated Niazi collection numbers (episodes mode)')
    ap.add_argument('--limit', type=int, default=700, help='links to check per run')
    ap.add_argument('--dry-run', action='store_true')
    a = ap.parse_args()

    env = load_env()
    url = env.get('SUPABASE_URL') or env.get('NEXT_PUBLIC_SUPABASE_URL')
    key = env.get('SUPABASE_SERVICE_ROLE_KEY') or env.get('SUPABASE_SECRET_KEY')
    if not key or key.startswith('replace'):
        if not a.dry_run:
            raise SystemExit('SUPABASE_SERVICE_ROLE_KEY is not set; use --dry-run to preview without writing.')
        # Preview with the public key: private tables read as empty, nothing is written.
        key = env.get('NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY') or env.get('NEXT_PUBLIC_SUPABASE_ANON_KEY')
    if not url or not key:
        raise SystemExit('SUPABASE_URL and a key are required.')
    db = Supabase(url, key, a.dry_run)
    if a.dry_run:
        db.select = _dry_select(db)
    rep = Report()
    title = f'Catalog sync: {a.mode}' + (' (dry run)' if a.dry_run else '')
    try:
        if a.mode == 'episodes':
            run_episodes(db, rep, set(a.only.split(',')) if a.only else None)
        elif a.mode == 'links':
            run_links(db, rep, a.limit)
        elif a.mode == 'discover':
            run_discover(db, rep)
        else:
            if not (a.catalog_id and a.drama_id and a.drama):
                raise SystemExit('approve needs: <niazi collection number> --drama-id <slug> --drama "<name>"')
            run_approve(db, rep, a.catalog_id, a.drama_id, a.drama)
    finally:
        if a.dry_run:
            planned = {}
            for op, table, _ in db.writes:
                planned[f'{op} {table}'] = planned.get(f'{op} {table}', 0) + 1
            rep.add('Dry run, nothing written. Planned writes: ' + (', '.join(f'{k} x{v}' for k, v in sorted(planned.items())) or 'none'))
        rep.write_summary(title)
    sys.exit(1 if rep.problems else 0)


def _dry_select(db):
    """With the public key, private tables (review_findings) are not readable; treat them as empty."""
    real = Supabase.select.__get__(db)
    def select(table, query):
        try:
            return real(table, query)
        except RuntimeError:
            if table in ('review_findings', 'source_records', 'stream_checks'):
                return []
            raise
    return select


if __name__ == '__main__':
    main()
