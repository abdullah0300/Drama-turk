-- 24 Dramas and Drama Aliases

INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'al-hashashin'),
  'al-hashashin',
  'al-hashashin',
  'Al Hashashin',
  'Preserved catalog records for Al Hashashin, containing 29 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1719209521.webp',
  'https://play.niazitv.pk/images/episode_1719209521.webp',
  29
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'al-hashashin'),
  'Al Hashashin',
  'al hashashin'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'al-sancak'),
  'al-sancak',
  'al-sancak',
  'Al Sancak',
  'Preserved catalog records for Al Sancak, containing 19 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1670141819.webp',
  'https://play.niazitv.pk/images/episode_1670141819.webp',
  19
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'al-sancak'),
  'Al Sancak',
  'al sancak'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'alparslan-buyuk-selcuklu'),
  'alparslan-buyuk-selcuklu',
  'alparslan-buyuk-selcuklu',
  'Alparslan: Büyük Selçuklu',
  'Preserved catalog records for Alparslan: Büyük Selçuklu, containing 207 video entries.',
  'published',
  false,
  '{"Drama","Historical","Action"}',
  '{"Urdu","English"}',
  'https://play.niazitv.pk/images/episode_1706598103.webp',
  'https://play.niazitv.pk/images/episode_1706598103.webp',
  207
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'alparslan-buyuk-selcuklu'),
  'Alparslan: Büyük Selçuklu',
  'alparslan: büyük selçuklu'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'ates-kuslari'),
  'ates-kuslari',
  'ates-kuslari',
  'Ates Kuslari',
  'Preserved catalog records for Ates Kuslari, containing 33 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1694089133.webp',
  'https://play.niazitv.pk/images/episode_1694089133.webp',
  33
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'ates-kuslari'),
  'Ates Kuslari',
  'ates kuslari'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'barbaroslar'),
  'barbaroslar',
  'barbaroslar',
  'Barbaroslar',
  'Preserved catalog records for Barbaroslar, containing 104 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"English","Urdu"}',
  'https://play.niazitv.pk/images/episode_1671860399.webp',
  'https://play.niazitv.pk/images/episode_1671860399.webp',
  104
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'barbaroslar'),
  'Barbaroslar',
  'barbaroslar'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'destan'),
  'destan',
  'destan',
  'Destan',
  'Preserved catalog records for Destan, containing 28 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1638677759.webp',
  'https://play.niazitv.pk/images/episode_1638677759.webp',
  28
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'destan'),
  'Destan',
  'destan'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'dokuz-oguz'),
  'dokuz-oguz',
  'dokuz-oguz',
  'Dokuz Oguz',
  'Preserved catalog records for Dokuz Oguz, containing 6 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1691646650.webp',
  'https://play.niazitv.pk/images/episode_1691646650.webp',
  6
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'dokuz-oguz'),
  'Dokuz Oguz',
  'dokuz oguz'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'ertugrul-ghazi'),
  'ertugrul-ghazi',
  'ertugrul-ghazi',
  'Ertugrul Ghazi',
  'Preserved catalog records for Ertugrul Ghazi, containing 425 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1621820585.webp',
  'https://play.niazitv.pk/images/episode_1621820585.webp',
  425
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'ertugrul-ghazi'),
  'Ertugrul Ghazi',
  'ertugrul ghazi'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'halka'),
  'halka',
  'halka',
  'Halka',
  'Preserved catalog records for Halka, containing 22 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1693571368.webp',
  'https://play.niazitv.pk/images/episode_1693571368.webp',
  22
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'halka'),
  'Halka',
  'halka'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kosem-sultan'),
  'kosem-sultan',
  'kosem-sultan',
  'Kosem Sultan',
  'Preserved catalog records for Kosem Sultan, containing 60 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{}',
  'https://play.niazitv.pk/images/episode_1613383927.webp',
  'https://play.niazitv.pk/images/episode_1613383927.webp',
  60
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kosem-sultan'),
  'Kosem Sultan',
  'kosem sultan'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-orhan'),
  'kurulus-orhan',
  'kurulus-orhan',
  'Kurulus Orhan',
  'Preserved catalog records for Kurulus Orhan, containing 52 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu","English"}',
  'https://play.niazitv.pk/images/episode_1760630787.jpg',
  'https://play.niazitv.pk/images/episode_1760630787.jpg',
  52
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-orhan'),
  'Kurulus Orhan',
  'kurulus orhan'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'kurulus-osman',
  'kurulus-osman',
  'Kurulus Osman',
  'Preserved catalog records for Kurulus Osman, containing 1451 video entries.',
  'published',
  false,
  '{"Drama","Historical","Action"}',
  '{"Urdu","English"}',
  'https://play.niazitv.pk/images/episode_1729925112.webp',
  'https://play.niazitv.pk/images/episode_1729925112.webp',
  1451
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'Kurulus Osman',
  'kurulus osman'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mehmed-fetihler-sultani'),
  'mehmed-fetihler-sultani',
  'mehmed-fetihler-sultani',
  'Mehmed: Fetihler Sultani',
  'Preserved catalog records for Mehmed: Fetihler Sultani, containing 149 video entries.',
  'published',
  true,
  '{"Drama","Historical","Action"}',
  '{"Urdu","English"}',
  'https://play.niazitv.pk/images/episode_1789363783.png',
  'https://play.niazitv.pk/images/episode_1789363783.png',
  149
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mehmed-fetihler-sultani'),
  'Mehmed: Fetihler Sultani',
  'mehmed: fetihler sultani'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mendirman-jaloliddin'),
  'mendirman-jaloliddin',
  'mendirman-jaloliddin',
  'Mendirman Jaloliddin',
  'Preserved catalog records for Mendirman Jaloliddin, containing 30 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1679938799.webp',
  'https://play.niazitv.pk/images/episode_1679938799.webp',
  30
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mendirman-jaloliddin'),
  'Mendirman Jaloliddin',
  'mendirman jaloliddin'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mevlana-celaleddin-rumi'),
  'mevlana-celaleddin-rumi',
  'mevlana-celaleddin-rumi',
  'Mevlana Celaleddin Rumi',
  'Preserved catalog records for Mevlana Celaleddin Rumi, containing 20 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1687688052.webp',
  'https://play.niazitv.pk/images/episode_1687688052.webp',
  20
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mevlana-celaleddin-rumi'),
  'Mevlana Celaleddin Rumi',
  'mevlana celaleddin rumi'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'salahuddin-ayyubi'),
  'salahuddin-ayyubi',
  'salahuddin-ayyubi',
  'Salahuddin Ayyubi',
  'Preserved catalog records for Salahuddin Ayyubi, containing 60 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu","English"}',
  'https://play.niazitv.pk/images/episode_1729010385.webp',
  'https://play.niazitv.pk/images/episode_1729010385.webp',
  60
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'salahuddin-ayyubi'),
  'Salahuddin Ayyubi',
  'salahuddin ayyubi'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sevdan-bir-ates'),
  'sevdan-bir-ates',
  'sevdan-bir-ates',
  'Sevdan Bir Ates',
  'Preserved catalog records for Sevdan Bir Ates, containing 2 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1790673829.png',
  'https://play.niazitv.pk/images/episode_1790673829.png',
  2
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sevdan-bir-ates'),
  'Sevdan Bir Ates',
  'sevdan bir ates'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'soz'),
  'soz',
  'soz',
  'Soz',
  'Preserved catalog records for Soz, containing 91 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1660049849.webp',
  'https://play.niazitv.pk/images/episode_1660049849.webp',
  91
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'soz'),
  'Soz',
  'soz'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sultan-abdulhamid'),
  'sultan-abdulhamid',
  'sultan-abdulhamid',
  'Sultan Abdulhamid',
  'Preserved catalog records for Sultan Abdulhamid, containing 124 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1613387473.webp',
  'https://play.niazitv.pk/images/episode_1613387473.webp',
  124
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sultan-abdulhamid'),
  'Sultan Abdulhamid',
  'sultan abdulhamid'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sumud'),
  'sumud',
  'sumud',
  'Sumud (صمود)',
  'Preserved catalog records for Sumud (صمود), containing 2 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1789825332.png',
  'https://play.niazitv.pk/images/episode_1789825332.png',
  2
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sumud'),
  'Sumud (صمود)',
  'sumud (صمود)'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'tasacak-bu-deniz'),
  'tasacak-bu-deniz',
  'tasacak-bu-deniz',
  'Tasacak Bu Deniz',
  'Preserved catalog records for Tasacak Bu Deniz, containing 1 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1790665405.png',
  'https://play.niazitv.pk/images/episode_1790665405.png',
  1
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'tasacak-bu-deniz'),
  'Tasacak Bu Deniz',
  'tasacak bu deniz'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'teskilat'),
  'teskilat',
  'teskilat',
  'Teskilat',
  'Preserved catalog records for Teskilat, containing 186 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1789715080.png',
  'https://play.niazitv.pk/images/episode_1789715080.png',
  186
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'teskilat'),
  'Teskilat',
  'teskilat'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'the-pit-cukur'),
  'the-pit-cukur',
  'the-pit-cukur',
  'The Pit (Cukur)',
  'Preserved catalog records for The Pit (Cukur), containing 131 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1714276335.webp',
  'https://play.niazitv.pk/images/episode_1714276335.webp',
  131
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'the-pit-cukur'),
  'The Pit (Cukur)',
  'the pit (cukur)'
)
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (id, source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'yunus-emre'),
  'yunus-emre',
  'yunus-emre',
  'Yunus Emre',
  'Preserved catalog records for Yunus Emre, containing 37 video entries.',
  'published',
  false,
  '{"Drama"}',
  '{"Urdu"}',
  'https://play.niazitv.pk/images/episode_1613399393.webp',
  'https://play.niazitv.pk/images/episode_1613399393.webp',
  37
)
ON CONFLICT (source_id) DO UPDATE SET
  display_name = EXCLUDED.display_name,
  is_pilot = EXCLUDED.is_pilot,
  genres = EXCLUDED.genres,
  languages = EXCLUDED.languages,
  poster_url = EXCLUDED.poster_url,
  backdrop_url = EXCLUDED.backdrop_url,
  video_records_count = EXCLUDED.video_records_count,
  updated_at = now();

INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'yunus-emre'),
  'Yunus Emre',
  'yunus emre'
)
ON CONFLICT (drama_id, alias) DO NOTHING;
