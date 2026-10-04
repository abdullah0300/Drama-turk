import json, urllib.request, urllib.error, xml.etree.ElementTree as ET
from pathlib import Path
import runpy
parser=runpy.run_path(str(Path(__file__).with_name('check-seo-fixes-rendered.py')))
Page, video_objects=parser['Page'],parser['video_objects']

BASE='http://localhost:3180'
ORIGIN='https://greatnation.webcraftio.com'
def fetch(path):
    with urllib.request.urlopen(BASE+path,timeout=120) as r: return r.read().decode()
checks=[]
paths=['/drama/mehmed-fetihler-sultani/season-4/episode-4','/drama/ask-ve-taht/season-1/episode-5']
sitemap=fetch('/sitemap.xml'); video_sitemap=fetch('/video-sitemap.xml')
for path in paths:
    html=fetch(path); p=Page(); p.feed(html)
    assert p.h1==1 and p.description and p.canonical==ORIGIN+path,path
    assert 'index, follow' in html and 'release-clock' in html,path
    assert 'Urdu subtitles' in html and 'English subtitles' in html and 'Official schedule' in html,path
    assert not [v for s in p.scripts for v in video_objects(s)],'Upcoming pages must not claim playable VideoObject'
    assert '<video' not in html and ORIGIN+path in sitemap and ORIGIN+path not in video_sitemap,path
    assert 'Checking subtitle availability' in html,path
    season=path.rsplit('/',1)[0]; assert path in fetch(season),season
    checks.append({'path':path,'status':200,'canonical':p.canonical,'h1_count':p.h1,'indexable':True,'in_regular_sitemap':True,'in_video_sitemap':False})
for path in ['/drama/ask-ve-taht/season-1/episode-6','/drama/mehmed-fetihler-sultani/season-4/episode-5']:
    try:
        html=fetch(path)
        # Next may stream a notFound boundary with HTTP 200, but adds noindex.
        assert 'release-card' not in html and 'noindex' in html,'Speculative page was published: '+path
    except urllib.error.HTTPError as e:assert e.code==404
for path in ['/drama/mehmed-fetihler-sultani/season-4/episode-3','/drama/ask-ve-taht/season-1/episode-4']:
    assert '<video' in fetch(path),'Published watch page regressed'
Path('artifacts/seo-fixes/upcoming-rendered-checks.json').write_text(json.dumps(checks,indent=2));print(json.dumps(checks,indent=2))
