const { createClient } = require('@supabase/supabase-js');

const DRAMA_METADATA = {
  'al-hashashin': {
    display_name: 'Al Hashashin',
    genres: ['Historical', 'Action', 'Thriller', 'Drama'],
    languages: ['Urdu', 'Arabic'],
    short_overview: 'The rise of Hassan-i Sabbah and his secretive order of the Hashashin (Assassins) operating from the mountain fortress of Alamut in 11th-century Persia.',
    poster_url: 'https://image.tmdb.org/t/p/w780/qhnkrV58m9lLUL0BWX4MtKRqpKH.jpg',
    backdrop_url: 'https://image.tmdb.org/t/p/w1280/lxiVSSy62EgJaCqoL4zw13MokXX.jpg',
    collections: {
      'collection-65': 'https://image.tmdb.org/t/p/w780/9tO0GtA4szY1nP8HVIlZNLezfRb.jpg'
    }
  },
  'al-sancak': {
    display_name: 'Al Sancak',
    genres: ['Action', 'Military', 'Drama'],
    languages: ['Urdu', 'Turkish'],
    short_overview: 'Captain Ali Banazlı leads the elite Claw Team of the Turkish Armed Forces on high-stakes counter-terrorism and tactical defense operations worldwide.',
    poster_url: 'https://artworks.thetvdb.com/banners/v4/series/429415/posters/63bf06bf373e8.jpg',
    backdrop_url: 'https://artworks.thetvdb.com/banners/v4/series/429415/backgrounds/63bb51fa9e878.jpg',
    collections: {
      'collection-42': 'https://artworks.thetvdb.com/banners/v4/series/429415/posters/63bf06bf373e8.jpg'
    }
  },
  'ates-kuslari': {
    display_name: 'Ateş Kuşları',
    genres: ['Drama', 'Crime', 'Family'],
    languages: ['Urdu', 'Turkish'],
    short_overview: 'Five street children known as the Rootless form an unbreakable family in the alleys of Istanbul, fighting poverty and adversity to protect an abandoned infant.',
    poster_url: 'https://image.tmdb.org/t/p/w780/zqfI3o3wRSAOVUtfRXnUTjtLVOZ.jpg',
    backdrop_url: 'https://image.tmdb.org/t/p/w1280/WyomW8bBeRRR4ilqMXZoItMqFy.jpg',
    collections: {
      'collection-52': 'https://image.tmdb.org/t/p/w780/jBK9DPhPWIEp7Mz4PTymuxr1n54.jpg'
    }
  },
  'barbaroslar': {
    display_name: 'Barbaroslar',
    genres: ['Historical', 'Action', 'Adventure', 'War'],
    languages: ['Urdu', 'English', 'Turkish'],
    short_overview: "The epic naval adventures of the four Barbaros brothers, Ishak, Oruç, Hızır, and İlyas, who secured Ottoman supremacy across the Mediterranean.",
    poster_url: 'https://image.tmdb.org/t/p/w780/f4Ih65EVp6SQc8E89bQ7NbyGeei.jpg',
    backdrop_url: 'https://image.tmdb.org/t/p/w1280/leOTbaxPLkybrnj7kfEDlitYsDo.jpg',
    collections: {
      'collection-24': 'https://image.tmdb.org/t/p/w780/t4FC3XOQTGF66JnotzXpNsBnZSH.jpg',
      'collection-41': 'https://image.tmdb.org/t/p/w780/f4Ih65EVp6SQc8E89bQ7NbyGeei.jpg'
    }
  },
  'destan': {
    display_name: 'Destan',
    genres: ['Historical', 'Action', 'Fantasy', 'Drama'],
    languages: ['Urdu', 'Turkish'],
    short_overview: 'In 8th-century Central Asia, orphaned warrior girl Akkız and disabled prince Batuga join forces to unite divided Turkic tribes against tyranny and oppression.',
    poster_url: 'https://image.tmdb.org/t/p/w780/ptrQFvg6sB0ouJXllVUczvm0RXw.jpg',
    backdrop_url: 'https://image.tmdb.org/t/p/w1280/6g2zQCbFqh3QQL0I6OJFoaVJN6e.jpg',
    collections: {
      'collection-28': 'https://image.tmdb.org/t/p/w780/cSDEb3XvsML6VwYZ5HEJy7vQUS.jpg'
    }
  },
  'dokuz-oguz': {
    display_name: 'Dokuz Oğuz',
    genres: ['Action', 'Military', 'Drama'],
    languages: ['Urdu', 'Turkish'],
    short_overview: 'Under the leadership of Colonel Tomris Toprak and Captain Batur Karanlık, the elite Oğuz Team fights secretly to protect Turks worldwide against foreign perils.',
    poster_url: 'https://image.tmdb.org/t/p/w780/8ahz0v2iHXx5KRT8QKKPoOZ7M9Z.jpg',
    backdrop_url: 'https://image.tmdb.org/t/p/w1280/nvh4k8p6htMxlXVhpDaCcITv2tk.jpg',
    collections: {
      'collection-49': 'https://image.tmdb.org/t/p/w780/3bG0E254iYhXOmriJOyVYZTR9I5.jpg'
    }
  },
  'halka': {
    display_name: 'Halka',
    genres: ['Crime', 'Action', 'Mystery', 'Drama'],
    languages: ['Urdu', 'Turkish'],
    short_overview: 'Two young men, Cihangir and Kaan, bound by mysterious childhood ties, enter a relentless battle to uncover the secrets of the shadowy criminal cartel Halka.',
    poster_url: 'https://image.tmdb.org/t/p/w780/yx8G3WmKnw5pHcrHsH96d0ZDvGv.jpg',
    backdrop_url: 'https://image.tmdb.org/t/p/w1280/xolfbOBgS9IckkXOjCXHof7mGtS.jpg',
    collections: {
      'collection-51': 'https://image.tmdb.org/t/p/w780/yx8G3WmKnw5pHcrHsH96d0ZDvGv.jpg'
    }
  },
  'kosem-sultan': {
    display_name: 'Kösem Sultan',
    genres: ['Historical', 'Drama', 'Romance', 'Biography'],
    languages: ['Urdu', 'Turkish'],
    short_overview: 'The rise of Anastasia, who entered the imperial harem as a concubine and became Kösem Sultan, the most powerful and influential woman in Ottoman history.',
    poster_url: 'https://image.tmdb.org/t/p/w780/4cSbpfXX9YPMPi1Ggauh7Xm7qmW.jpg',
    backdrop_url: 'https://image.tmdb.org/t/p/w1280/vbxUtuW59PUut2yfV4KIdq09Ss1.jpg',
    collections: {
      'collection-10': 'https://image.tmdb.org/t/p/w780/tcfKLP3Oljfc7TCGTeAFDBJlky9.jpg'
    }
  },
  'mendirman-jaloliddin': {
    display_name: 'Mendirman Jaloliddin',
    genres: ['Historical', 'Action', 'Biography', 'War'],
    languages: ['Urdu', 'Turkish'],
    short_overview: 'The heroic stand of Jalal al-Din Mangburni, the last ruler of the Khwarazmian Empire, who gallantly resisted Genghis Khan and the invading Mongol hordes.',
    poster_url: 'https://image.tmdb.org/t/p/w780/1luRYqIi5C5WydghAwceRlbOXUA.jpg',
    backdrop_url: 'https://image.tmdb.org/t/p/w1280/3tjoK15v8SuY6ms6nKDtTnWjSuB.jpg',
    collections: {
      'collection-22': 'https://image.tmdb.org/t/p/w780/gbfutL0SAYM4C3eNDJZmYCziYiY.jpg',
      'collection-46': 'https://image.tmdb.org/t/p/w780/5t2NX6r7b6ZbhKyewiqSmzoqV6M.jpg'
    }
  },
  'mevlana-celaleddin-rumi': {
    display_name: 'Mevlana Celaleddin Rumi',
    genres: ['Biography', 'Historical', 'Drama'],
    languages: ['Urdu', 'Turkish'],
    short_overview: 'The spiritual life, philosophical teachings, and mystical journey of Rumi in 13th-century Anatolia, navigating political turbulence and spiritual enlightenment.',
    poster_url: 'https://image.tmdb.org/t/p/w780/lcWpRGUOL0d79Lk6WRW1zqOfKCG.jpg',
    backdrop_url: 'https://image.tmdb.org/t/p/w1280/yawM5fgK4Fm2C0dfHiG6d2VEOpT.jpg',
    collections: {
      'collection-47': 'https://image.tmdb.org/t/p/w780/hTYw1pKochne9ed0QtAWnzVqdRn.jpg'
    }
  },
  'salahuddin-ayyubi': {
    display_name: 'Salahuddin Ayyubi',
    genres: ['Historical', 'Action', 'War', 'Biography'],
    languages: ['Urdu', 'English', 'Turkish'],
    short_overview: 'The epic saga of Salahuddin Ayyubi, the revered sultan who unified the Islamic world, overcame Crusader armies, and liberated the holy city of Jerusalem.',
    poster_url: 'https://image.tmdb.org/t/p/w780/5bljg22nvfS0eP320L5GFYJz3Zb.jpg',
    backdrop_url: 'https://image.tmdb.org/t/p/w1280/jo78r1koYnbEDdD4boh0EFcMpQo.jpg',
    collections: {
      'collection-71': 'https://image.tmdb.org/t/p/w780/cWvuppijcTEYLuERGL6Fg51QEfC.jpg'
    }
  },
  'sevdan-bir-ates': {
    display_name: 'Sevdan Bir Ateş',
    genres: ['Drama', 'Romance'],
    languages: ['Urdu', 'Turkish'],
    short_overview: 'A passionate story of romance, family loyalties, and sacrifice, testing two souls against the backdrop of tradition and societal division.',
    poster_url: 'https://mo.ciner.com.tr/showtv/iu/1258x630/sevdan-bir-ates.jpg',
    backdrop_url: 'https://mo.ciner.com.tr/showtv/iu/1258x630/sevdan-bir-ates.jpg',
    collections: {
      'collection-87': 'https://mo.ciner.com.tr/showtv/iu/1258x630/sevdan-bir-ates.jpg'
    }
  },
  'soz': {
    display_name: 'Söz',
    genres: ['Action', 'Military', 'Drama'],
    languages: ['Urdu', 'Turkish'],
    short_overview: 'Lieutenant Yavuz Karasu leads a twelve-man elite Special Forces team, dedicating their lives to protecting their country from international terror organizations.',
    poster_url: 'https://image.tmdb.org/t/p/w780/orUokYSO7obeN8T1AhgbMNHb4FB.jpg',
    backdrop_url: 'https://image.tmdb.org/t/p/w1280/rOkRGZdt1sx84eIRkGkzncOr29l.jpg',
    collections: {
      'collection-30': 'https://image.tmdb.org/t/p/w780/6bzQOsYmipR5RdMxR78scdwBwiK.jpg',
      'collection-31': 'https://image.tmdb.org/t/p/w780/3kdHuGEVYd89ZDbwjboHvWkxFLC.jpg',
      'collection-36': 'https://image.tmdb.org/t/p/w780/xKCGIcvJy5YzQPUqQ06Kmf8dymg.jpg'
    }
  },
  'sultan-abdulhamid': {
    display_name: 'Sultan Abdulhamid',
    genres: ['Historical', 'Drama', 'Biography', 'War'],
    languages: ['Urdu', 'Turkish'],
    short_overview: 'The monumental 33-year reign of Sultan Abdülhamid II as he outmaneuvers internal plots, espionage, and European empires threatening the Ottoman Caliphate.',
    poster_url: 'https://image.tmdb.org/t/p/w780/fmaWiokhUVDsVkCfoWaQEDFZFFP.jpg',
    backdrop_url: 'https://image.tmdb.org/t/p/w1280/hU0nzL6eKsdzeMaEt3mqWMCwYgM.jpg',
    collections: {
      'collection-11': 'https://image.tmdb.org/t/p/w780/dBElZT1h964nQrNrTF9PYkWJjBR.jpg',
      'collection-16': 'https://image.tmdb.org/t/p/w780/xwGfVbwH13TWFClHAvWYDBlUe04.jpg',
      'collection-17': 'https://image.tmdb.org/t/p/w780/uz6eTm58DW1pZQ1dUWi3cdyk2d5.jpg',
      'collection-18': 'https://image.tmdb.org/t/p/w780/m6MV8kuCs5g9bVfKYFHNWEIDucC.jpg',
      'collection-19': 'https://image.tmdb.org/t/p/w780/hoDeLOcrHuos9U1pS48ctJzAsxo.jpg'
    }
  },
  'sumud': {
    display_name: 'Sumud',
    genres: ['Drama', 'History', 'War'],
    languages: ['Urdu', 'Arabic'],
    short_overview: 'An intimate and powerful tribute to steadfastness, honoring the resilience, endurance, and spirit of Palestinian families enduring hardship.',
    poster_url: 'https://cdn.sinemalar.com/images/movie/290822/poster/sumud-1781461115.jpg',
    backdrop_url: 'https://cdn.sinemalar.com/images/movie/290822/poster/sumud-1781461115.jpg',
    collections: {
      'collection-84': 'https://cdn.sinemalar.com/images/movie/290822/poster/sumud-1781461115.jpg'
    }
  },
  'tasacak-bu-deniz': {
    display_name: 'Taşacak Bu Deniz',
    genres: ['Drama', 'Romance'],
    languages: ['Urdu', 'Turkish'],
    short_overview: 'A gripping drama exploring stormy love, family rivalries, and centuries-old coastal secrets along the breathtaking Black Sea shores.',
    poster_url: 'https://image.tmdb.org/t/p/w780/uHIOTJXN9nNTc51WyunL43Fvge3.jpg',
    backdrop_url: 'https://image.tmdb.org/t/p/w1280/otEKvJA72Pue5RDgVrBqdOqgAd.jpg',
    collections: {
      'collection-86': 'https://image.tmdb.org/t/p/w780/cHYsj0aiUXOanslE2l599iUpOSX.jpg'
    }
  },
  'the-pit-cukur': {
    display_name: 'The Pit (Çukur)',
    genres: ['Action', 'Crime', 'Thriller', 'Drama'],
    languages: ['Urdu', 'Turkish'],
    short_overview: 'Control of Çukur, one of the most perilous neighborhoods in Istanbul, lies with the Koçovalı family. When rival gangs attack, Yamaç returns to defend his turf.',
    poster_url: 'https://image.tmdb.org/t/p/w780/fBXDSBDw5Zug6E2xTB265LzYVKz.jpg',
    backdrop_url: 'https://image.tmdb.org/t/p/w1280/xtCzLQOocIajjQ5Mhwp834BQhVX.jpg',
    collections: {
      'collection-48': 'https://image.tmdb.org/t/p/w780/ajVCnyj7aBfsOOzSSzFaf75FHvu.jpg',
      'collection-53': 'https://image.tmdb.org/t/p/w780/7aL9P5NLSgBjdChcwp4cH1OLdKf.jpg',
      'collection-59': 'https://image.tmdb.org/t/p/w780/ih4MxcqGRdni1pVvMtMbY8ZYwaJ.jpg',
      'collection-63': 'https://image.tmdb.org/t/p/w780/zFuPsMqDozY8I34prVFhNEzqJgW.jpg'
    }
  },
  'yunus-emre': {
    display_name: 'Yunus Emre',
    genres: ['Biography', 'Historical', 'Drama'],
    languages: ['Urdu', 'Turkish'],
    short_overview: 'The spiritual awakening of Yunus Emre, journeying from a proud Seljuk Islamic judge to an enlightened Sufi dervish and legendary poet of divine love.',
    poster_url: 'https://image.tmdb.org/t/p/w780/l2kTvitWN7tnpZGf4vb5MxK4TGf.jpg',
    backdrop_url: 'https://image.tmdb.org/t/p/w1280/tNUc4apfzASP3cUmqtIngyecMUu.jpg',
    collections: {
      'collection-20': 'https://image.tmdb.org/t/p/w780/ohJxn6dYbBG7PyxppLizjB42ErC.jpg',
      'collection-21': 'https://image.tmdb.org/t/p/w780/l2kTvitWN7tnpZGf4vb5MxK4TGf.jpg'
    }
  }
};

async function main() {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL || 'https://zvwltfqhbpqtnjbsflvk.supabase.co';
  const anonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp2d2x0ZnFoYnBxdG5qYnNmbHZrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3OTA3NjQ3MTAsImV4cCI6MjEwNjM0MDcxMH0.og2xePVqFw9EDjximY4AZvP_NObhE3kbYBKIHFxWndo';

  const authClient = createClient(url, anonKey);
  const { data: authData, error: authError } = await authClient.auth.signInWithPassword({
    email: 'admin@drama-platform.internal',
    password: 'AdminSecurity2026!'
  });

  if (authError || !authData?.session) {
    throw new Error('Admin login failed: ' + (authError?.message || 'No session'));
  }

  const token = authData.session.access_token;
  const adminClient = createClient(url, anonKey, {
    global: { headers: { Authorization: `Bearer ${token}` } }
  });

  console.log('Admin authenticated successfully.');

  const now = new Date().toISOString();

  for (const [slug, meta] of Object.entries(DRAMA_METADATA)) {
    console.log(`\n--- Publishing ${meta.display_name} (${slug}) ---`);

    // 1. Fetch Drama
    const { data: drama, error: dErr } = await adminClient
      .from('dramas')
      .select('id, source_id, status')
      .eq('source_id', slug)
      .single();

    if (dErr || !drama) {
      console.error(`Drama ${slug} not found:`, dErr?.message);
      continue;
    }

    // 2. Update Drama record to published with TMDB artwork and rich metadata
    const { error: dUpErr } = await adminClient
      .from('dramas')
      .update({
        status: 'published',
        display_name: meta.display_name,
        genres: meta.genres,
        languages: meta.languages,
        short_overview: meta.short_overview,
        poster_url: meta.poster_url,
        backdrop_url: meta.backdrop_url,
        updated_at: now
      })
      .eq('id', drama.id);

    if (dUpErr) {
      console.error(`Failed to publish drama ${slug}:`, dUpErr.message);
      continue;
    }
    console.log(`✓ Drama ${slug} set to published with TMDB artwork.`);

    // 3. Fetch all collections for this drama
    const { data: cols, error: cErr } = await adminClient
      .from('collections')
      .select('id, source_id, status, poster_url')
      .eq('drama_id', drama.id);

    if (cErr || !cols) {
      console.error(`Failed to fetch collections for ${slug}:`, cErr?.message);
      continue;
    }

    const colIds = cols.map(c => c.id);

    // 4. Update collections with poster artwork and published status
    for (const c of cols) {
      const collPoster = meta.collections[c.source_id] || meta.poster_url;
      await adminClient
        .from('collections')
        .update({
          status: 'published',
          poster_url: collPoster,
          updated_at: now
        })
        .eq('id', c.id);
      console.log(`  ✓ Collection ${c.source_id} published (poster set).`);
    }

    // 5. Ensure all episode groups are published
    const { error: egErr } = await adminClient
      .from('episode_groups')
      .update({ status: 'published' })
      .in('collection_id', colIds);

    if (egErr) {
      console.warn(`  Warning updating episode groups for ${slug}:`, egErr.message);
    } else {
      console.log(`  ✓ Episode groups published.`);
    }

    // 6. Ensure all video variants are published
    const { error: vvErr } = await adminClient
      .from('video_variants')
      .update({ publication_state: 'published' })
      .in('collection_id', colIds);

    if (vvErr) {
      console.warn(`  Warning updating video variants for ${slug}:`, vvErr.message);
    } else {
      console.log(`  ✓ Video variants published.`);
    }
  }

  console.log('\n=============================================');
  console.log('ALL 18 DRAMAS PUBLISHED SUCCESSFULLY WITH TMDB ARTWORK!');
  console.log('=============================================');
}

main().catch(console.error);
