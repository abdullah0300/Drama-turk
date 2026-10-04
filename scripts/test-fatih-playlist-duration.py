"""No network/DB writes: verify complete versus live playlist durations."""
import unittest
from unittest.mock import patch
import catalog_sync as sync

class Response:
    status=200
    headers={'Access-Control-Allow-Origin':'*'}
    def __init__(self,body):self.body=body
    def __enter__(self):return self
    def __exit__(self,*args):pass
    def read(self,*args):return self.body

class PlaylistDuration(unittest.TestCase):
    def test_replacement_stream_replaces_stale_runtime(self):
        class Database:
            def __init__(self): self.updates=[]
            def select(self,table,query):
                return {'stream_sources':[{'id':'s1','variant_id':'v1','delivery_url':'https://example.com/old.m3u8','priority':1,'is_active':True,'verification_state':'reachable','last_verified_at':None}],
                        'video_variants':[{'id':'v1','source_id':'video-10','collection_id':'c1'}],
                        'collections':[{'id':'c1','source_id':'collection-62'}]}[table]
            def insert(self,*args,**kwargs):return []
            def update(self,table,query,fields):self.updates.append((table,fields))
        class Report:
            def add(self,*args):pass
        for measured in [6255,0]:
            with self.subTest(measured=measured):
                db=Database()
                with patch.object(sync,'check_stream',side_effect=[(False,404,'missing',0),(True,200,'',measured)]),patch.object(sync.niazi,'scrape_episode',return_value={'stream_urls':['https://example.com/new.m3u8']}),patch.object(sync.time,'sleep'):
                    sync.run_links(db,Report(),1)
                changes=[fields for table,fields in db.updates if table=='video_variants']
                self.assertEqual(changes[0]['duration_seconds'],measured or None)

    def test_complete_and_sliding_playlists(self):
        base=b'#EXTM3U\n#EXTINF:1.6,\na.ts\n#EXTINF:1.6,\nb.ts\n'
        for suffix,expected in [(b'#EXT-X-ENDLIST\n',3),(b'',0)]:
            with self.subTest(complete=bool(suffix)),patch('urllib.request.urlopen',return_value=Response(base+suffix)):
                ok,status,detail,duration=sync.check_stream('https://example.com/test.m3u8')
                self.assertTrue(ok)
                self.assertEqual(duration,expected)

if __name__=='__main__':unittest.main()
