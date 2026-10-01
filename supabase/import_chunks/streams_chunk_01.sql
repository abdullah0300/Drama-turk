INSERT INTO public.stream_sources (id, variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-4082' || ':' || 'https://video.twimg.com/amplify_video/2101303582104473600/pl/b7KUCKht8bhxlbBZ.m3u8?tag=29'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4082'),
        'https://video.twimg.com/amplify_video/2101303582104473600/pl/b7KUCKht8bhxlbBZ.m3u8?tag=29',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-4103' || ':' || 'https://video.twimg.com/amplify_video/2104643152019648512/pl/Md8SP4qHO_gJc64V.m3u8?tag=29'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4103'),
        'https://video.twimg.com/amplify_video/2104643152019648512/pl/Md8SP4qHO_gJc64V.m3u8?tag=29',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-4101' || ':' || 'https://video.twimg.com/amplify_video/2104766584031940608/pl/DlP7a_rIm6kfSTQq.m3u8?tag=29'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4101'),
        'https://video.twimg.com/amplify_video/2104766584031940608/pl/DlP7a_rIm6kfSTQq.m3u8?tag=29',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-4100' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/cs.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4100'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/cs.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-4091' || ':' || 'https://video.twimg.com/amplify_video/2101303029819445248/pl/DXrB20oi6U-Fl569.m3u8?tag=29'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4091'),
        'https://video.twimg.com/amplify_video/2101303029819445248/pl/DXrB20oi6U-Fl569.m3u8?tag=29',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-4090' || ':' || 'https://video.twimg.com/amplify_video/2101999393721233408/pl/cR8cdbxt2zOoQOqN.m3u8?tag=29'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4090'),
        'https://video.twimg.com/amplify_video/2101999393721233408/pl/cR8cdbxt2zOoQOqN.m3u8?tag=29',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3896' || ':' || 'https://cdn.videas.fr/v-medias/s5/hlsv1/a0/be/a0be51b3-1203-46bd-86b2-166b3e6d76e6/playlist.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3896'),
        'https://cdn.videas.fr/v-medias/s5/hlsv1/a0/be/a0be51b3-1203-46bd-86b2-166b3e6d76e6/playlist.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3886' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-149.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3886'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-149.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3884' || ':' || 'https://cdn.videas.fr/v-medias/s5/hlsv1/3e/fa/3efadc5b-d480-401d-aea6-89f5565e69a6/playlist.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3884'),
        'https://cdn.videas.fr/v-medias/s5/hlsv1/3e/fa/3efadc5b-d480-401d-aea6-89f5565e69a6/playlist.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3253' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3253'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3245' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/t1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3245'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/t1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3240' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-29.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3240'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-29.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3219' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-165.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3219'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-165.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3208' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-112.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3208'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-112.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3051' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3051'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2902' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-93.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2902'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-93.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2555' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2555'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2536' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-68.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2536'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-68.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2400' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/s5-scenes.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2400'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/s5-scenes.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2465' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-80.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2465'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-80.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1047' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1047'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1000' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-45.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1000'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-45.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-210' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-210'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-100' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-100'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3772' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3772'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2450' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-34.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2450'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-34.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2424' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2424'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2415' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2415'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2394' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Dukuz-Oguz/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2394'),
        'https://cdn5.urduflix.pk/NiaziPlay/Dukuz-Oguz/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2366' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2366'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2338' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2338'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2099' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2099'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1892' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1892'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1867' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1867'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1861' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1861'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1832' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-49.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1832'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-49.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1812' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-99.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1812'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-99.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1808' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-28.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1808'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-28.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1797' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-51.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1797'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-51.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1215' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1215'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1196' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1196'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1182' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1182'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1168' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-13-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1168'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-13-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1152' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1152'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1313' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1313'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1284' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1284'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1138' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-165.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1138'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-165.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1216' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-74.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1216'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-74.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1220' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-12.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1220'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-12.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-632' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-632'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-568' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-568'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-567' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-567'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-545' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-545'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-543' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S5/Episode-120.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-543'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S5/Episode-120.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-512' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-89.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-512'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-89.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-478' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-55.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-478'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-55.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-407' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-407'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-390' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-390'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-330' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-330'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-287' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-28.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-287'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-28.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-182' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-182'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-4083' || ':' || 'https://video.twimg.com/amplify_video/2100040096795770880/pl/A3ZDT-3np43tVlJw.m3u8?tag=29'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4083'),
        'https://video.twimg.com/amplify_video/2100040096795770880/pl/A3ZDT-3np43tVlJw.m3u8?tag=29',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-4102' || ':' || 'https://video.twimg.com/amplify_video/2104767334070071296/pl/2Hh4uEYyLhnUKrGG.m3u8?tag=29'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4102'),
        'https://video.twimg.com/amplify_video/2104767334070071296/pl/2Hh4uEYyLhnUKrGG.m3u8?tag=29',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-4097' || ':' || 'https://video.twimg.com/amplify_video/2103820939397877760/pl/_e2lGKU3WEK8Oj_Q.m3u8?tag=29'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4097'),
        'https://video.twimg.com/amplify_video/2103820939397877760/pl/_e2lGKU3WEK8Oj_Q.m3u8?tag=29',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-4099' || ':' || 'https://video.twimg.com/amplify_video/2104480496184897536/pl/rlHL8kiGdSJQiM8l.m3u8?tag=29'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4099'),
        'https://video.twimg.com/amplify_video/2104480496184897536/pl/rlHL8kiGdSJQiM8l.m3u8?tag=29',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3897' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3897'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3887' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-150.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3887'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-150.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3885' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-51.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3885'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-51.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3261' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3261'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3645' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3645'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3251' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-29.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3251'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-29.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3224' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-165.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3224'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-165.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3225' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-113.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3225'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-113.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3053' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3053'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2923' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-94.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2923'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-94.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2575' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2575'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2540' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-69.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2540'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-69.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2404' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/s5-scenes.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2404'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/s5-scenes.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2539' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-81.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2539'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-81.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1048' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1048'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1001' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-46.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1001'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-46.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-211' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-211'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-101' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-101'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-10' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-10.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-10'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-10.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3773' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3773'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2451' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-35.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2451'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-35.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2443' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2443'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2416' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2416'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2399' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Dukuz-Oguz/S1/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2399'),
        'https://cdn5.urduflix.pk/NiaziPlay/Dukuz-Oguz/S1/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2372' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2372'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2339' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2339'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2126' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2126'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1898' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1898'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1969' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1969'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1865' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1865'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1833' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-50.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1833'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-50.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1816' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-99.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1816'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-99.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1810' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-29.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1810'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-29.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1798' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-52.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1798'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-52.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1219' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1219'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1197' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1197'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1183' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1183'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1169' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-13-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1169'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-13-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1153' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1153'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1315' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1315'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1285' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1285'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1206' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-166.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1206'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-166.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1217' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-74.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1217'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-74.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1221' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-12.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1221'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-12.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-635' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-635'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-570' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-570'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-587' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-587'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-546' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-546'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-544' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S5/Episode-121.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-544'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S5/Episode-121.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-513' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-90.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-513'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-90.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-479' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-56.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-479'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-56.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-408' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-408'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-391' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-391'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-331' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-331'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-288' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-29.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-288'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-29.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-183' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-183'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-4092' || ':' || 'https://video.twimg.com/amplify_video/2102608160691245056/pl/ogM4fO6CAQOEkzGO.m3u8?tag=29'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-4092'),
        'https://video.twimg.com/amplify_video/2102608160691245056/pl/ogM4fO6CAQOEkzGO.m3u8?tag=29',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3907' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-2.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3907'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-2.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3890' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-151.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3890'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-151.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3888' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-52.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3888'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-52.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3262' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3262'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3646' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3646'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3257' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-30.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3257'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-30.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3227' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-166.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3227'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-166.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3230' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-114.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3230'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-114.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3058' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3058'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2935' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-95.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2935'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-95.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2576' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2576'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2552' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-70.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2552'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-70.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2405' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/kurulus-s5-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2405'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/kurulus-s5-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2541' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-82.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2541'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-82.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1049' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1049'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1002' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-47.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1002'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-47.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-212' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-212'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-102' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-102'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-11' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-11.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-11'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-11.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3774' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3774'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2452' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-36.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2452'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-36.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2453' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2453'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2419' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2419'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2409' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Dukuz-Oguz/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2409'),
        'https://cdn5.urduflix.pk/NiaziPlay/Dukuz-Oguz/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2378' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2378'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2348' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2348'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2150' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2150'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1899' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1899'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1985' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1985'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1904' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1904'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1834' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-51.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1834'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-51.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1817' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-100.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1817'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-100.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1813' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-30.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1813'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-30.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1799' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-53.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1799'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-53.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1222' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1222'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1198' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1198'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1184' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1184'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1170' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-14-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1170'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-14-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1154' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1154'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1317' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1317'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1286' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1286'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1208' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-167.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1208'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-167.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1218' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-75.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1218'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-75.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1235' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-13.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1235'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-13.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-636' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-636'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-576' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-576'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-588' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-588'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-547' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-547'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-514' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-91.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-514'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-91.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-480' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-57.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-480'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-57.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-409' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-409'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-392' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-392'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-332' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-332'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-289' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-30.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-289'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-30.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-184' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-184'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-40922' || ':' || 'https://video.twimg.com/amplify_video/2105112576166117376/pl/RbSEkCge1qxCv3d6.m3u8?tag=29'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-40922'),
        'https://video.twimg.com/amplify_video/2105112576166117376/pl/RbSEkCge1qxCv3d6.m3u8?tag=29',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3908' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-2.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3908'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-2.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3893' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-152.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3893'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-152.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3889' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-52.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3889'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-52.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3263' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3263'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3647' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/Episode-3.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3647'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/Episode-3.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3258' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-30.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3258'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-30.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3234' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-166.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3234'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-166.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3237' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-115.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3237'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-115.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3073' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3073'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2960' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-96.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2960'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-96.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2579' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2579'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2557' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-71.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2557'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-71.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2408' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/s5_p4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2408'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/s5_p4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2549' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-83.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2549'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-83.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1050' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1050'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1003' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-48.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1003'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-48.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-213' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-213'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-103' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-103'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-12' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-12.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-12'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-12.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3775' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3775'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2454' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-37.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2454'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-37.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2507' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-25.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2507'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-25.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2420' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2420'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2423' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Dukuz-Oguz/S1/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2423'),
        'https://cdn5.urduflix.pk/NiaziPlay/Dukuz-Oguz/S1/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2380' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2380'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2359' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2359'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S1/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2190' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2190'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1903' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1903'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2016' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2016'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1906' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1906'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1835' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-52.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1835'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-52.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1818' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-100.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1818'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-100.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1815' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-31.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1815'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-31.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1800' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-54.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1800'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-54.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1223' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1223'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1199' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1199'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1185' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1185'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1171' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-14-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1171'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-14-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1155' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1155'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1319' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1319'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1287' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1287'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1211' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-168.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1211'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-168.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1233' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-75.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1233'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-75.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1236' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-13.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1236'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-13.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-637' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-637'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-578' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-578'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S1/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-589' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-589'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-548' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-548'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-515' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-92.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-515'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-92.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-481' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-58.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-481'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-58.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-410' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-410'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-393' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-393'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-333' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-333'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-290' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-31.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-290'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-31.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-185' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-185'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-40923' || ':' || 'https://video.twimg.com/amplify_video/2105064577113243648/pl/JkoWiZ1fwheNtrU_.m3u8?tag=29'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-40923'),
        'https://video.twimg.com/amplify_video/2105064577113243648/pl/JkoWiZ1fwheNtrU_.m3u8?tag=29',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3912' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-3.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3912'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-3.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3898' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-153.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3898'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-153.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3891' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-53.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3891'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-53.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3264' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3264'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3648' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/Episode-4.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3648'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu-Dubbed/S1/Episode-4.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3269' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-31.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3269'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-31.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3239' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-167.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3239'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-167.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3246' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-116.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3246'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-116.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3120' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3120'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2977' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-97.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2977'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-97.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2580' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2580'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2562' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-72.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2562'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-72.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2511' || ':' || 'https://sp.rmbl.ws/s8/2/r/E/h/9/rEh9m.caa.mp4?u=0&b=0?m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2511'),
        'https://sp.rmbl.ws/s8/2/r/E/h/9/rEh9m.caa.mp4?u=0&b=0?m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2556' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-84.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2556'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-84.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1051' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-5.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1051'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-5.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      )
ON CONFLICT (variant_id, delivery_url) DO UPDATE SET
  is_active = EXCLUDED.is_active,
  priority = EXCLUDED.priority;