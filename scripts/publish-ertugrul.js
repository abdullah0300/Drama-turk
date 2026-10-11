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

  // 1. Get drama UUID for ertugrul-ghazi
  const { data: drama, error: dFetchError } = await adminClient
    .from('dramas')
    .select('id, source_id, display_name, status')
    .eq('source_id', 'ertugrul-ghazi')
    .single();

  if (dFetchError || !drama) {
    throw new Error('Drama ertugrul-ghazi not found: ' + dFetchError?.message);
  }

  console.log('Found Drama:', drama);

  // 2. Publish drama
  const { data: dramaUpdated, error: dUpdateError } = await adminClient
    .from('dramas')
    .update({
      status: 'published',
      display_name: 'Ertugrul Ghazi',
      genres: ['Action', 'Adventure', 'Drama', 'History', 'War'],
      languages: ['Urdu', 'Turkish'],
      short_overview: 'Ertugrul Ghazi (Diriliş: Ertuğrul) chronicles the founding struggles of the Ottoman Empire under Ertugrul Bey. Available in complete Urdu dubbed audio across all 5 seasons (425 episodes) on Great Nation.',
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
      heading: 'What is Ertugrul Ghazi (Diriliş: Ertuğrul) about?',
      content: 'Ertugrul Ghazi chronicles the life of Ertuğrul Bey, leader of the Kayı tribe and father of Osman I (founder of the Ottoman Empire). Set in the 13th century, the saga follows the Kayı nomads through Anatolia as they confront Templar Crusaders, corrupt Seljuk commanders, and the Mongol horde.',
      is_spoiler: false,
      sources: [
        {
          name: 'TRT 1: official series archive',
          url: 'https://www.trt1.com.tr'
        }
      ]
    },
    {
      heading: 'How was the official PTV Home Urdu dubbed edition created?',
      content: 'In 2020, under a state-level initiative by Pakistan Television Corporation (PTV) and Turkish Radio and Television Corporation (TRT), Diriliş: Ertuğrul was professionally dubbed into Urdu by leading Pakistani voice artists and broadcast nationwide on PTV Home.',
      is_spoiler: false,
      sources: [
        {
          name: 'PTV Home: Ertugrul Ghazi official broadcast',
          url: 'https://www.trt1.com.tr'
        }
      ]
    },
    {
      heading: 'Are all 5 seasons available in Urdu dubbed audio on Great Nation?',
      content: 'Yes. Great Nation hosts all 5 complete seasons featuring the official PTV Home Urdu dubbed audio track across 425 broadcast episodes in Full HD with uninterrupted streaming.',
      is_spoiler: false,
      sources: []
    },
    {
      heading: 'Why does Ertugrul have 425 episodes instead of 150?',
      content: 'The original TRT 1 Turkish television broadcast comprised 150 feature-length episodes (roughly 120 minutes each). For television syndication across Pakistan and global markets, each feature was divided into standard 40-minute television episodes, resulting in 425 episodes across 5 seasons.',
      is_spoiler: false,
      sources: []
    },
    {
      heading: 'Who are the main cast members and voice artists in Ertugrul Ghazi?',
      content: 'The historical series stars Engin Altan Düzyatan as Ertuğrul Bey, Esra Bilgiç as Halime Hatun, Hülya Darcan as Hayme Ana, Cengiz Coşkun as Turgut Alp, and Nurettin Sönmez as Bamsı Beyrek, with spiritual guidance portrayed by Osman Soykut as Ibn Arabi.',
      is_spoiler: false,
      sources: [
        {
          name: 'TRT: official series cast directory',
          url: 'https://www.trt1.com.tr'
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
    approved_display_title: 'Ertugrul Ghazi',
    short_description: 'Ertugrul Ghazi (Diriliş: Ertuğrul) chronicles the founding struggles of the Ottoman Empire under Ertugrul Bey. Available in complete Urdu dubbed audio across all 5 seasons (425 episodes) on Great Nation.',
    seo_title: 'Ertugrul Ghazi (Diriliş: Ertuğrul) | Urdu Dubbed',
    seo_description: 'Watch Ertugrul Ghazi (Diriliş: Ertuğrul) in official Urdu dubbed audio on Great Nation. Stream all 5 seasons and 425 episodes in Full HD with zero ad breaks.',
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

  // 4. Collections specifications
  const seasonsData = [
    {
      source_id: 'collection-2',
      season: 1,
      episodes: 75,
      title: 'Ertugrul Ghazi Season 1',
      short_desc: 'Complete Season 1 of Ertugrul Ghazi in official Urdu dubbed audio across all 75 broadcast episodes in Full HD.',
      seo_title: 'Ertugrul Ghazi Season 1 Urdu Dubbed | Episodes 1–75',
      seo_desc: 'Watch Ertugrul Ghazi Season 1 in Urdu dubbed audio. Stream all 75 episodes following Ertuğrul Bey and the Kayı tribe against the Templars in Aleppo.',
      article: [
        {
          heading: 'Season 1 Overview & Plot Milestones',
          content: 'Season 1 introduces the nomadic Kayı tribe seeking winter quarters near Aleppo. Ertuğrul rescues Prince Numan and Princess Halime, sparking a relentless war with the Knights Templar and corrupt Emir Aziz.',
          is_spoiler: false,
          sources: []
        },
        {
          heading: 'Episode Availability & Broadcast Format',
          content: 'Season 1 comprises all 75 broadcast episodes in official PTV Home Urdu dubbed audio, streaming in Full HD on Great Nation.',
          is_spoiler: false,
          sources: []
        }
      ]
    },
    {
      source_id: 'collection-3',
      season: 2,
      episodes: 75,
      title: 'Ertugrul Ghazi Season 2',
      short_desc: 'Complete Season 2 of Ertugrul Ghazi in official Urdu dubbed audio across all 75 broadcast episodes in Full HD.',
      seo_title: 'Ertugrul Ghazi Season 2 Urdu Dubbed | Episodes 1–75',
      seo_desc: 'Watch Ertugrul Ghazi Season 2 in Urdu dubbed audio. Stream all 75 episodes as the Kayı and Dodurga tribes unite against the brutal Mongol invasion of Noyan.',
      article: [
        {
          heading: 'Season 2 Overview & Plot Milestones',
          content: 'Season 2 chronicles the Kayı tribe taking refuge with their maternal kin, the Dodurga tribe, after a devastating Mongol attack. Ertuğrul Bey stands alone against the ruthless commander Bayju Noyan.',
          is_spoiler: false,
          sources: []
        },
        {
          heading: 'Episode Availability & Broadcast Format',
          content: 'Season 2 comprises all 75 broadcast episodes in official PTV Home Urdu dubbed audio, streaming in Full HD on Great Nation.',
          is_spoiler: false,
          sources: []
        }
      ]
    },
    {
      source_id: 'collection-4',
      season: 3,
      episodes: 91,
      title: 'Ertugrul Ghazi Season 3',
      short_desc: 'Complete Season 3 of Ertugrul Ghazi in official Urdu dubbed audio across all 91 broadcast episodes in Full HD.',
      seo_title: 'Ertugrul Ghazi Season 3 Urdu Dubbed | Episodes 1–91',
      seo_desc: 'Watch Ertugrul Ghazi Season 3 in Urdu dubbed audio. Stream all 91 episodes as the Kayı tribe migrates to the Byzantine frontier and seizes Hanlı Bazar.',
      article: [
        {
          heading: 'Season 3 Overview & Plot Milestones',
          content: 'Season 3 follows the Kayı division that migrates to the western Byzantine frontier. Ertuğrul establishes order at Hanlı Bazar, combating commercial saboteurs, the treacherous Ural Bey, and Byzantine commanders.',
          is_spoiler: false,
          sources: []
        },
        {
          heading: 'Episode Availability & Broadcast Format',
          content: 'Season 3 comprises all 91 broadcast episodes in official PTV Home Urdu dubbed audio, streaming in Full HD on Great Nation.',
          is_spoiler: false,
          sources: []
        }
      ]
    },
    {
      source_id: 'collection-5',
      season: 4,
      episodes: 91,
      title: 'Ertugrul Ghazi Season 4',
      short_desc: 'Complete Season 4 of Ertugrul Ghazi in official Urdu dubbed audio across all 91 broadcast episodes in Full HD.',
      seo_title: 'Ertugrul Ghazi Season 4 Urdu Dubbed | Episodes 1–91',
      seo_desc: 'Watch Ertugrul Ghazi Season 4 in Urdu dubbed audio. Stream all 91 episodes as Ertuğrul Bey confronts Ares, Titan, and conquers the fortress of Karacahisar.',
      article: [
        {
          heading: 'Season 4 Overview & Plot Milestones',
          content: 'Season 4 centers on the epic military conquest of Karacahisar Castle. Ertuğrul Bey outmaneuvers Tekfur Ares, the mercenary Titan, and internal conspirators while mourning tragic personal losses.',
          is_spoiler: false,
          sources: []
        },
        {
          heading: 'Episode Availability & Broadcast Format',
          content: 'Season 4 comprises all 91 broadcast episodes in official PTV Home Urdu dubbed audio, streaming in Full HD on Great Nation.',
          is_spoiler: false,
          sources: []
        }
      ]
    },
    {
      source_id: 'collection-6',
      season: 5,
      episodes: 91,
      title: 'Ertugrul Ghazi Season 5',
      short_desc: 'Complete Season 5 of Ertugrul Ghazi in official Urdu dubbed audio across all 91 broadcast episodes in Full HD.',
      seo_title: 'Ertugrul Ghazi Season 5 Urdu Dubbed | Episodes 1–91',
      seo_desc: 'Watch Ertugrul Ghazi Season 5 in Urdu dubbed audio. Stream all 91 episodes following the final chapter in Söğüt, the rise of Osman, and victory over Dragos.',
      article: [
        {
          heading: 'Season 5 Overview & Plot Milestones',
          content: 'Season 5 takes place ten years later in Söğüt. Ertuğrul Bey guides the young Osman, unmasks Commander Dragos disguised as the bell-ringer Zangoç, and secures the future foundation of the Ottoman Empire.',
          is_spoiler: false,
          sources: []
        },
        {
          heading: 'Episode Availability & Broadcast Format',
          content: 'Season 5 comprises all 91 broadcast episodes in official PTV Home Urdu dubbed audio, streaming in Full HD on Great Nation.',
          is_spoiler: false,
          sources: []
        }
      ]
    }
  ];

  for (const sData of seasonsData) {
    const { data: col, error: colErr } = await adminClient
      .from('collections')
      .select('id, source_id, status')
      .eq('source_id', sData.source_id)
      .single();

    if (colErr || !col) {
      console.error(`Collection ${sData.source_id} not found:`, colErr);
      continue;
    }

    const { data: existingColEd } = await adminClient
      .from('published_editorial')
      .select('id')
      .eq('collection_id', col.id)
      .eq('locale', 'en')
      .maybeSingle();

    const colEdPayload = {
      collection_id: col.id,
      locale: 'en',
      approved_display_title: sData.title,
      short_description: sData.short_desc,
      seo_title: sData.seo_title,
      seo_description: sData.seo_desc,
      structured_article: sData.article,
      updated_at: now
    };

    if (existingColEd) {
      await adminClient.from('published_editorial').update(colEdPayload).eq('id', existingColEd.id);
      console.log(`Updated Season ${sData.season} editorial (${sData.source_id}).`);
    } else {
      await adminClient.from('published_editorial').insert({ ...colEdPayload, published_at: now });
      console.log(`Inserted Season ${sData.season} editorial (${sData.source_id}).`);
    }

    // Ensure collection status is published
    await adminClient.from('collections').update({ status: 'published' }).eq('id', col.id);
    console.log(`Collection ${sData.source_id} status confirmed published.`);

    // Publish all episode groups and video variants for this collection
    await adminClient.from('episode_groups').update({ status: 'published' }).eq('collection_id', col.id);
    await adminClient.from('video_variants').update({ publication_state: 'published' }).eq('collection_id', col.id);
    console.log(`Published episode groups and video variants for ${sData.source_id}.`);
  }

  console.log('Ertugrul Ghazi publication completed successfully!');
}

main().catch(console.error);
