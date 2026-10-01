INSERT INTO public.stream_sources (id, variant_id, delivery_url, format, is_active, priority, verification_state)
VALUES
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1885' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-38.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1885'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-38.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1829' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-64.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1829'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-64.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1298' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-14.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1298'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-14.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1342' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-28.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1342'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-28.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1195' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-14.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1195'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S1/Episode-14.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1181' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1181'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1165' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-11-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1165'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-11-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1552' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-14.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1552'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-14.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1297' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-7.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1297'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-7.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-816' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-816'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1438' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-80-480.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1438'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-80-480.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1443' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1443'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-647' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-14.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-647'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-14.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-599' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-14.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-599'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-14.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-558' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-14.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-558'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-14.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-525' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-102.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-525'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-102.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-491' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-68.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-491'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-68.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-420' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/30.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-420'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/30.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-403' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-14.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-403'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-14.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-343' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/14.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-343'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/14.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-300' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-41.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-300'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-41.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-195' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-14.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-195'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-14.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3936' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-8.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3936'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-8.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3943' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-163.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3943'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-163.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3910' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-58.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3910'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-58.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3313' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3313'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3386' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-36.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3386'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-36.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3298' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-172.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3298'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-172.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3425' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-126.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3425'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-126.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3148' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3148'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3164' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-107.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3164'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-107.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2600' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2600'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2707' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-82.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2707'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-82.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2545' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-135.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2545'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-135.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2700' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-94.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2700'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-94.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1061' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1061'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1014' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-59.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1014'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-59.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-224' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-224'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-114' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-34.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-114'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-34.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-22' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-22.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-22'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-22.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3787' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-16-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3787'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-16-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2499' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-48.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2499'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-48.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2612' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-36.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2612'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-36.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2434' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2434'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2395' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2395'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2867' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S2/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2867'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S2/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2360' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2360'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1925' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1925'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2256' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2256'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2035' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2035'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1972' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-63.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1972'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-63.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1870' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-106.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1870'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-106.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1896' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-39.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1896'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-39.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1831' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-65.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1831'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-65.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1322' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1322'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1357' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-29.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1357'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-29.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1207' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1207'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1166' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-12-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1166'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-12-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1571' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1571'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1336' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1336'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-817' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-10.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-817'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-10.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1463' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-81.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1463'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-81.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1469' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1469'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-648' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-648'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-600' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-600'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S2/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-559' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-559'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-526' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-103.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-526'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-103.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-492' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-69.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-492'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-69.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-421' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/31.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-421'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/31.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-404' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-404'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-344' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-344'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-301' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-42.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-301'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-42.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-196' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-15.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-196'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-15.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3937' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-8.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3937'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/English/S1/Episode-8.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3947' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-164.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3947'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-164.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3911' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-58.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3911'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-58.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3314' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3314'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3387' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-36.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3387'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-36.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3299' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-171.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3299'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-171.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3432' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-127.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3432'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-127.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3155' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3155'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3171' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-108.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3171'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-108.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2603' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2603'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2714' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-83.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2714'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-83.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2546' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-136.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2546'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-136.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2713' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-95.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2713'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-95.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1062' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1062'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1015' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-60.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1015'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-60.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-225' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-225'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-115' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-35.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-115'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-35.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-23' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-23'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3789' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-18-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3789'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-18-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2500' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-49.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2500'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-49.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2628' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-37.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2628'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-37.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2435' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2435'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2396' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2396'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2868' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S2/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2868'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S2/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2369' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2369'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1928' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1928'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2282' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2282'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2037' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2037'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1987' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-64.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1987'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-64.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1871' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-106.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1871'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-106.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1897' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-39.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1897'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-39.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1842' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-66.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1842'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-66.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1326' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1326'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1386' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-30.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1386'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-30.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1224' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-25.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1224'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-25.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1167' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-12-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1167'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S1/Episode-12-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1587' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1587'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1338' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-8.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1338'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-8.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-818' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-11.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-818'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-11.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1466' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-81.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1466'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-81.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1470' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1470'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-649' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-649'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-560' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-560'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-527' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-104.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-527'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-104.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-493' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-70.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-493'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-70.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-422' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/32.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-422'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/32.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-405' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-405'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-345' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-345'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-302' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-43.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-302'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-43.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-197' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-16.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-197'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-16.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3941' || ':' || 'https://cdn.videas.fr/v-medias/s5/hlsv1/19/8f/198f7156-ce4f-41cd-99f7-451e72c34a3b/playlist.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3941'),
        'https://cdn.videas.fr/v-medias/s5/hlsv1/19/8f/198f7156-ce4f-41cd-99f7-451e72c34a3b/playlist.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3950' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-165.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3950'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-165.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3916' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-59.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3916'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-59.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3315' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3315'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3412' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-37.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3412'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-37.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3305' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-173.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3305'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-173.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3473' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-128.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3473'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-128.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3162' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3162'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3172' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-109.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3172'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-109.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2604' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2604'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2734' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-84.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2734'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-84.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2547' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-136.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2547'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-136.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2729' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-96.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2729'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-96.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1063' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1063'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1016' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-61.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1016'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-61.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-226' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-226'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-116' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-36.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-116'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-36.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-24' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-24'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3791' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-20-21.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3791'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-20-21.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2501' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-50.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2501'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-50.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2647' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-38.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2647'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-38.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2436' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2436'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2397' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2397'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2869' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S2/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2869'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S2/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2379' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Last-Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2379'),
        'https://cdn5.urduflix.pk/NiaziPlay/Jalaludin/Urdu/S2/Last-Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1929' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1929'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2291' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2291'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2038' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2038'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2021' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-65.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2021'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-65.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1873' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-107.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1873'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-107.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1911' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-40.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1911'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-40.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1844' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-67.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1844'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-67.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1331' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1331'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1405' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-31-480.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1405'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-31-480.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1240' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-26.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1240'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-26.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1604' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1604'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1389' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1389'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S1/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-819' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-12.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-819'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-12.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1490' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-82.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1490'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S3/Episode-82.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1494' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1494'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S1/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-650' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-650'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-561' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-561'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-528' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-105.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-528'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-105.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-494' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-71.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-494'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-71.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-423' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/33-1.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-423'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/33-1.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-406' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-406'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S1/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-346' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-346'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-303' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-44.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-303'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-44.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-198' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-17.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-198'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-17.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3942' || ':' || 'https://cdn.videas.fr/v-medias/s5/hlsv1/19/8f/198f7156-ce4f-41cd-99f7-451e72c34a3b/playlist.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3942'),
        'https://cdn.videas.fr/v-medias/s5/hlsv1/19/8f/198f7156-ce4f-41cd-99f7-451e72c34a3b/playlist.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3955' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-166.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3955'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-166.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3917' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-59.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3917'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/English/S3/Episode-59.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3316' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3316'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3413' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-37.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3413'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/English/S2/Episode-37.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3306' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-173.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3306'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S6/Episode-173.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3480' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-129.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3480'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-129.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3169' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3169'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3176' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-110.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3176'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-110.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2605' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2605'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2740' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-85.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2740'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-85.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2558' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-137.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2558'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S5/Episode-137.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2747' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-97.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2747'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-97.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1064' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1064'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1017' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-62.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1017'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-62.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-227' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-227'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-117' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-37.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-117'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-37.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-25' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-25.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-25'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-25.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3793' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-22-23.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3793'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-22-23.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2502' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-51.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2502'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-51.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2660' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-39.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2660'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-39.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2437' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2437'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2398' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2398'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2870' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S2/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2870'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S2/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1931' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1931'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2309' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2309'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2039' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2039'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S2/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2041' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-66.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2041'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-66.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1874' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-107.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1874'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S4/Episode-107.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1912' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-40.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1912'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S2/Episode-40.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1847' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-68.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1847'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-68.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1332' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1332'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S3/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1426' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-32.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1426'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S2/Episode-32.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1333' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-27.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1333'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S2/Episode-27.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1620' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1620'),
        'https://cdn5.urduflix.pk/NiaziPlay/Destan/Urdu/S1/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1391' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-9.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1391'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu/S1/Episode-9.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-820' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-13.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-820'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S2/Episode-13.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1491' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-82.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1491'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S3/Episode-82.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1495' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-20.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1495'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/Urdu/S1/Episode-20.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-651' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-651'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S1/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-562' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-562'),
        'https://cdn6.urduflix.pk/NiaziPlay/Yunus-Emre/Urdu-Dubbed/S1/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-529' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-106.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-529'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S4/Episode-106.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-495' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-72.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-495'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S3/Episode-72.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-424' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/33-2.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-424'),
        'https://cdn6.urduflix.pk/NiaziPlay/Sultan-Abdulhamid/Urdu/S2/33-2.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-347' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-347'),
        'https://cdn5.urduflix.pk/NiaziPlay/Kosum-Sultan/18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-304' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-45.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-304'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S2/Episode-45.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-199' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-18.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-199'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S1/Episode-18.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3944' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-10.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3944'),
        'https://cdn6.urduflix.pk/NiaziPlay-1/Kurulus-Orhan/Urdu/S1/Episode-10.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3960' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-167.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3960'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S6/Episode-167.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3924' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-60.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3924'),
        'https://cdn4.niazitv.pk/NiaziPlay-1/Mehmed-Fetihler-Sultani/Urdu/S3/Episode-60.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3317' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3317'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S6/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3419' || ':' || 'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-38.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3419'),
        'https://cdn4.niazitv.pk/NiaziPlay/Salahuddin-Ayyubi/Urdu/S2/Episode-38.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3390' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-174.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3390'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu/S6/Episode-174.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3483' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-130.smil/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3483'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S5/Episode-130.smil/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3174' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3174'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Hashashin/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3177' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-111.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3177'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S4/Episode-111.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2606' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2606'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S5/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2764' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-86.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2764'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S3/Episode-86.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2559' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-137.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2559'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S5/Episode-137.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2765' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-98.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2765'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S4/Episode-98.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1065' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1065'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S5/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1018' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-63.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1018'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S4/Episode-63.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-228' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-228'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S3/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-118' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-38.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-118'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S2/Episode-38.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-26' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-26.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-26'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ertugrul-Ghazi/Urdu-Dubbed/S1/Episode-26.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-3795' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-24.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-3795'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/Urdu-Dubbed/S1/Episode-24.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2503' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-52.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2503'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S2/Episode-52.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2671' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-40.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2671'),
        'https://cdn5.urduflix.pk/NiaziPlay/Ates-Kuslari/Urdu/S2/Episode-40.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2438' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2438'),
        'https://cdn5.urduflix.pk/NiaziPlay/Halka/Urdu/S1/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2401' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2401'),
        'https://cdn6.urduflix.pk/NiaziPlay/The-Pit/Urdu/S1/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2871' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S2/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2871'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Maulana-Rumi/Urdu/S2/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1932' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1932'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/Urdu-Dubbed/S4/Episode-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2325' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-19.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2325'),
        'https://cdn5.urduflix.pk/NiaziPlay/Al-Sancak/Urdu/S1/Bolum-19.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2055' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-10.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2055'),
        'https://cdn5.urduflix.pk/NiaziPlay/Barbarossa/English/S2/Episode-10.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-2059' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-67.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-2059'),
        'https://cdn6.urduflix.pk/NiaziPlay/Teskilat/Urdu/S3/Episode-67.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1876' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-108.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1876'),
        'https://cdn5.urduflix.pk/NiaziPlay-1/Kurulus-Osman/English/S4/Episode-108.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1926' || ':' || 'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-41.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1926'),
        'https://cdn5.urduflix.pk/NiaziPlay/Alp-Arslan/English/S2/Episode-41.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      ),
(
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'stream:' || 'video-1860' || ':' || 'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-69.mp4/index.m3u8'),
        extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'variant:' || 'video-1860'),
        'https://cdn6.urduflix.pk/NiaziPlay/Soz/Urdu/S3/Episode-69.mp4/index.m3u8',
        'hls',
        true,
        1,
        'untested'
      )
ON CONFLICT (variant_id, delivery_url) DO UPDATE SET
  is_active = EXCLUDED.is_active,
  priority = EXCLUDED.priority;