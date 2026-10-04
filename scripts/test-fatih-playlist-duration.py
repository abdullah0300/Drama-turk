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
    def test_complete_and_sliding_playlists(self):
        base=b'#EXTM3U\n#EXTINF:1.6,\na.ts\n#EXTINF:1.6,\nb.ts\n'
        for suffix,expected in [(b'#EXT-X-ENDLIST\n',3),(b'',0)]:
            with self.subTest(complete=bool(suffix)),patch('urllib.request.urlopen',return_value=Response(base+suffix)):
                ok,status,detail,duration=sync.check_stream('https://example.com/test.m3u8')
                self.assertTrue(ok)
                self.assertEqual(duration,expected)

if __name__=='__main__':unittest.main()
