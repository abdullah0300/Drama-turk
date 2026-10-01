-- 1. Dramas

INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('al-hashashin', 'al-hashashin', 'Al Hashashin', 'Preserved catalog records for Al Hashashin, containing 29 video entries.', 'published', false, '{"Drama","Historical","Action"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1719209521.webp', 'https://play.niazitv.pk/images/episode_1719209521.webp', 29)
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
SELECT id, 'Al Hashashin', 'al hashashin' FROM public.dramas WHERE source_id = 'al-hashashin'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('al-sancak', 'al-sancak', 'Al Sancak', 'Preserved catalog records for Al Sancak, containing 19 video entries.', 'published', false, '{"Drama"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1670141819.webp', 'https://play.niazitv.pk/images/episode_1670141819.webp', 19)
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
SELECT id, 'Al Sancak', 'al sancak' FROM public.dramas WHERE source_id = 'al-sancak'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('alparslan-buyuk-selcuklu', 'alparslan-buyuk-selcuklu', 'Alparslan: Büyük Selçuklu', 'Preserved catalog records for Alparslan: Büyük Selçuklu, containing 207 video entries.', 'published', false, '{"Drama","Historical","Action"}', '{"Urdu","English"}', 'https://play.niazitv.pk/images/episode_1706598103.webp', 'https://play.niazitv.pk/images/episode_1706598103.webp', 207)
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
SELECT id, 'Alp Arslan', 'alp arslan' FROM public.dramas WHERE source_id = 'alparslan-buyuk-selcuklu'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.drama_aliases (drama_id, alias, normalized_alias)
SELECT id, 'Alparslan: Büyük Selçuklu', 'alparslan: buyuk selcuklu' FROM public.dramas WHERE source_id = 'alparslan-buyuk-selcuklu'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('ates-kuslari', 'ates-kuslari', 'Ates Kuslari', 'Preserved catalog records for Ates Kuslari, containing 33 video entries.', 'published', false, '{"Drama"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1694089133.webp', 'https://play.niazitv.pk/images/episode_1694089133.webp', 33)
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
SELECT id, 'Ates Kuslari', 'ates kuslari' FROM public.dramas WHERE source_id = 'ates-kuslari'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('barbaroslar', 'barbaroslar', 'Barbaroslar', 'Preserved catalog records for Barbaroslar, containing 104 video entries.', 'published', false, '{"Drama","Historical","Action"}', '{"English","Urdu"}', 'https://play.niazitv.pk/images/episode_1671860399.webp', 'https://play.niazitv.pk/images/episode_1671860399.webp', 104)
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
SELECT id, 'Barbaroslar', 'barbaroslar' FROM public.dramas WHERE source_id = 'barbaroslar'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('destan', 'destan', 'Destan', 'Preserved catalog records for Destan, containing 28 video entries.', 'published', false, '{"Drama","Historical","Action"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1638677759.webp', 'https://play.niazitv.pk/images/episode_1638677759.webp', 28)
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
SELECT id, 'Destan', 'destan' FROM public.dramas WHERE source_id = 'destan'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('dokuz-oguz', 'dokuz-oguz', 'Dokuz Oguz', 'Preserved catalog records for Dokuz Oguz, containing 6 video entries.', 'published', false, '{"Drama"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1691646650.webp', 'https://play.niazitv.pk/images/episode_1691646650.webp', 6)
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
SELECT id, 'Dokuz Oguz', 'dokuz oguz' FROM public.dramas WHERE source_id = 'dokuz-oguz'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('ertugrul-ghazi', 'ertugrul-ghazi', 'Ertugrul Ghazi', 'Preserved catalog records for Ertugrul Ghazi, containing 425 video entries.', 'published', false, '{"Drama","Historical","Action"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1621820585.webp', 'https://play.niazitv.pk/images/episode_1621820585.webp', 425)
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
SELECT id, 'Ertugrul Ghazi', 'ertugrul ghazi' FROM public.dramas WHERE source_id = 'ertugrul-ghazi'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('halka', 'halka', 'Halka', 'Preserved catalog records for Halka, containing 22 video entries.', 'published', false, '{"Drama"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1693571368.webp', 'https://play.niazitv.pk/images/episode_1693571368.webp', 22)
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
SELECT id, 'Halka', 'halka' FROM public.dramas WHERE source_id = 'halka'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('kosem-sultan', 'kosem-sultan', 'Kosem Sultan', 'Preserved catalog records for Kosem Sultan, containing 60 video entries.', 'published', false, '{"Drama","Historical","Action"}', '{}', 'https://play.niazitv.pk/images/episode_1613383927.webp', 'https://play.niazitv.pk/images/episode_1613383927.webp', 60)
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
SELECT id, 'Kosem Sultan', 'kosem sultan' FROM public.dramas WHERE source_id = 'kosem-sultan'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('kurulus-orhan', 'kurulus-orhan', 'Kurulus Orhan', 'Preserved catalog records for Kurulus Orhan, containing 52 video entries.', 'published', false, '{"Drama","Historical","Action"}', '{"Urdu","English"}', 'https://play.niazitv.pk/images/episode_1760630787.jpg', 'https://play.niazitv.pk/images/episode_1760630787.jpg', 52)
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
SELECT id, 'Kurulus Orhan', 'kurulus orhan' FROM public.dramas WHERE source_id = 'kurulus-orhan'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('kurulus-osman', 'kurulus-osman', 'Kurulus Osman', 'Preserved catalog records for Kurulus Osman, containing 1451 video entries.', 'published', false, '{"Drama","Historical","Action"}', '{"Urdu","English"}', 'https://play.niazitv.pk/images/episode_1729925112.webp', 'https://play.niazitv.pk/images/episode_1729925112.webp', 1451)
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
SELECT id, 'Kurulus Osman', 'kurulus osman' FROM public.dramas WHERE source_id = 'kurulus-osman'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('mehmed-fetihler-sultani', 'mehmed-fetihler-sultani', 'Mehmed: Fetihler Sultani', 'A dramatic historical chronicle capturing the life, intellect, military stratagems, and rise of Sultan Mehmed II towards the conquest of Constantinople.', 'published', true, '{"Drama","Historical","Action"}', '{"Urdu","English"}', 'https://play.niazitv.pk/images/episode_1789363783.png', 'https://play.niazitv.pk/images/episode_1789363783.png', 149)
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
SELECT id, 'Mehmed: Fetihler Sultani', 'mehmed: fetihler sultani' FROM public.dramas WHERE source_id = 'mehmed-fetihler-sultani'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('mendirman-jaloliddin', 'mendirman-jaloliddin', 'Mendirman Jaloliddin', 'Preserved catalog records for Mendirman Jaloliddin, containing 30 video entries.', 'published', false, '{"Drama","Historical","Action"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1679938799.webp', 'https://play.niazitv.pk/images/episode_1679938799.webp', 30)
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
SELECT id, 'Mendirman Jaloliddin', 'mendirman jaloliddin' FROM public.dramas WHERE source_id = 'mendirman-jaloliddin'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('mevlana-celaleddin-rumi', 'mevlana-celaleddin-rumi', 'Mevlana Celaleddin Rumi', 'Preserved catalog records for Mevlana Celaleddin Rumi, containing 20 video entries.', 'published', false, '{"Drama","Historical","Action"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1687688052.webp', 'https://play.niazitv.pk/images/episode_1687688052.webp', 20)
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
SELECT id, 'Mevlana Celaleddin Rumi', 'mevlana celaleddin rumi' FROM public.dramas WHERE source_id = 'mevlana-celaleddin-rumi'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('salahuddin-ayyubi', 'salahuddin-ayyubi', 'Salahuddin Ayyubi', 'Preserved catalog records for Salahuddin Ayyubi, containing 60 video entries.', 'published', false, '{"Drama","Historical","Action"}', '{"Urdu","English"}', 'https://play.niazitv.pk/images/episode_1729010385.webp', 'https://play.niazitv.pk/images/episode_1729010385.webp', 60)
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
SELECT id, 'Salahuddin Ayyubi', 'salahuddin ayyubi' FROM public.dramas WHERE source_id = 'salahuddin-ayyubi'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('sevdan-bir-ates', 'sevdan-bir-ates', 'Sevdan Bir Ates', 'Preserved catalog records for Sevdan Bir Ates, containing 2 video entries.', 'published', false, '{"Drama"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1790673829.png', 'https://play.niazitv.pk/images/episode_1790673829.png', 2)
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
SELECT id, 'Sevdan Bir Ates', 'sevdan bir ates' FROM public.dramas WHERE source_id = 'sevdan-bir-ates'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('soz', 'soz', 'Soz', 'Preserved catalog records for Soz, containing 91 video entries.', 'published', false, '{"Drama"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1660049849.webp', 'https://play.niazitv.pk/images/episode_1660049849.webp', 91)
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
SELECT id, 'Soz', 'soz' FROM public.dramas WHERE source_id = 'soz'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('sultan-abdulhamid', 'sultan-abdulhamid', 'Sultan Abdulhamid', 'Preserved catalog records for Sultan Abdulhamid, containing 124 video entries.', 'published', false, '{"Drama","Historical","Action"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1613387473.webp', 'https://play.niazitv.pk/images/episode_1613387473.webp', 124)
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
SELECT id, 'Sultan Abdulhamid', 'sultan abdulhamid' FROM public.dramas WHERE source_id = 'sultan-abdulhamid'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('sumud', 'sumud', 'Sumud (صمود)', 'Preserved catalog records for Sumud (صمود), containing 2 video entries.', 'published', false, '{"Drama"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1789825332.png', 'https://play.niazitv.pk/images/episode_1789825332.png', 2)
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
SELECT id, 'Sumud (صمود)', 'sumud (صمود)' FROM public.dramas WHERE source_id = 'sumud'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('tasacak-bu-deniz', 'tasacak-bu-deniz', 'Tasacak Bu Deniz', 'Preserved catalog records for Tasacak Bu Deniz, containing 1 video entries.', 'published', false, '{"Drama"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1790665405.png', 'https://play.niazitv.pk/images/episode_1790665405.png', 1)
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
SELECT id, 'Tasacak Bu Deniz', 'tasacak bu deniz' FROM public.dramas WHERE source_id = 'tasacak-bu-deniz'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('teskilat', 'teskilat', 'Teskilat', 'Preserved catalog records for Teskilat, containing 186 video entries.', 'published', false, '{"Drama"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1789715080.png', 'https://play.niazitv.pk/images/episode_1789715080.png', 186)
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
SELECT id, 'Teskilat', 'teskilat' FROM public.dramas WHERE source_id = 'teskilat'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('the-pit-cukur', 'the-pit-cukur', 'The Pit (Cukur)', 'Preserved catalog records for The Pit (Cukur), containing 131 video entries.', 'published', false, '{"Drama"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1714276335.webp', 'https://play.niazitv.pk/images/episode_1714276335.webp', 131)
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
SELECT id, 'The Pit (Cukur)', 'the pit (cukur)' FROM public.dramas WHERE source_id = 'the-pit-cukur'
ON CONFLICT (drama_id, alias) DO NOTHING;


INSERT INTO public.dramas (source_id, slug, display_name, short_overview, status, is_pilot, genres, languages, poster_url, backdrop_url, video_records_count)
VALUES ('yunus-emre', 'yunus-emre', 'Yunus Emre', 'Preserved catalog records for Yunus Emre, containing 37 video entries.', 'published', false, '{"Drama","Historical","Action"}', '{"Urdu"}', 'https://play.niazitv.pk/images/episode_1613399393.webp', 'https://play.niazitv.pk/images/episode_1613399393.webp', 37)
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
SELECT id, 'Yunus Emre', 'yunus emre' FROM public.dramas WHERE source_id = 'yunus-emre'
ON CONFLICT (drama_id, alias) DO NOTHING;


-- 2. Collections

INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-82', id, 'collection-82', 'Mehmed: Fetihler Sultani Season 4 - Urdu & English Subtitles', 'subtitled', '{"4"}', 'Mehmed: Fetihler Sultani Season 4 - Urdu & English Subtitles', 0, 'published'
FROM public.dramas WHERE source_id = 'mehmed-fetihler-sultani'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-88', id, 'collection-88', 'Mehmed Fetihler Sultani Season 4 Urdu Dubbed', 'dubbed', '{"4"}', 'Mehmed Fetihler Sultani Season 4 Urdu Dubbed', 1, 'published'
FROM public.dramas WHERE source_id = 'mehmed-fetihler-sultani'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-87', id, 'collection-87', 'Sevdan Bir Ates Urdu Subtitles | Love Is Fire', 'subtitled', '{"1"}', 'Sevdan Bir Ates Urdu Subtitles | Love Is Fire', 2, 'published'
FROM public.dramas WHERE source_id = 'sevdan-bir-ates'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-86', id, 'collection-86', 'Tasacak Bu Deniz Season 2 Urdu Subtitles – This Sea Will Overflow', 'subtitled', '{"2"}', 'Tasacak Bu Deniz Season 2 Urdu Subtitles – This Sea Will Overflow', 3, 'published'
FROM public.dramas WHERE source_id = 'tasacak-bu-deniz'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-84', id, 'collection-84', 'Sumud (صمود) Season 1 Urdu Subtitles – Turkish Drama 2026', 'subtitled', '{"1"}', 'Sumud (صمود) Season 1 Urdu Subtitles – Turkish Drama 2026', 4, 'published'
FROM public.dramas WHERE source_id = 'sumud'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-83', id, 'collection-83', 'Teskilat Season 7 Urdu Subtitles', 'subtitled', '{"7"}', 'Teskilat Season 7 Urdu Subtitles', 5, 'published'
FROM public.dramas WHERE source_id = 'teskilat'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-78', id, 'collection-78', 'Kurulus Orhan Season 1 Urdu & English Subtitles', 'subtitled', '{"1"}', 'Kurulus Orhan Season 1 Urdu & English Subtitles', 6, 'published'
FROM public.dramas WHERE source_id = 'kurulus-orhan'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-77', id, 'collection-77', 'Teskilat Season 6 Urdu Subtitles', 'subtitled', '{"6"}', 'Teskilat Season 6 Urdu Subtitles', 7, 'published'
FROM public.dramas WHERE source_id = 'teskilat'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-76', id, 'collection-76', 'Mehmed: Fetihler Sultani Season 3 - Urdu & English Subtitles', 'subtitled', '{"3"}', 'Mehmed: Fetihler Sultani Season 3 - Urdu & English Subtitles', 8, 'published'
FROM public.dramas WHERE source_id = 'mehmed-fetihler-sultani'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-73', id, 'collection-73', 'Kurulus Osman Season 6 Urdu Dubbed', 'dubbed', '{"6"}', 'Kurulus Osman Season 6 Urdu Dubbed', 9, 'published'
FROM public.dramas WHERE source_id = 'kurulus-osman'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-72', id, 'collection-72', 'Mehmed Fetihler Sultani Season 1 Urdu Dubbed', 'dubbed', '{"1"}', 'Mehmed Fetihler Sultani Season 1 Urdu Dubbed', 10, 'published'
FROM public.dramas WHERE source_id = 'mehmed-fetihler-sultani'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-71', id, 'collection-71', 'Salahuddin Ayyubi Season 2 Urdu & English Subtitles', 'subtitled', '{"2"}', 'Salahuddin Ayyubi Season 2 Urdu & English Subtitles', 11, 'published'
FROM public.dramas WHERE source_id = 'salahuddin-ayyubi'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-70', id, 'collection-70', 'Kurulus Osman Season 6 Urdu & English Subtitles', 'subtitled', '{"6"}', 'Kurulus Osman Season 6 Urdu & English Subtitles', 12, 'published'
FROM public.dramas WHERE source_id = 'kurulus-osman'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-69', id, 'collection-69', 'Teskilat Season 5 Urdu Subtitles', 'subtitled', '{"5"}', 'Teskilat Season 5 Urdu Subtitles', 13, 'published'
FROM public.dramas WHERE source_id = 'teskilat'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-68', id, 'collection-68', 'Mehmed: Fetihler Sultani Season 2 - Urdu & English Subtitles', 'subtitled', '{"2"}', 'Mehmed: Fetihler Sultani Season 2 - Urdu & English Subtitles', 14, 'published'
FROM public.dramas WHERE source_id = 'mehmed-fetihler-sultani'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-65', id, 'collection-65', 'Al Hashashin Season 1 Urdu Subtitles', 'subtitled', '{"1"}', 'Al Hashashin Season 1 Urdu Subtitles', 15, 'published'
FROM public.dramas WHERE source_id = 'al-hashashin'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-63', id, 'collection-63', 'The Pit (Cukur) Season 4 with Urdu Subtitles', 'subtitled', '{"4"}', 'The Pit (Cukur) Season 4 with Urdu Subtitles', 16, 'published'
FROM public.dramas WHERE source_id = 'the-pit-cukur'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-61', id, 'collection-61', 'Kurulus Osman Season 5 Urdu Dubbed', 'dubbed', '{"5"}', 'Kurulus Osman Season 5 Urdu Dubbed', 17, 'published'
FROM public.dramas WHERE source_id = 'kurulus-osman'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-59', id, 'collection-59', 'The Pit (Cukur) Season 3 with Urdu Subtitles', 'subtitled', '{"3"}', 'The Pit (Cukur) Season 3 with Urdu Subtitles', 18, 'published'
FROM public.dramas WHERE source_id = 'the-pit-cukur'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-50', id, 'collection-50', 'Kurulus Osman Season 5 in Urdu Subtitles', 'subtitled', '{"5"}', 'Kurulus Osman Season 5 in Urdu Subtitles', 19, 'published'
FROM public.dramas WHERE source_id = 'kurulus-osman'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-57', id, 'collection-57', 'Teskilat Season 4 Urdu Subtitles', 'subtitled', '{"4"}', 'Teskilat Season 4 Urdu Subtitles', 20, 'published'
FROM public.dramas WHERE source_id = 'teskilat'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-6', id, 'collection-6', 'Ertugrul Ghazi Season 5', 'unresolved', '{"5"}', 'Ertugrul Ghazi Season 5', 21, 'published'
FROM public.dramas WHERE source_id = 'ertugrul-ghazi'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-5', id, 'collection-5', 'Ertugrul Ghazi Season 4', 'unresolved', '{"4"}', 'Ertugrul Ghazi Season 4', 22, 'published'
FROM public.dramas WHERE source_id = 'ertugrul-ghazi'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-4', id, 'collection-4', 'Ertugrul Ghazi Season 3', 'unresolved', '{"3"}', 'Ertugrul Ghazi Season 3', 23, 'published'
FROM public.dramas WHERE source_id = 'ertugrul-ghazi'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-3', id, 'collection-3', 'Ertugrul Ghazi Season 2', 'unresolved', '{"2"}', 'Ertugrul Ghazi Season 2', 24, 'published'
FROM public.dramas WHERE source_id = 'ertugrul-ghazi'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-2', id, 'collection-2', 'Ertugrul Ghazi Season 1', 'unresolved', '{"1"}', 'Ertugrul Ghazi Season 1', 25, 'published'
FROM public.dramas WHERE source_id = 'ertugrul-ghazi'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-56', id, 'collection-56', 'Alp Arslan Season 1 Urdu Dubbed', 'dubbed', '{"1"}', 'Alp Arslan Season 1 Urdu Dubbed', 26, 'published'
FROM public.dramas WHERE source_id = 'alparslan-buyuk-selcuklu'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-53', id, 'collection-53', 'The Pit (Cukur) Season 2 Urdu Subtitles', 'subtitled', '{"2"}', 'The Pit (Cukur) Season 2 Urdu Subtitles', 27, 'published'
FROM public.dramas WHERE source_id = 'the-pit-cukur'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-52', id, 'collection-52', 'Ates Kuslari Season 2 in Urdu Subtitles', 'subtitled', '{"2"}', 'Ates Kuslari Season 2 in Urdu Subtitles', 28, 'published'
FROM public.dramas WHERE source_id = 'ates-kuslari'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-51', id, 'collection-51', 'Halka Series Urdu Subtitles', 'subtitled', '{"1"}', 'Halka Series Urdu Subtitles', 29, 'published'
FROM public.dramas WHERE source_id = 'halka'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-49', id, 'collection-49', 'Dokuz Oguz Series in Urdu Subtitles', 'subtitled', '{"1"}', 'Dokuz Oguz Series in Urdu Subtitles', 30, 'published'
FROM public.dramas WHERE source_id = 'dokuz-oguz'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-48', id, 'collection-48', 'The Pit (Cukur) Season 1 Urdu Subtitles', 'subtitled', '{"1"}', 'The Pit (Cukur) Season 1 Urdu Subtitles', 31, 'published'
FROM public.dramas WHERE source_id = 'the-pit-cukur'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-47', id, 'collection-47', 'Mevlana Celaleddin Rumi in Urdu Subtitles', 'subtitled', '{"1"}', 'Mevlana Celaleddin Rumi in Urdu Subtitles', 32, 'published'
FROM public.dramas WHERE source_id = 'mevlana-celaleddin-rumi'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-46', id, 'collection-46', 'Mendirman Jaloliddin Season 2 Urdu Subtitles', 'subtitled', '{"2"}', 'Mendirman Jaloliddin Season 2 Urdu Subtitles', 33, 'published'
FROM public.dramas WHERE source_id = 'mendirman-jaloliddin'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-43', id, 'collection-43', 'Kurulus Osman Season 4 Urdu Dubbed', 'dubbed', '{"4"}', 'Kurulus Osman Season 4 Urdu Dubbed', 34, 'published'
FROM public.dramas WHERE source_id = 'kurulus-osman'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-42', id, 'collection-42', 'Al Sancak Urdu Subtitles', 'subtitled', '{"1"}', 'Al Sancak Urdu Subtitles', 35, 'published'
FROM public.dramas WHERE source_id = 'al-sancak'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-41', id, 'collection-41', 'Barbaroslar Season 2 Urdu and English Subtitles', 'subtitled', '{"2"}', 'Barbaroslar Season 2 Urdu and English Subtitles', 36, 'published'
FROM public.dramas WHERE source_id = 'barbaroslar'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-40', id, 'collection-40', 'Teskilat Season 3 Urdu Subtitles', 'subtitled', '{"3"}', 'Teskilat Season 3 Urdu Subtitles', 37, 'published'
FROM public.dramas WHERE source_id = 'teskilat'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-38', id, 'collection-38', 'Kurulus Osman Season 4 in Urdu & English Subtitles', 'subtitled', '{"4"}', 'Kurulus Osman Season 4 in Urdu & English Subtitles', 38, 'published'
FROM public.dramas WHERE source_id = 'kurulus-osman'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-37', id, 'collection-37', 'Alparslan: Büyük Selçuklu Season 2 in Urdu Subtitles', 'subtitled', '{"2"}', 'Alparslan: Büyük Selçuklu Season 2 in Urdu Subtitles', 39, 'published'
FROM public.dramas WHERE source_id = 'alparslan-buyuk-selcuklu'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-36', id, 'collection-36', 'Soz Season 3 Urdu Subtitles', 'subtitled', '{"3"}', 'Soz Season 3 Urdu Subtitles', 40, 'published'
FROM public.dramas WHERE source_id = 'soz'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-34', id, 'collection-34', 'Kurulus Osman Season 3 - Urdu Dubbed', 'dubbed', '{"3"}', 'Kurulus Osman Season 3 - Urdu Dubbed', 41, 'published'
FROM public.dramas WHERE source_id = 'kurulus-osman'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-33', id, 'collection-33', 'Teskilat Season 2 in Urdu Subtitles', 'subtitled', '{"2"}', 'Teskilat Season 2 in Urdu Subtitles', 42, 'published'
FROM public.dramas WHERE source_id = 'teskilat'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-32', id, 'collection-32', 'Teskilat Season 1 in Urdu Subtitles', 'subtitled', '{"1"}', 'Teskilat Season 1 in Urdu Subtitles', 43, 'published'
FROM public.dramas WHERE source_id = 'teskilat'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-31', id, 'collection-31', 'Soz Season 2 in Urdu Subtitles', 'subtitled', '{"2"}', 'Soz Season 2 in Urdu Subtitles', 44, 'published'
FROM public.dramas WHERE source_id = 'soz'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-30', id, 'collection-30', 'Soz Season 1 in Urdu Subtitles', 'subtitled', '{"1"}', 'Soz Season 1 in Urdu Subtitles', 45, 'published'
FROM public.dramas WHERE source_id = 'soz'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-28', id, 'collection-28', 'Destan in Urdu & English Subtitles', 'subtitled', '{"1"}', 'Destan in Urdu & English Subtitles', 46, 'published'
FROM public.dramas WHERE source_id = 'destan'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-27', id, 'collection-27', 'Alparslan: Büyük Selçuklu Season 1 in Urdu Subtitle', 'subtitled', '{"1"}', 'Alparslan: Büyük Selçuklu Season 1 in Urdu Subtitle', 47, 'published'
FROM public.dramas WHERE source_id = 'alparslan-buyuk-selcuklu'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-26', id, 'collection-26', 'Kurulus Osman Season 2 - Urdu Dubbed', 'dubbed', '{"2"}', 'Kurulus Osman Season 2 - Urdu Dubbed', 48, 'published'
FROM public.dramas WHERE source_id = 'kurulus-osman'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-25', id, 'collection-25', 'Kurulus Osman Season 3 in Urdu & English Subtitles', 'subtitled', '{"3"}', 'Kurulus Osman Season 3 in Urdu & English Subtitles', 49, 'published'
FROM public.dramas WHERE source_id = 'kurulus-osman'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-24', id, 'collection-24', 'Barbaroslar Season 1 Urdu & English Subtitles', 'subtitled', '{"1"}', 'Barbaroslar Season 1 Urdu & English Subtitles', 50, 'published'
FROM public.dramas WHERE source_id = 'barbaroslar'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-23', id, 'collection-23', 'Kurulus Osman Season 1 - Urdu Dubbed', 'dubbed', '{"1"}', 'Kurulus Osman Season 1 - Urdu Dubbed', 51, 'published'
FROM public.dramas WHERE source_id = 'kurulus-osman'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-22', id, 'collection-22', 'Mendirman Jaloliddin Season 1 Urdu Subtitles', 'subtitled', '{"1"}', 'Mendirman Jaloliddin Season 1 Urdu Subtitles', 52, 'published'
FROM public.dramas WHERE source_id = 'mendirman-jaloliddin'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-21', id, 'collection-21', 'Yunus Emre Season 2 in Urdu Subtitles', 'subtitled', '{"2"}', 'Yunus Emre Season 2 in Urdu Subtitles', 53, 'published'
FROM public.dramas WHERE source_id = 'yunus-emre'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-20', id, 'collection-20', 'Yunus Emre Season 1 in Urdu Subtitles', 'subtitled', '{"1"}', 'Yunus Emre Season 1 in Urdu Subtitles', 54, 'published'
FROM public.dramas WHERE source_id = 'yunus-emre'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-19', id, 'collection-19', 'Sultan Abdulhamid Season 5 in Urdu Subtitles', 'subtitled', '{"5"}', 'Sultan Abdulhamid Season 5 in Urdu Subtitles', 55, 'published'
FROM public.dramas WHERE source_id = 'sultan-abdulhamid'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-18', id, 'collection-18', 'Sultan Abdulhamid Season 4 in Urdu Subtitles', 'subtitled', '{"4"}', 'Sultan Abdulhamid Season 4 in Urdu Subtitles', 56, 'published'
FROM public.dramas WHERE source_id = 'sultan-abdulhamid'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-17', id, 'collection-17', 'Sultan Abdulhamid Season 3 in Urdu Subtitles', 'subtitled', '{"3"}', 'Sultan Abdulhamid Season 3 in Urdu Subtitles', 57, 'published'
FROM public.dramas WHERE source_id = 'sultan-abdulhamid'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-16', id, 'collection-16', 'Sultan Abdulhamid Season 2 in Urdu Subtitles', 'subtitled', '{"2"}', 'Sultan Abdulhamid Season 2 in Urdu Subtitles', 58, 'published'
FROM public.dramas WHERE source_id = 'sultan-abdulhamid'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-11', id, 'collection-11', 'Sultan Abdulhamid Season 1 in Urdu Subtitles', 'subtitled', '{"1"}', 'Sultan Abdulhamid Season 1 in Urdu Subtitles', 59, 'published'
FROM public.dramas WHERE source_id = 'sultan-abdulhamid'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-10', id, 'collection-10', 'Kosem Sultan Season 1 & 2', 'unresolved', '{"1","2"}', 'Kosem Sultan Season 1 & 2', 60, 'published'
FROM public.dramas WHERE source_id = 'kosem-sultan'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-8', id, 'collection-8', 'Kurulus Osman Season 2 Urdu & English Subtitles', 'subtitled', '{"2"}', 'Kurulus Osman Season 2 Urdu & English Subtitles', 61, 'published'
FROM public.dramas WHERE source_id = 'kurulus-osman'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


INSERT INTO public.collections (source_id, drama_id, slug, label, collection_type, reported_seasons, version_label, sort_order, status)
SELECT 'collection-7', id, 'collection-7', 'Kurulus Osman Season 1 Urdu & English Subtitles', 'subtitled', '{"1"}', 'Kurulus Osman Season 1 Urdu & English Subtitles', 62, 'published'
FROM public.dramas WHERE source_id = 'kurulus-osman'
ON CONFLICT (source_id) DO UPDATE SET
  label = EXCLUDED.label,
  collection_type = EXCLUDED.collection_type,
  reported_seasons = EXCLUDED.reported_seasons,
  version_label = EXCLUDED.version_label,
  sort_order = EXCLUDED.sort_order,
  updated_at = now();


