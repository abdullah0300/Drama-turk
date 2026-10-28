"""Regression coverage for source replacements while old videos still work."""
import unittest
from unittest.mock import patch
import catalog_sync as sync


OLD = 'https://example.com/old.m3u8'
NEW = 'https://example.com/new.m3u8'


class Database:
    def __init__(self, backup=False, old_duration=6200):
        self.sources = [dict(id='s1', variant_id='v1', delivery_url=OLD,
                             priority=1, is_active=True, verification_state='reachable', last_verified_at=None)]
        if backup:
            self.sources.append(dict(self.sources[0], id='s2', delivery_url=NEW, priority=2))
        self.inserts = []
        self.updates = []
        self.old_duration = old_duration

    def select(self, table, query):
        return {'stream_sources': self.sources,
                'video_variants': [dict(id='v1', source_id='video-10', collection_id='c1',
                                        duration_seconds=self.old_duration, display_label='Episode 10',
                                        created_at='2026-10-28T00:00:00Z')],
                'collections': [dict(id='c1', source_id='collection-82', drama_id='d1',
                                     collection_type='subtitled', reported_seasons=[4],
                                     status='published', label='Mehmed S4')],
                'dramas': [dict(id='d1', source_id='mehmed', display_name='Mehmed', video_records_count=10)],
                'episode_groups': [],
                'source_records': [dict(source_id='video-10')]}[table]

    def insert(self, table, values, **kwargs):
        self.inserts.append((table, values))
        if table == 'stream_sources':
            return [dict(id='s_new', **(values if isinstance(values, dict) else values[0]))]
        return []

    def update(self, table, query, values):
        self.updates.append((table, query, values))


class SourceRefresh(unittest.TestCase):
    def run_refresh(self, candidate=NEW, valid=True, backup=False):
        db = Database(backup)
        report = sync.Report()
        def check(url):
            return (valid or url == OLD, 200, '', 6241)
        with patch.object(sync, 'check_stream', side_effect=check), \
                patch.object(sync.niazi, 'scrape_episode', return_value={'stream_urls': [candidate]}) as scrape, \
                patch.object(sync.time, 'sleep'):
            sync.run_links(db, report, 700)
        self.assertEqual(scrape.call_count, 1)
        return db, report

    def test_working_old_source_is_replaced(self):
        db, report = self.run_refresh()
        streams = [v for table, v in db.inserts if table == 'stream_sources']
        self.assertEqual(streams[0]['delivery_url'], NEW)
        self.assertEqual(streams[0]['priority'], 1)
        self.assertIn(('stream_sources', 'id=eq.s1', {'priority': 2}), db.updates)
        self.assertFalse(report.problems)

    def test_unchanged_source_is_not_duplicated(self):
        db, _ = self.run_refresh(candidate=OLD)
        self.assertFalse(any(t == 'stream_sources' for t, _ in db.inserts))
        self.assertFalse(any('priority' in v for _, _, v in db.updates))

    def test_invalid_replacement_keeps_working_primary(self):
        db, report = self.run_refresh(valid=False)
        self.assertFalse(any(t == 'stream_sources' for t, _ in db.inserts))
        self.assertFalse(any('priority' in v for _, _, v in db.updates))
        self.assertTrue(report.problems)

    def test_existing_backup_is_promoted_without_duplicate(self):
        db, _ = self.run_refresh(backup=True)
        self.assertFalse(any(t == 'stream_sources' for t, _ in db.inserts))
        self.assertTrue(any(q == 'id=eq.s2' and v.get('priority') == 1 for _, q, v in db.updates))

    def test_scrape_failure_preserves_working_link_and_reports(self):
        db, report = Database(), sync.Report()
        with patch.object(sync, 'check_stream', return_value=(True, 200, '', 6241)), \
                patch.object(sync.niazi, 'scrape_episode', side_effect=RuntimeError('upstream down')):
            sync.run_links(db, report, 1)
        self.assertTrue(report.problems)
        self.assertFalse(any('priority' in v for _, _, v in db.updates))

    def test_run_episodes_refreshes_swapped_stream_for_recent_episode(self):
        db = Database(backup=False, old_duration=8265)
        report = sync.Report()
        catalog_mock = {'listed_record_ids': ['10']}
        rec_mock = {'id': 'video-10', 'stream_urls': [NEW], 'duration': 'PT2H14M51S', 'thumbnail_urls': []}
        with patch.object(sync.niazi, 'catalog_page', return_value=catalog_mock), \
                patch.object(sync.niazi, 'scrape_episode', return_value=rec_mock), \
                patch.object(sync, 'check_stream', return_value=(True, 200, '', 8091)), \
                patch.object(sync.time, 'sleep'):
            sync.run_episodes(db, report, only={'82'})

        # Verify variant duration was updated
        var_updates = [v for t, q, v in db.updates if t == 'video_variants' and q == 'id=eq.v1']
        self.assertTrue(var_updates)
        self.assertEqual(var_updates[0]['duration_seconds'], 8091)

        # Verify new stream was inserted at priority 1
        stream_inserts = [v for t, v in db.inserts if t == 'stream_sources']
        self.assertTrue(stream_inserts)
        self.assertEqual(stream_inserts[0]['delivery_url'], NEW)
        self.assertEqual(stream_inserts[0]['priority'], 1)

        # Verify old stream s1 was demoted to priority 2
        demotions = [v for t, q, v in db.updates if t == 'stream_sources' and q == 'id=eq.s1']
        self.assertTrue(demotions)
        self.assertEqual(demotions[0]['priority'], 2)
        self.assertFalse(report.problems)

    def test_run_episodes_skips_when_stream_unchanged(self):
        db = Database(backup=False, old_duration=8091)
        report = sync.Report()
        catalog_mock = {'listed_record_ids': ['10']}
        rec_mock = {'id': 'video-10', 'stream_urls': [OLD], 'duration': 'PT2H14M51S', 'thumbnail_urls': []}
        with patch.object(sync.niazi, 'catalog_page', return_value=catalog_mock), \
                patch.object(sync.niazi, 'scrape_episode', return_value=rec_mock), \
                patch.object(sync.time, 'sleep'):
            sync.run_episodes(db, report, only={'82'})

        self.assertFalse(any(t == 'stream_sources' for t, _ in db.inserts))
        self.assertFalse(any(t == 'video_variants' for t, _, _ in db.updates))

    def test_run_episodes_promotes_existing_backup_without_duplicate(self):
        db = Database(backup=True, old_duration=8265)
        report = sync.Report()
        catalog_mock = {'listed_record_ids': ['10']}
        rec_mock = {'id': 'video-10', 'stream_urls': [NEW], 'duration': 'PT2H14M51S', 'thumbnail_urls': []}
        with patch.object(sync.niazi, 'catalog_page', return_value=catalog_mock), \
                patch.object(sync.niazi, 'scrape_episode', return_value=rec_mock), \
                patch.object(sync, 'check_stream', return_value=(True, 200, '', 8091)), \
                patch.object(sync.time, 'sleep'):
            sync.run_episodes(db, report, only={'82'})

        # No duplicate insert
        self.assertFalse(any(t == 'stream_sources' for t, _ in db.inserts))
        # Backup s2 promoted to priority 1
        self.assertTrue(any(q == 'id=eq.s2' and v.get('priority') == 1 for t, q, v in db.updates if t == 'stream_sources'))
        # Old primary s1 demoted to priority 2
        self.assertTrue(any(q == 'id=eq.s1' and v.get('priority') == 2 for t, q, v in db.updates if t == 'stream_sources'))


if __name__ == '__main__':
    unittest.main()
