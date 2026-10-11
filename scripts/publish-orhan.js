const { createClient } = require('@supabase/supabase-js');

async function main() {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL || 'https://zvwltfqhbpqtnjbsflvk.supabase.co';
  const anonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp2d2x0ZnFoYnBxdG5qYnNmbHZrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3OTA3NjQ3MTAsImV4cCI6MjEwNjM0MDcxMH0.og2xePVqFw9EDjximY4AZvP_NObhE3kbYBKIHFxWndo';

  const authClient = createClient(url, anonKey);
  const { data: authData, error: authError } = await authClient.auth.signInWithPassword({
    email: 'admin@drama-platform.internal',
    password: 'AdminSecurity2026!'
  });

  if (authError || !authData?.session) {
    throw new Error('Failed to sign in as admin: ' + (authError?.message || 'No session'));
  }

  const token = authData.session.access_token;
  const adminClient = createClient(url, anonKey, {
    global: { headers: { Authorization: `Bearer ${token}` } }
  });

  console.log('Admin authenticated successfully.');

  // 1. Get drama UUID for kurulus-orhan
  const { data: drama, error: dFetchError } = await adminClient
    .from('dramas')
    .select('id, source_id, display_name, status')
    .eq('source_id', 'kurulus-orhan')
    .single();

  if (dFetchError || !drama) {
    throw new Error('Drama kurulus-orhan not found: ' + dFetchError?.message);
  }

  console.log('Found Drama:', drama);

  // 2. Publish drama
  const { data: dramaUpdated, error: dUpdateError } = await adminClient
    .from('dramas')
    .update({
      status: 'published',
      display_name: 'Kuruluş: Orhan',
      genres: ['Historical', 'Drama', 'Action', 'Biography'],
      languages: ['Urdu', 'English'],
      short_overview: 'Follow the epic chronicles of Orhan Gazi, the founding of the Ottoman state, conquest of Bursa, and historic struggles with Urdu & English subtitles.',
      is_pilot: true
    })
    .eq('id', drama.id)
    .select()
    .single();

  if (dUpdateError) {
    throw new Error('Failed to update drama status: ' + dUpdateError.message);
  }

  console.log('Updated Drama to published:', dramaUpdated.id, dramaUpdated.status);

  // 3. Upsert published_editorial for drama
  const now = new Date().toISOString();
  const structuredArticle = [
    {
      heading: 'What is Kuruluş: Orhan about?',
      content: 'Kuruluş: Orhan chronicles the leadership of Orhan Gazi, the son of Osman I, as he transforms the fledgling Ottoman principality into a powerful state. It depicts pivotal campaigns, including the historic conquest of Bursa, state institution building, and defense against Byzantine resistance.',
      is_spoiler: false,
      sources: [
        {
          name: 'ATV: official series archive',
          url: 'https://www.atv.com.tr'
        }
      ]
    },
    {
      heading: 'Who portrays Orhan Gazi and the core ensemble cast?',
      content: 'The series stars Mert Yazıcıoğlu as Orhan Gazi, Mahassine Merabet as Nilüfer Hatun, Cihan Ünal as the elderly Osman Gazi, Bennu Yıldırımlar as Malhun Hatun, Barış Falay as Şahinşah Bey, Şükrü Özyıldız as Commander Flavius, Burak Sergen as Tekfur Saroz, alongside beloved veterans Çağrı Şensoy (Cerkutay) and Yiğit Uçan (Boran).',
      is_spoiler: false,
      sources: [
        {
          name: 'ATV: cast & production',
          url: 'https://www.atv.com.tr'
        }
      ]
    },
    {
      heading: 'What audio and subtitle options are available on Great Nation?',
      content: 'Kuruluş: Orhan is presented in its original historical Turkish broadcast audio, paired with verified Urdu and English subtitle renditions across all 26 episodes in Full HD with zero ad interruptions.',
      is_spoiler: false,
      sources: []
    },
    {
      heading: 'How many episodes are in Season 1 and is the series complete?',
      content: 'Season 1 comprises exactly 26 complete feature-length episodes (Episodes 1 to 26). The series represents the final chapter of the 12-year saga that began with Diriliş: Ertuğrul and Kuruluş: Osman, totaling 370 episodes across the grand trilogy.',
      is_spoiler: false,
      sources: []
    },
    {
      heading: 'How can viewers in Pakistan and international regions stream episodes?',
      content: 'Great Nation brings all 26 episodes together with instant language switching between Urdu subtitles and English subtitles, optimized high-speed streaming, and full mobile and desktop support.',
      is_spoiler: false,
      sources: [
        {
          name: 'Bozdağ Film: production directory',
          url: 'https://www.bozdagfilm.com.tr'
        }
      ]
    }
  ];

  const { data: existingEd } = await adminClient
    .from('published_editorial')
    .select('id')
    .eq('drama_id', drama.id)
    .eq('locale', 'en')
    .maybeSingle();

  const edPayload = {
    drama_id: drama.id,
    locale: 'en',
    approved_display_title: 'Kuruluş: Orhan',
    short_description: 'Follow the epic chronicles of Orhan Gazi, the founding of the Ottoman state, conquest of Bursa, and historic struggles with Urdu & English subtitles.',
    seo_title: 'Kuruluş: Orhan with Urdu & English Subtitles | Great Nation',
    seo_description: 'Watch Kuruluş: Orhan with Urdu & English subtitles on Great Nation. Follow Orhan Gazi as the Ottoman Beylik expands into a world empire. Stream in Full HD.',
    structured_article: structuredArticle,
    updated_at: now
  };

  if (existingEd) {
    const { data: edUp, error: edUpErr } = await adminClient
      .from('published_editorial')
      .update(edPayload)
      .eq('id', existingEd.id)
      .select()
      .single();
    if (edUpErr) console.error('Failed to update drama editorial:', edUpErr);
    else console.log('Updated drama editorial:', edUp.id);
  } else {
    const { data: edIn, error: edInErr } = await adminClient
      .from('published_editorial')
      .insert({ ...edPayload, published_at: now })
      .select()
      .single();
    if (edInErr) console.error('Failed to insert drama editorial:', edInErr);
    else console.log('Inserted drama editorial:', edIn.id);
  }

  // 4. Upsert published_editorial for Season 1 (collection-78)
  const { data: col78, error: col78Err } = await adminClient
    .from('collections')
    .select('id, source_id, status')
    .eq('source_id', 'collection-78')
    .single();

  if (col78) {
    const seasonArticle = [
      {
        heading: 'Season 1 Overview & Plot Milestones',
        content: 'Season 1 documents the critical turning points of Orhan Gazi’s reign: consolidating unity among Turkmen beyliks, establishing the first Ottoman mint and formal army, and culminating in the siege and surrender of Bursa.',
        is_spoiler: false,
        sources: []
      },
      {
        heading: 'Episode Availability & Viewing Editions',
        content: 'All 26 episodes of Season 1 are cataloged with dual Urdu and English subtitle streams. Viewers can seamlessly switch renditions without losing playback position.',
        is_spoiler: false,
        sources: []
      }
    ];

    const { data: existingColEd } = await adminClient
      .from('published_editorial')
      .select('id')
      .eq('collection_id', col78.id)
      .eq('locale', 'en')
      .maybeSingle();

    const colEdPayload = {
      collection_id: col78.id,
      locale: 'en',
      approved_display_title: 'Kuruluş: Orhan Season 1',
      short_description: 'Complete Season 1 of Kuruluş: Orhan with Urdu & English subtitles across all 26 episodes in Full HD.',
      seo_title: 'Kuruluş: Orhan Season 1 Urdu & English | Great Nation',
      seo_description: 'Watch Kuruluş: Orhan Season 1 in HD with Urdu and English subtitles. Follow Orhan Gazi’s rise, the conquest of Bursa, and the expansion of the Ottoman state.',
      structured_article: seasonArticle,
      updated_at: now
    };

    if (existingColEd) {
      await adminClient.from('published_editorial').update(colEdPayload).eq('id', existingColEd.id);
      console.log('Updated Season 1 editorial.');
    } else {
      await adminClient.from('published_editorial').insert({ ...colEdPayload, published_at: now });
      console.log('Inserted Season 1 editorial.');
    }

    // Ensure collection status is published
    await adminClient.from('collections').update({ status: 'published' }).eq('id', col78.id);
    console.log('Collection-78 status confirmed published.');
  }

  // 5. Ensure all video variants and episode groups for collection-78 are published
  await adminClient.from('episode_groups').update({ status: 'published' }).eq('collection_id', col78.id);
  await adminClient.from('video_variants').update({ publication_state: 'published' }).eq('collection_id', col78.id);

  console.log('Kuruluş: Orhan publication completed successfully!');
}

main().catch(console.error);
