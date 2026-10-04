"""Audit every public drama/season/episode in the production server's sitemap."""
import concurrent.futures, json, re, urllib.request, xml.etree.ElementTree as ET
from pathlib import Path
from html.parser import HTMLParser
BASE = 'http://localhost:3180'
ORIGIN = 'https://greatnation.webcraftio.com'
def get(path):
    with urllib.request.urlopen(BASE + path, timeout=120) as r:
        return r.read().decode(), r.status
class Page(HTMLParser):
    def __init__(self):
        super().__init__(); self.h1=0; self.canonical=None; self.description=None; self.scripts=[]; self.script=False; self.buffer=''
    def handle_starttag(self,tag,attrs):
        a=dict(attrs)
        if tag=='h1': self.h1+=1
        if tag=='link' and a.get('rel')=='canonical': self.canonical=a.get('href')
        if tag=='meta' and a.get('name')=='description': self.description=a.get('content')
        if tag=='script' and a.get('type')=='application/ld+json': self.script=True; self.buffer=''
    def handle_data(self,data):
        if self.script: self.buffer+=data
    def handle_endtag(self,tag):
        if tag=='script' and self.script: self.scripts.append(json.loads(self.buffer)); self.script=False
def video_objects(value):
    if isinstance(value, list): return [v for x in value for v in video_objects(x)]
    if isinstance(value, dict):
        return ([value] if value.get('@type')=='VideoObject' else []) + [v for x in value.values() if isinstance(x,(list,dict)) for v in video_objects(x)]
    return []
def check(url):
    html,status=get(url.removeprefix(ORIGIN)); p=Page(); p.feed(html)
    assert status==200 and p.h1==1 and p.description and p.canonical==url, url
    videos=[v for x in p.scripts for v in video_objects(x)]
    for v in videos: assert v.get('uploadDate') and v.get('thumbnailUrl') and v.get('contentUrl'),url
    return {'url':url,'videos':videos,'initial_html_preview': 'Official broadcast preview' in html}
if __name__=='__main__':
    xml,_=get('/sitemap.xml'); ns={'s':'http://www.sitemaps.org/schemas/sitemap/0.9'}
    urls=[x.text for x in ET.fromstring(xml).findall('s:url/s:loc',ns) if '/drama/' in x.text]
    with concurrent.futures.ThreadPoolExecutor(max_workers=6) as pool: rows=list(pool.map(check,urls))
    html,_=get('/about'); assert 'pilot release' not in html and '23 preview' not in html
    for slug in ['mehmed-fetihler-sultani','alparslan-buyuk-selcuklu','ask-ve-taht']: assert '/drama/'+slug in html
    xml,_=get('/video-sitemap.xml'); ns['v']='http://www.google.com/schemas/sitemap-video/1.1'
    entries=ET.fromstring(xml).findall('s:url',ns); lookup={r['url']:r for r in rows}
    for entry in entries:
        url=entry.find('s:loc',ns).text; date=entry.find('v:video/v:publication_date',ns)
        if lookup[url]['videos']: assert date is not None and date.text==lookup[url]['videos'][0]['uploadDate'],url
    result={'pages_checked':len(rows),'watch_pages':len(entries),'video_markup_pages':sum(bool(r['videos']) for r in rows),'undated_watch_pages':[r['url'] for r in rows if r['url'] in [e.find('s:loc',ns).text for e in entries] and not r['videos']]}
    Path('artifacts/seo-fixes/rendered-checks.json').write_text(json.dumps(result,indent=2)); print(json.dumps(result,indent=2))
