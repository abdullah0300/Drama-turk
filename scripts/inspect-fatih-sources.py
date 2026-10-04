"""Read current publisher pages for unresolved catalog records; never writes DB."""
import json,sys,concurrent.futures
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent))
import niazi_scraper as source
targets=[('76','3946'),('76','3949'),('76','3968'),('68','3207'),('82','4082'),('82','4083')]
season1='--season-1' in sys.argv
short_media='--short-media' in sys.argv
if short_media:targets=[('76','3975'),('72','3245')]
if season1:
    snapshot=json.loads(Path('docs/seo/mehmed-before-update.json').read_text(encoding='utf-8'))
    targets=[('62',v['source_id'].removeprefix('video-')) for g in snapshot['groups'] for v in g['variants'] if g['collection_id']==next(c['id'] for c in snapshot['collections'] if c['source_id']=='collection-62')]
def inspect(t):
    c,v=t
    try:
        r=source.scrape_episode(c,v,'Mehmed: Fetihler Sultani','mehmed-fetihler-sultani')
        return {k:r.get(k) for k in ['id','collection_id','title','heading','episode','bolum','upload_date','duration','stream_urls','source_url']}
    except Exception as e:return {'id':'video-'+v,'error':str(e)}
with concurrent.futures.ThreadPoolExecutor(max_workers=2) as pool: rows=list(pool.map(inspect,targets))
Path('.next/fatih-season1-source-dates.json' if season1 else '.next/fatih-short-source-investigation.json' if short_media else '.next/fatih-source-investigation.json').write_text(json.dumps(rows,indent=2),encoding='utf-8')
for r in rows:print(json.dumps({k:v for k,v in r.items() if k!='stream_urls'},ensure_ascii=True))
