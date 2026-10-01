-- PART 1: Core Catalog Metadata

-- Dramas

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


-- Collections

INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-82'),
  'collection-82',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mehmed-fetihler-sultani'),
  'collection-82',
  'collection-82',
  'unresolved',
  '{"4"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-88'),
  'collection-88',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mehmed-fetihler-sultani'),
  'collection-88',
  'collection-88',
  'unresolved',
  '{"4"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-87'),
  'collection-87',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sevdan-bir-ates'),
  'collection-87',
  'collection-87',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-86'),
  'collection-86',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'tasacak-bu-deniz'),
  'collection-86',
  'collection-86',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-84'),
  'collection-84',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sumud'),
  'collection-84',
  'collection-84',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-83'),
  'collection-83',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'teskilat'),
  'collection-83',
  'collection-83',
  'unresolved',
  '{"7"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-78'),
  'collection-78',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-orhan'),
  'collection-78',
  'collection-78',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-77'),
  'collection-77',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'teskilat'),
  'collection-77',
  'collection-77',
  'unresolved',
  '{"6"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-76'),
  'collection-76',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mehmed-fetihler-sultani'),
  'collection-76',
  'collection-76',
  'unresolved',
  '{"3"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-73'),
  'collection-73',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-73',
  'collection-73',
  'unresolved',
  '{"6"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-72'),
  'collection-72',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mehmed-fetihler-sultani'),
  'collection-72',
  'collection-72',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-71'),
  'collection-71',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'salahuddin-ayyubi'),
  'collection-71',
  'collection-71',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-70'),
  'collection-70',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-70',
  'collection-70',
  'unresolved',
  '{"6"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-69'),
  'collection-69',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'teskilat'),
  'collection-69',
  'collection-69',
  'unresolved',
  '{"5"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-68'),
  'collection-68',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mehmed-fetihler-sultani'),
  'collection-68',
  'collection-68',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  -100
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-65'),
  'collection-65',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'al-hashashin'),
  'collection-65',
  'collection-65',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-63'),
  'collection-63',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'the-pit-cukur'),
  'collection-63',
  'collection-63',
  'unresolved',
  '{"4"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-61'),
  'collection-61',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-61',
  'collection-61',
  'unresolved',
  '{"5"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-59'),
  'collection-59',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'the-pit-cukur'),
  'collection-59',
  'collection-59',
  'unresolved',
  '{"3"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-50'),
  'collection-50',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-50',
  'collection-50',
  'unresolved',
  '{"5"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-57'),
  'collection-57',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'teskilat'),
  'collection-57',
  'collection-57',
  'unresolved',
  '{"4"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-6'),
  'collection-6',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'ertugrul-ghazi'),
  'collection-6',
  'collection-6',
  'unresolved',
  '{"5"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-5'),
  'collection-5',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'ertugrul-ghazi'),
  'collection-5',
  'collection-5',
  'unresolved',
  '{"4"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-4'),
  'collection-4',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'ertugrul-ghazi'),
  'collection-4',
  'collection-4',
  'unresolved',
  '{"3"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-3'),
  'collection-3',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'ertugrul-ghazi'),
  'collection-3',
  'collection-3',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-2'),
  'collection-2',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'ertugrul-ghazi'),
  'collection-2',
  'collection-2',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-56'),
  'collection-56',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'alparslan-buyuk-selcuklu'),
  'collection-56',
  'collection-56',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-53'),
  'collection-53',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'the-pit-cukur'),
  'collection-53',
  'collection-53',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-52'),
  'collection-52',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'ates-kuslari'),
  'collection-52',
  'collection-52',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-51'),
  'collection-51',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'halka'),
  'collection-51',
  'collection-51',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-49'),
  'collection-49',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'dokuz-oguz'),
  'collection-49',
  'collection-49',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-48'),
  'collection-48',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'the-pit-cukur'),
  'collection-48',
  'collection-48',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-47'),
  'collection-47',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mevlana-celaleddin-rumi'),
  'collection-47',
  'collection-47',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-46'),
  'collection-46',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mendirman-jaloliddin'),
  'collection-46',
  'collection-46',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-43'),
  'collection-43',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-43',
  'collection-43',
  'unresolved',
  '{"4"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-42'),
  'collection-42',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'al-sancak'),
  'collection-42',
  'collection-42',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-41'),
  'collection-41',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'barbaroslar'),
  'collection-41',
  'collection-41',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-40'),
  'collection-40',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'teskilat'),
  'collection-40',
  'collection-40',
  'unresolved',
  '{"3"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-38'),
  'collection-38',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-38',
  'collection-38',
  'unresolved',
  '{"4"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-37'),
  'collection-37',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'alparslan-buyuk-selcuklu'),
  'collection-37',
  'collection-37',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-36'),
  'collection-36',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'soz'),
  'collection-36',
  'collection-36',
  'unresolved',
  '{"3"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-34'),
  'collection-34',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-34',
  'collection-34',
  'unresolved',
  '{"3"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-33'),
  'collection-33',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'teskilat'),
  'collection-33',
  'collection-33',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-32'),
  'collection-32',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'teskilat'),
  'collection-32',
  'collection-32',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-31'),
  'collection-31',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'soz'),
  'collection-31',
  'collection-31',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-30'),
  'collection-30',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'soz'),
  'collection-30',
  'collection-30',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-28'),
  'collection-28',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'destan'),
  'collection-28',
  'collection-28',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-27'),
  'collection-27',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'alparslan-buyuk-selcuklu'),
  'collection-27',
  'collection-27',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-26'),
  'collection-26',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-26',
  'collection-26',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-25'),
  'collection-25',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-25',
  'collection-25',
  'unresolved',
  '{"3"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-24'),
  'collection-24',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'barbaroslar'),
  'collection-24',
  'collection-24',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-23'),
  'collection-23',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-23',
  'collection-23',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-22'),
  'collection-22',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'mendirman-jaloliddin'),
  'collection-22',
  'collection-22',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-21'),
  'collection-21',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'yunus-emre'),
  'collection-21',
  'collection-21',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-20'),
  'collection-20',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'yunus-emre'),
  'collection-20',
  'collection-20',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-19'),
  'collection-19',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sultan-abdulhamid'),
  'collection-19',
  'collection-19',
  'unresolved',
  '{"5"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-18'),
  'collection-18',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sultan-abdulhamid'),
  'collection-18',
  'collection-18',
  'unresolved',
  '{"4"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-17'),
  'collection-17',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sultan-abdulhamid'),
  'collection-17',
  'collection-17',
  'unresolved',
  '{"3"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-16'),
  'collection-16',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sultan-abdulhamid'),
  'collection-16',
  'collection-16',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-11'),
  'collection-11',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'sultan-abdulhamid'),
  'collection-11',
  'collection-11',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-10'),
  'collection-10',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kosem-sultan'),
  'collection-10',
  'collection-10',
  'unresolved',
  '{"1","2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-8'),
  'collection-8',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-8',
  'collection-8',
  'unresolved',
  '{"2"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (id, source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, languages, status, sort_order)
VALUES (
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'collection:' || 'collection-7'),
  'collection-7',
  extensions.uuid_generate_v5(extensions.uuid_ns_url(), 'drama:' || 'kurulus-osman'),
  'collection-7',
  'collection-7',
  'unresolved',
  '{"1"}',
  NULL,
  '{"Urdu","English"}',
  'published',
  0
)
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  languages = EXCLUDED.languages,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


-- Site Settings
INSERT INTO public.public_site_settings (id, brand_name, wordmark, tagline, supporting_copy, accent_color, pilot_drama_source_id, pilot_collection_source_id, feature_flags)
VALUES (
  'current',
  'Drama Platform',
  'DRAMA PLATFORM',
  'Your drama. Without interruptions.',
  'No ads. No pop-ups. Just watch.',
  '#f59e0b',
  'mehmed-fetihler-sultani',
  'collection-68',
  '{"enable_viewer_accounts": false, "release_mode": "production"}'::jsonb
)
ON CONFLICT (id) DO UPDATE SET
  updated_at = now();


-- Review Findings

INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'record-undefined',
  '',
  'warning',
  NULL,
  false,
  ''
);
