INSERT INTO public.stream_sources (id, variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1004' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-49.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1004'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-49.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-214' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-214'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-104' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-104'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-13' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-13.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-13'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-13.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3776' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3776'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2455' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-38.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2455'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-38.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2517' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-26.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2517'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-26.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2421' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2421'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2426' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Dukuz-Oguz/S1/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2426'),
        'https://cdn5.urduflix.pk/NiaziPlay/Dukuz-Oguz/S1/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2381' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2381'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2364' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2364'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2208' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2208'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1905' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1905'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2030' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2030'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1918' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1918'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1836' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-53.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1836'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-53.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1822' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-101.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1822'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-101.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1820' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-32.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1820'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-32.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1801' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-55.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1801'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-55.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1225' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-5-SD.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1225'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-5-SD.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1200' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1200'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1186' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1186'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1172' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-15-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1172'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-15-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1156' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1156'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1321' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1321'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1288' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1288'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2859' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-169.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2859'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-169.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1323' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-76.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1323'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-76.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1328' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-14.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1328'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-14.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-638' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-638'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-580' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-580'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-590' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-590'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-549' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-549'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-516' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-93.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-516'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-93.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-482' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-59.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-482'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-59.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-411' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-411'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-394' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-394'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-334' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-334'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-291' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-32.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-291'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-32.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-186' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-186'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-4093' || ':' || 'https://video.twimg.com/amplify_video/2102591572659372033/pl/ZLpZ35xwYd6GaHNd.m3u8?tag=29'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4093'),
        'https://video.twimg.com/amplify_video/2102591572659372033/pl/ZLpZ35xwYd6GaHNd.m3u8?tag=29',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3913' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3913'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3901' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-154.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3901'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-154.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3892' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-53.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3892'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-53.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3265' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3265'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3649' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3649'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3270' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-31.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3270'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-31.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3242' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-167.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3242'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-167.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3254' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-117.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3254'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-117.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3124' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3124'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2994' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-98.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2994'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-98.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2583' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2583'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2570' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-73.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2570'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-73.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2512' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-131.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2512'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-131.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2561' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-85.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2561'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-85.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1052' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1052'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1005' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-50.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1005'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-50.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-215' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-215'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-105' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-25.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-105'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-25.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-14' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-14.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-14'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-14.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3777' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3777'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2472' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-39.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2472'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-39.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2527' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-27.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2527'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-27.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2422' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2422'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2479' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Dukuz-Oguz/S1/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2479'),
        'https://cdn5.urduflix.pk/NiaziPlay/Dukuz-Oguz/S1/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2382' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2382'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2377' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2377'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2228' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2228'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1907' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1907'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2080' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2080'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1919' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1919'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1837' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-54.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1837'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-54.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1823' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-101.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1823'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-101.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1824' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-33.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1824'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-33.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1802' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-56.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1802'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-56.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1228' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1228'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1201' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1201'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1187' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1187'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1173' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-15-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1173'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-15-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1157' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1157'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1344' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1344'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1289' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1289'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-808' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-808'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1325' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-76.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1325'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-76.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1329' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-14.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1329'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-14.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-639' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-639'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-582' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-582'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-591' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-591'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-550' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-550'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-517' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-94.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-517'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-94.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-483' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-60.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-483'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-60.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-412' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-412'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-395' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-395'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-335' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-335'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-292' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-33.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-292'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-33.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-187' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-187'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3918' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-4.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3918'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-4.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3904' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-155.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3904'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-155.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3894' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-54.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3894'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-54.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3266' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3266'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3650' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/Episode-6.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3650'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/Episode-6.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3277' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-32.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3277'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-32.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3243' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-168.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3243'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-168.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3268' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-118.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3268'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-118.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3136' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3136'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3009' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-99.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3009'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-99.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2584' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2584'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2582' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-74.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2582'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-74.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2516' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-131.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2516'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-131.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2573' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-86.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2573'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-86.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1053' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1053'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1006' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-51.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1006'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-51.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-216' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-216'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-106' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-26.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-106'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-26.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-15' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-15'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3778' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3778'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2473' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-40.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2473'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-40.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2528' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-28.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2528'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-28.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2425' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2425'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2383' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2383'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2391' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2391'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2244' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2244'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1908' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1908'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2102' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2102'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1933' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1933'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1845' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-55.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1845'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-55.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1826' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-102.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1826'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-102.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1830' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-34.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1830'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-34.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1803' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-57.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1803'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-57.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1230' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1230'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1202' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1202'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1188' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1188'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1174' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1174'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1158' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1158'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1394' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1394'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1290' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1290'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-809' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-809'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1347' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-77.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1347'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-77.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1352' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1352'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-640' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-640'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-584' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-584'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-592' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-592'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-551' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-551'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-518' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-95.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-518'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-95.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-484' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-61.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-484'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-61.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-413' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-413'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-396' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-396'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-336' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-336'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-293' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-34.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-293'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-34.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-188' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-188'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3919' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-4.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3919'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-4.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3909' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-156.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3909'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-156.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3895' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-54.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3895'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-54.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3267' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3267'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3651' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3651'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3278' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-32.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3278'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-32.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3252' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-168.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3252'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-168.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3276' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-119.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3276'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-119.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3137' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3137'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3043' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-100.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3043'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-100.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2588' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2588'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2597' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-75.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2597'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-75.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2518' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-132.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2518'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-132.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2587' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-87.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2587'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-87.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1054' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1054'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1007' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-52.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1007'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-52.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-217' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-217'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-107' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-27.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-107'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-27.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-16' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-16'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3779' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3779'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2474' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-41.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2474'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-41.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2548' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-29.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2548'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-29.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2427' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2427'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2384' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2384'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2403' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2403'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2258' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2258'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1910' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1910'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2109' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2109'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1934' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1934'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1853' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-56.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1853'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-56.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1827' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-102.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1827'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-102.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1838' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-35.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1838'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-35.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1804' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-58.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1804'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-58.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1232' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1232'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1203' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1203'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1189' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1189'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1175' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1175'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1159' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1159'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1411' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1411'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1291' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1291'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-810' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-810'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1348' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-77.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1348'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-77.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1353' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1353'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-641' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-641'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-601' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-601'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-593' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-593'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-552' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-552'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-519' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-96.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-519'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-96.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-485' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-62.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-485'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-62.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-414' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/25.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-414'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/25.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-397' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-397'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-337' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-337'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-294' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-35.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-294'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-35.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-189' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-189'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3920' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-5.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3920'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-5.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3915' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-157.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3915'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-157.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3899' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-55.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3899'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-55.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3307' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3307'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3652' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3652'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3286' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-33.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3286'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-33.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3274' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-169.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3274'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-169.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3285' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-120.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3285'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-120.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3138' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3138'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3066' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-101.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3066'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-101.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2591' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2591'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2611' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-76.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2611'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-76.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2519' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-132.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2519'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-132.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2598' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-88.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2598'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-88.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1055' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1055'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1008' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-53.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1008'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-53.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-218' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-218'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-108' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-28.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-108'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-28.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-17' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-17'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3780' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3780'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2475' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-42.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2475'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-42.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2553' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-30.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2553'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-30.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2428' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2428'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2386' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2386'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2418' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2418'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2278' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2278'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1913' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1913'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2122' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2122'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1951' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1951'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1878' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-57.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1878'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-57.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1840' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-103.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1840'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-103.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1854' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-36.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1854'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-36.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1809' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-59.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1809'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-59.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1234' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1234'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1204' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1204'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1190' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1190'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1176' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1176'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1160' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-9-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1160'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-9-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1433' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1433'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1292' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1292'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-811' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-811'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1396' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-78.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1396'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-78.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1399' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1399'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-642' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-642'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-606' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-606'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-594' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-594'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      )
ON CONFLICT (variant_id, delivery_url) DO UPDATE SET
  is_active = EXCLUDED.is_active,
  priority = EXCLUDED.priority;