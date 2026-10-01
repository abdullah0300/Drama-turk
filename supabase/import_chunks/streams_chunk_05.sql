INSERT INTO public.stream_sources (id, variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1334' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1334'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1454' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-33.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1454'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-33.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1351' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-28.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1351'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-28.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1636' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1636'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1407' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-10.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1407'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-10.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-821' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-14.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-821'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-14.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1513' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-83.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1513'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-83.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1517' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1517'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-652' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-652'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-563' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-563'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-530' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-107.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-530'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-107.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-496' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-73.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-496'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-73.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-425' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/34.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-425'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/34.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-348' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-348'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-574' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-46.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-574'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-46.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-200' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-200'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3945' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-10.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3945'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-10.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3966' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-168.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3966'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-168.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3925' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-60.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3925'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-60.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3318' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3318'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3420' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-38.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3420'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-38.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3391' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-174.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3391'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-174.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3490' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-131.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3490'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-131.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3175' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3175'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3198' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-112.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3198'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-112.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2609' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2609'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2776' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-87.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2776'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-87.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2565' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-138.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2565'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-138.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2781' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-99.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2781'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-99.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1066' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1066'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1019' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-64.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1019'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-64.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-229' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-229'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-119' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-39.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-119'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-39.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-27' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-27.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-27'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-27.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3796' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-25.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3796'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-25.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2504' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-53.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2504'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-53.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2741' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-41-BS.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2741'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-41-BS.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2439' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2439'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2402' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2402'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2872' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S2/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2872'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S2/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1935' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1935'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2056' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-10.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2056'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-10.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2072' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-68.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2072'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-68.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1882' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-108.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1882'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-108.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1927' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-41.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1927'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-41.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1862' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-70.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1862'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-70.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1335' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1335'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1479' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-34.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1479'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-34.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1358' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-29.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1358'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-29.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1653' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1653'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1408' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-10.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1408'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-10.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-822' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-822'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1514' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-83.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1514'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-83.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1518' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1518'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-653' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-653'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-564' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-564'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-531' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-108.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-531'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-108.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-497' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-74.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-497'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-74.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-426' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/35.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-426'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/35.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-349' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-349'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-575' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-47.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-575'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-47.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-201' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-201'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3953' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-11.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3953'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-11.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3973' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-169.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3973'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-169.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3929' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-61.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3929'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-61.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3319' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3319'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3426' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-39.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3426'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-39.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3416' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-175.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3416'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-175.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3497' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-132.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3497'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-132.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3200' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3200'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3199' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-113.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3199'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-113.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2614' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2614'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2794' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-88.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2794'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-88.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2566' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-138.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2566'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-138.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2797' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-100.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2797'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-100.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1067' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1067'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1020' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-65.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1020'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-65.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-230' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-230'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-120' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-40.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-120'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-40.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-28' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-28.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-28'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-28.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3797' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-26.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3797'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-26.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2505' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-54.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2505'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-54.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2779' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-42.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2779'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-42.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2440' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2440'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2406' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2406'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1939' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1939'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2070' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-11.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2070'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-11.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2096' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-69.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2096'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-69.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1887' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-109.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1887'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-109.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1936' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-42.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1936'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-42.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1866' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-71.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1866'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-71.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1339' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1339'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1502' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-35.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1502'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-35.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1363' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-30.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1363'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-30.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1669' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1669'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1428' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-11.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1428'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-11.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-823' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-823'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1535' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-84.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1535'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-84.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1539' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1539'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-654' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-654'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-565' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-565'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-532' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-109.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-532'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-109.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-498' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-75.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-498'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-75.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-427' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/36-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-427'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/36-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-350' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-350'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-577' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-48.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-577'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-48.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-202' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-202'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3954' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-11.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3954'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-11.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3980' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-170.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3980'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-170.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3930' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-61.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3930'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-61.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3320' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3320'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3427' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-39.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3427'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-39.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3417' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-175.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3417'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-175.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3504' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-133.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3504'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-133.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3202' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3202'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3203' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-114.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3203'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-114.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2615' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2615'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2814' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-89.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2814'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-89.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2577' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-139.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2577'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-139.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2813' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-101.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2813'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-101.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1068' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1068'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1021' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-66.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1021'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-66.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-231' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-231'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-121' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-41.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-121'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-41.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-29' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-29.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-29'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-29.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3798' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-27.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3798'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-27.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2506' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-55.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2506'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-55.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2792' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-43.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2792'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-43.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2442' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2442'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2407' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2407'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1941' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1941'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2089' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-11.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2089'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-11.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2123' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-70.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2123'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-70.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1890' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-109.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1890'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-109.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1942' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-42.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1942'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-42.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1877' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-72.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1877'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-72.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1346' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1346'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1524' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-36.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1524'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-36.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1379' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-31.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1379'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-31.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1695' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1695'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1429' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-11.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1429'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-11.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-824' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-824'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1536' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-84.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1536'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-84.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1540' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1540'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-655' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-655'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-566' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-566'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-533' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-110.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-533'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-110.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-499' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-76.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-499'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-76.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-428' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/36-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-428'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/36-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-351' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-351'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-579' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-49.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-579'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-49.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-203' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-203'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3958' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-12.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3958'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-12.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3985' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-171.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3985'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-171.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3934' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-62.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3934'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-62.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3321' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3321'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3433' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-40.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3433'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-40.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3423' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-176.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3423'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-176.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3553' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-134.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3553'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-134.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3205' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3205'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3204' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-115.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3204'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-115.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2616' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2616'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2830' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-90.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2830'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-90.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2578' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-139.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2578'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-139.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2828' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-102.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2828'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-102.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1069' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1069'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1022' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-67.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1022'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-67.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-232' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-232'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-122' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-42.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-122'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-42.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3799' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-28.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3799'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-28.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2508' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-56.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2508'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-56.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2810' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-44.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2810'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-44.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2410' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2410'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1944' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1944'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2116' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-12.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2116'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-12.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2147' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-71.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2147'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-71.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1893' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-110.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1893'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-110.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1958' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-43.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1958'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-43.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1888' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-73.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1888'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-73.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1349' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1349'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1546' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-37.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1546'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-37.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1385' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-32.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1385'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-32.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1712' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1712'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1455' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-12.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1455'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-12.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-825' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-825'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1554' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-85.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1554'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-85.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1557' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1557'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-656' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-656'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-534' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-111.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-534'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-111.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-500' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-77.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-500'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-77.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-429' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/37.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-429'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/37.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-352' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-352'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-581' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-50.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-581'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-50.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-204' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-204'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3959' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-12.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3959'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-12.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3991' || ':' || 'https://cdn.videas.fr/v-medias/s5/hlsv1/43/e3/43e3f3fb-d25f-4934-a06a-0ac46dc2e1e7/playlist.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3991'),
        'https://cdn.videas.fr/v-medias/s5/hlsv1/43/e3/43e3f3fb-d25f-4934-a06a-0ac46dc2e1e7/playlist.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3935' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-62.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3935'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-62.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3322' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3322'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3434' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-40.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3434'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-40.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3424' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-176.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3424'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-176.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3560' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-135.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3560'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-135.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3211' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3211'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3206' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-116.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3206'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-116.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2617' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2617'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2848' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-91.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2848'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-91.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2589' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-140.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2589'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-140.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2862' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-103.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2862'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-103.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1070' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1070'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1023' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-68.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1023'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-68.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-233' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-233'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-123' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-43.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-123'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-43.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-30' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-30.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-30'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-30.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3800' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-29.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3800'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-29.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2509' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-57.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2509'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-57.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2827' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-45-RP.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2827'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-45-RP.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2411' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2411'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1945' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1945'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2117' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-12.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2117'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-12.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2171' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-72.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2171'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-72.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1900' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-110.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1900'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-110.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1959' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-43.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1959'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-43.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1894' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-74.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1894'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-74.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1354' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1354'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1564' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-38.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1564'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-38.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1449' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-33.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1449'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-33.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1729' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1729'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1456' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-12.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1456'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-12.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-826' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-826'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1555' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-85.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1555'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-85.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1558' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1558'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-668' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-668'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-535' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-112.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-535'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-112.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-501' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-78.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-501'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-78.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-430' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/38.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-430'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/38.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-353' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-353'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-583' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-51.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-583'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-51.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-205' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-205'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3963' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-13.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3963'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-13.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3994' || ':' || 'https://video.twimg.com/amplify_video/2033593145192058880/pl/cQl1KHZ9X5q8WnND.m3u8?tag=21'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3994'),
        'https://video.twimg.com/amplify_video/2033593145192058880/pl/cQl1KHZ9X5q8WnND.m3u8?tag=21',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3939' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-63.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3939'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-63.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3323' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-25.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3323'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-25.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3474' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-41_540.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3474'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-41_540.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3430' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-177.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3430'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-177.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3567' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-136.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3567'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-136.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3215' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-25.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3215'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-25.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3209' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-117.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3209'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-117.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2619' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-25.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2619'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-25.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2853' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-92.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2853'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-92.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2590' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-140.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2590'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-140.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      )
ON CONFLICT (variant_id, delivery_url) DO UPDATE SET
  is_active = EXCLUDED.is_active,
  priority = EXCLUDED.priority;