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

  // 1. Get drama UUID for teskilat
  const { data: drama, error: dFetchError } = await adminClient
    .from('dramas')
    .select('id, source_id, display_name, status')
    .eq('source_id', 'teskilat')
    .single();

  if (dFetchError || !drama) {
    throw new Error('Drama teskilat not found: ' + dFetchError?.message);
  }

  console.log('Found Drama:', drama);

  // 2. Publish drama
  const { data: dramaUpdated, error: dUpdateError } = await adminClient
    .from('dramas')
    .update({
      status: 'published',
      display_name: 'Teşkilat',
      genres: ['Action', 'Drama', 'Intelligence', 'Thriller'],
      languages: ['Urdu', 'English'],
      short_overview: 'Teşkilat (The Shadow Team) follows an elite covert unit within Turkey’s National Intelligence Organization (MİT) operating in deep shadows to protect the state.',
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
      heading: 'What is Teşkilat (The Shadow Team) about?',
      content: 'Teşkilat follows a classified black-ops strike unit within Turkey’s National Intelligence Organization (MİT). Members officially stage their own deaths, giving up their identities to combat shadowy supranational syndicates targeting national defense and security.',
      is_spoiler: false,
      sources: [
        {
          name: 'TRT 1: official series',
          url: 'https://www.trt1.com.tr/diziler/teskilat'
        }
      ]
    },
    {
      heading: 'Who plays the lead roles in Teşkilat across seasons?',
      content: 'The series features major stars across operational eras: Çağlar Ertuğrul (Serdar Kılıçarslan) and Deniz Baysal (Zehra Balaban) led Seasons 1–2; Murat Yıldırım (Ömer Atmaca) and Aybüke Pusat (Neslihan) led Seasons 3–4; and Tolga Sarıtaş (Altay Yalçın) leads Season 5 through Season 7. Mesut Akusta portrays founding commander Mete Başkan.',
      is_spoiler: false,
      sources: [
        {
          name: 'TRT 1: cast',
          url: 'https://www.trt1.com.tr/diziler/teskilat/oyuncu'
        }
      ]
    },
    {
      heading: 'How are seasons and broadcast episodes (Bölüm) structured?',
      content: 'Teşkilat broadcasts movie-length Turkish episodes (Bölüm 1 to 187+). Season 1 covers Bölüm 1–14, Season 2 covers Bölüm 15–48, Season 3 covers Bölüm 49–79, Season 4 covers Bölüm 80–111, Season 5 covers Bölüm 112–148, Season 6 covers Bölüm 149–184, and Season 7 continues from Bölüm 185 onward.',
      is_spoiler: false,
      sources: []
    },
    {
      heading: 'Where can I watch Teşkilat with Urdu and English subtitles?',
      content: 'Great Nation brings all 7 seasons of Teşkilat together in clean Full HD with Urdu and English subtitles, organized with dual numbering so you can navigate by local season episode or original continuous Turkish broadcast number.',
      is_spoiler: false,
      sources: []
    },
    {
      heading: 'When do new episodes of Season 7 air?',
      content: 'New episodes air every Sunday at 20:00 Türkiye time (22:00 Pakistan time) on TRT 1. Subtitled renditions in Urdu and English are published on Great Nation shortly after the broadcast.',
      is_spoiler: false,
      sources: [
        {
          name: 'TRT 1: official schedule',
          url: 'https://www.trt1.com.tr/diziler/teskilat'
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
    approved_display_title: 'Teşkilat',
    short_description: 'Teşkilat (The Shadow Team) follows an elite covert unit within Turkey’s National Intelligence Organization (MİT) operating in deep shadows to protect the state.',
    seo_title: 'Teşkilat (The Shadow Team) | English & Urdu Subs',
    seo_description: 'Watch Teşkilat (The Shadow Team) with English and Urdu subtitles. Follow TRT 1\'s hit intelligence drama through 7 seasons. Full HD streaming on Great Nation.',
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

  // 4. Ensure all collections of teskilat are published
  const { data: cols, error: colsErr } = await adminClient
    .from('collections')
    .update({ status: 'published' })
    .eq('drama_id', drama.id)
    .select('id, source_id, status, reported_seasons');

  console.log('Collections updated to published:', cols?.length);

  // 5. Ensure all video variants of teskilat are published
  const { count: vCount, error: vErr } = await adminClient
    .from('video_variants')
    .update({ publication_state: 'published' })
    .eq('drama_id', drama.id);

  console.log('Video variants updated to published. Error:', vErr);

  console.log('Teşkilat publication completed successfully!');
}

main().catch(console.error);
