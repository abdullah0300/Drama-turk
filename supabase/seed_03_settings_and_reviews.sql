-- Site Settings & Review Findings

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


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-2400',
  'Behind-the-scenes extra; excluded from episode navigation.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/50/single-serie?watch=1&episode=2400","http_status":200,"headings":["Install Our Website App","Kurulus Osman Season 5 in Urdu Subtitles","Kurulus Osman Season 5: Shooting & Release Date            Watching Now!","Kurulus Osman Season 5 in Urdu Subtitles | Release Date & Behind the Scenes","The Future of Kurulus Osman: Will There Be a Season 5?","Introduction","A Hint of More to Come","A History of Success","Echoes of a Promising Future","Exploring the Historical Tapestry","The Anticipated Season 5 Release Date","Conclusion","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Behind-the-scenes extra; excluded from episode navigation.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-330',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=330","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 1            Watching Now!","Kosem Sultan Season 1 & 2 Episode 1 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-2404',
  'Behind-the-scenes extra; excluded from episode navigation.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/50/single-serie?watch=1&episode=2404","http_status":200,"headings":["Install Our Website App","Kurulus Osman Season 5 in Urdu Subtitles","Kurulus Osman Season 5: Behind the Scenes - Part 2            Watching Now!","Kurulus Osman Season 5 in Urdu Subtitles - Continuing the Epic Journey with Historical Authenticity","Introduction","Continuing the Epic Journey","Urdu Subtitles: Bridging Language Barriers","Historical Authenticity","Character Evolution","Behind the Scenes: The Making of an Epic","The Future of Kurulus Osman","Conclusion","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Behind-the-scenes extra; excluded from episode navigation.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-331',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=331","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 2            Watching Now!","Kosem Sultan Season 1 & 2 Episode 2 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-2405',
  'Behind-the-scenes extra; excluded from episode navigation.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/50/single-serie?watch=1&episode=2405","http_status":200,"headings":["Install Our Website App","Kurulus Osman Season 5 in Urdu Subtitles","Kurulus Osman Season 5: Behind the Scenes - Part 3            Watching Now!","Kurulus Osman Season 5 in English Subtitles - A Journey of Bravery, Legacy, and Anticipation","Introduction","Continuing the Epic Saga","English Subtitles: Bridging Language Barriers","Historical Authenticity","Character Evolution","Behind the Scenes: The Making of an Epic","Renewal and Anticipation","A Promising Future","Release Date","Conclusion","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Behind-the-scenes extra; excluded from episode navigation.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-332',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=332","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 3            Watching Now!","Kosem Sultan Season 1 & 2 Episode 3 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-2408',
  'Behind-the-scenes extra; excluded from episode navigation.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/50/single-serie?watch=1&episode=2408","http_status":200,"headings":["Install Our Website App","Kurulus Osman Season 5 in Urdu Subtitles","Kurulus Osman Season 5 - Behind the Scenes Part 4            Watching Now!","Bala Hatun on the Set: Kurulus Osman Season 5 Updates","Introduction","The Awaited Green Light","Hints from the Maestro","A Triumph of Turkish Television","Paving the Way: Bozdag''s Vision","A Tapestry of Historical Riches","The Countdown Begins","Conclusion","","FAQs","Q1: Has \"Kurulus Osman\" Season 5 been officially announced?","Q2: What hints did Mehmet Bozdag drop about the show''s future?","Q3: Is \"Kurulus Osman\" historically accurate?","Q4: When is the potential release date for Season 5?","Q5: What makes \"Kurulus Osman\" stand out among TV series?","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Behind-the-scenes extra; excluded from episode navigation.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-333',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=333","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 4            Watching Now!","Kosem Sultan Season 1 & 2 Episode 4 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-334',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=334","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 5            Watching Now!","Kosem Sultan Season 1 & 2 Episode 5 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-335',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=335","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 6            Watching Now!","Kosem Sultan Season 1 & 2 Episode 6 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-336',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=336","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 7            Watching Now!","Kosem Sultan Season 1 & 2 Episode 7 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-337',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=337","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 8            Watching Now!","Kosem Sultan Season 1 & 2 Episode 8 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-338',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=338","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 9            Watching Now!","Kosem Sultan Season 1 & 2 Episode 9 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-339',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=339","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 10            Watching Now!","Kosem Sultan Season 1 & 2 Episode 10 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-340',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=340","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 11            Watching Now!","Kosem Sultan Season 1 & 2 Episode 11 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-2864',
  'Use source-reported Season 2; heading and stream path agree.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/47/single-serie?watch=1&episode=2864","http_status":200,"headings":["Install Our Website App","Mevlana Celaleddin Rumi in Urdu Subtitles","Season 2 Episode 12            Watching Now!","Rumi Season 2 Episode 12 in Urdu Subtitles","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Use source-reported Season 2; heading and stream path agree.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-341',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=341","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 12            Watching Now!","Kosem Sultan Season 1 & 2 Episode 12 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-2865',
  'Use source-reported Season 2; heading and stream path agree.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/47/single-serie?watch=1&episode=2865","http_status":200,"headings":["Install Our Website App","Mevlana Celaleddin Rumi in Urdu Subtitles","Season 2 Episode 13            Watching Now!","Rumi Season 2 Episode 13 in Urdu Subtitles","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Use source-reported Season 2; heading and stream path agree.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-342',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=342","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 13            Watching Now!","Kosem Sultan Season 1 & 2 Episode 13 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-2866',
  'Use source-reported Season 2; heading and stream path agree.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/47/single-serie?watch=1&episode=2866","http_status":200,"headings":["Install Our Website App","Mevlana Celaleddin Rumi in Urdu Subtitles","Season 2 Episode 14            Watching Now!","Rumi Season 2 Episode 14 in Urdu Subtitles","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Use source-reported Season 2; heading and stream path agree.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-343',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=343","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 14            Watching Now!","Kosem Sultan Season 1 & 2 Episode 14 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-2867',
  'Use source-reported Season 2; heading and stream path agree.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/47/single-serie?watch=1&episode=2867","http_status":200,"headings":["Install Our Website App","Mevlana Celaleddin Rumi in Urdu Subtitles","Season 2 Episode 15            Watching Now!","Rumi Season 2 Episode 15 in Urdu Subtitles","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Use source-reported Season 2; heading and stream path agree.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-344',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=344","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 15            Watching Now!","Kosem Sultan Season 1 & 2 Episode 15 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-2868',
  'Use source-reported Season 2; heading and stream path agree.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/47/single-serie?watch=1&episode=2868","http_status":200,"headings":["Install Our Website App","Mevlana Celaleddin Rumi in Urdu Subtitles","Season 2 Episode 16            Watching Now!","Rumi Season 2 Episode 16 in Urdu Subtitles","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Use source-reported Season 2; heading and stream path agree.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-345',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=345","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 16            Watching Now!","Kosem Sultan Season 1 & 2 Episode 16 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-2869',
  'Use source-reported Season 2; heading and stream path agree.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/47/single-serie?watch=1&episode=2869","http_status":200,"headings":["Install Our Website App","Mevlana Celaleddin Rumi in Urdu Subtitles","Season 2 Episode 17            Watching Now!","Rumi Season 2 Episode 17 in Urdu Subtitles","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Use source-reported Season 2; heading and stream path agree.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-346',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=346","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 17            Watching Now!","Kosem Sultan Season 1 & 2 Episode 17 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-2870',
  'Use source-reported Season 2; heading and stream path agree.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/47/single-serie?watch=1&episode=2870","http_status":200,"headings":["Install Our Website App","Mevlana Celaleddin Rumi in Urdu Subtitles","Season 2 Episode 18            Watching Now!","Rumi Season 2 Episode 18 in Urdu Subtitles","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Use source-reported Season 2; heading and stream path agree.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-347',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=347","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 18            Watching Now!","Kosem Sultan Season 1 & 2 Episode 18 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-2871',
  'Use source-reported Season 2; heading and stream path agree.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/47/single-serie?watch=1&episode=2871","http_status":200,"headings":["Install Our Website App","Mevlana Celaleddin Rumi in Urdu Subtitles","Season 2 Episode 19            Watching Now!","Rumi Season 2 Episode 19 in Urdu Subtitles","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Use source-reported Season 2; heading and stream path agree.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-348',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=348","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 19            Watching Now!","Kosem Sultan Season 1 & 2 Episode 19 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-2872',
  'Use source-reported Season 2; heading and stream path agree.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/47/single-serie?watch=1&episode=2872","http_status":200,"headings":["Install Our Website App","Mevlana Celaleddin Rumi in Urdu Subtitles","Rumi Season 2 Last Episode 20            Watching Now!","Rumi Season 2 Last Episode 20 in Urdu Subtitles","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Use source-reported Season 2; heading and stream path agree.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-349',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=349","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 20            Watching Now!","Kosem Sultan Season 1 & 2 Episode 20 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-350',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=350","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 21            Watching Now!","Kosem Sultan Season 1 & 2 Episode 21 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-351',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=351","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 22            Watching Now!","Kosem Sultan Season 1 & 2 Episode 22 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-352',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=352","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 23            Watching Now!","Kosem Sultan Season 1 & 2 Episode 23 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-353',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=353","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 24            Watching Now!","Kosem Sultan Season 1 & 2 Episode 24 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-1974',
  'Live page returns a soft 404 (HTTP 200 with page-not-found heading); retain failed record and exclude from playback.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/37/single-serie?watch=1&episode=1974","http_status":200,"headings":["Install Our Website App","Oops! We can''t find that page"],"checked_on":"2026-09-30"}',
  true,
  'Live page returns a soft 404 (HTTP 200 with page-not-found heading); retain failed record and exclude from playback.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-354',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=354","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 25            Watching Now!","Kosem Sultan Season 1 & 2 Episode 25 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-355',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=355","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 26            Watching Now!","Kosem Sultan Season 1 & 2 Episode 26 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-356',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=356","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 27            Watching Now!","Kosem Sultan Season 1 & 2 Episode 27 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-357',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=357","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 28            Watching Now!","Kosem Sultan Season 1 & 2 Episode 28 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-358',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=358","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 29            Watching Now!","Kosem Sultan Season 1 & 2 Episode 29 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-359',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=359","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 30            Watching Now!","Kosem Sultan Season 1 & 2 Episode 30 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-360',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=360","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 31            Watching Now!","Kosem Sultan Season 1 & 2 Episode 31 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-361',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=361","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 32            Watching Now!","Kosem Sultan Season 1 & 2 Episode 32 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-362',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=362","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 33            Watching Now!","Kosem Sultan Season 1 & 2 Episode 33 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-363',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=363","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 34            Watching Now!","Kosem Sultan Season 1 & 2 Episode 34 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-364',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=364","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 35            Watching Now!","Kosem Sultan Season 1 & 2 Episode 35 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-365',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=365","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 36            Watching Now!","Kosem Sultan Season 1 & 2 Episode 36 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-366',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=366","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 37            Watching Now!","Kosem Sultan Season 1 & 2 Episode 37 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-367',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=367","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 38            Watching Now!","Kosem Sultan Season 1 & 2 Episode 38 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-368',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=368","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 39            Watching Now!","Kosem Sultan Season 1 & 2 Episode 39 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-369',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=369","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 40            Watching Now!","Kosem Sultan Season 1 & 2 Episode 40 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-370',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=370","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 41            Watching Now!","Kosem Sultan Season 1 & 2 Episode 41 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-371',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=371","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 42            Watching Now!","Kosem Sultan Season 1 & 2 Episode 42 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-372',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=372","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 43            Watching Now!","Kosem Sultan Season 1 & 2 Episode 43 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-373',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=373","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 44            Watching Now!","Kosem Sultan Season 1 & 2 Episode 44 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-374',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=374","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 45            Watching Now!","Kosem Sultan Season 1 & 2 Episode 45 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-375',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=375","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 46            Watching Now!","Kosem Sultan Season 1 & 2 Episode 46 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-376',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=376","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 47            Watching Now!","Kosem Sultan Season 1 & 2 Episode 47 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-377',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=377","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 48            Watching Now!","Kosem Sultan Season 1 & 2 Episode 48 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-378',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=378","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 49            Watching Now!","Kosem Sultan Season 1 & 2 Episode 49 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-379',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=379","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 50            Watching Now!","Kosem Sultan Season 1 & 2 Episode 50 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-380',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=380","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 51            Watching Now!","Kosem Sultan Season 1 & 2 Episode 51 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-381',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=381","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 52            Watching Now!","Kosem Sultan Season 1 & 2 Episode 52 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-382',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=382","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 53            Watching Now!","Kosem Sultan Season 1 & 2 Episode 53 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-383',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=383","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 54            Watching Now!","Kosem Sultan Season 1 & 2 Episode 54 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-384',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=384","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 55            Watching Now!","Kosem Sultan Season 1 & 2 Episode 55 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-385',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=385","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 56            Watching Now!","Kosem Sultan Season 1 & 2 Episode 56 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-386',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=386","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 57            Watching Now!","Kosem Sultan Season 1 & 2 Episode 57 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-387',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=387","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 58            Watching Now!","Kosem Sultan Season 1 & 2 Episode 58 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-388',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=388","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 59            Watching Now!","Kosem Sultan Season 1 & 2 Episode 59 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);


INSERT INTO public.review_findings (target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes)
VALUES (
  'video-389',
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.',
  'warning',
  '{"url":"https://play.niazitv.pk/drama/10/single-serie?watch=1&episode=389","http_status":200,"headings":["Install Our Website App","Kosem Sultan Season 1 & 2","Episode 60            Watching Now!","Kosem Sultan Season 1 & 2 Episode 60 Watch Now","More Episodes"],"checked_on":"2026-09-30"}',
  true,
  'Keep combined Seasons 1 & 2; metadata claims Urdu and English subtitles, media and season boundary remain unverified.'
);
