"""Read publisher pages and compare dates with preserved import evidence. No writes to DB."""
import concurrent.futures
import datetime as dt
import json
import os
import sys
sys.path.insert(0, os.path.dirname(__file__))
import niazi_scraper as niazi

folder = os.path.join(os.path.dirname(os.path.dirname(__file__)), 'artifacts', 'seo-fixes')
rows = json.load(open(os.path.join(folder, 'source-date-evidence.json'), encoding='utf-8'))

def check(row):
    result = dict(row)
    try:
        final_url, html = niazi.fetch(row['source_url'])
        video = niazi.json_ld(html, 'VideoObject')
        date = video.get('uploadDate')
        parsed = dt.datetime.fromisoformat(date.replace('Z', '+00:00')) if date else None
        if parsed and parsed.tzinfo is None:
            parsed = None
        stored = dt.datetime.fromisoformat(row['source_date'].replace('Z', '+00:00'))
        # This is the source rendition's upload date, never an original broadcast date.
        earliest = dt.datetime(2021 if row['drama_id'] == 'alparslan-buyuk-selcuklu' else 2026, 1, 1, tzinfo=dt.timezone.utc)
        valid = parsed is not None and earliest <= parsed <= dt.datetime.now(dt.timezone.utc)
        result.update(live_date=date, final_url=final_url, live_name=video.get('name'),
                      date_matches=parsed == stored, approved=bool(valid and parsed == stored),
                      checked_at=dt.datetime.now(dt.timezone.utc).isoformat())
    except Exception as error:
        result.update(approved=False, error=str(error))
    return result

results = []
with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:
    for index, result in enumerate(pool.map(check, rows)):
        results.append(result)
        if (index + 1) % 25 == 0:
            print(f'Checked {index + 1}/{len(rows)} source pages', flush=True)
json.dump(results, open(os.path.join(folder, 'source-date-review.json'), 'w', encoding='utf-8'), ensure_ascii=False, indent=2)
print(json.dumps({'checked': len(results), 'approved': sum(r['approved'] for r in results),
                  'withheld': [{ 'id': r['source_id'], 'date': r.get('live_date'), 'error': r.get('error') } for r in results if not r['approved']]}), flush=True)
