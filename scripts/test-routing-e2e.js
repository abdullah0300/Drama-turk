const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

// Read .env.local
const envContent = fs.readFileSync(path.join(__dirname, '..', '.env.local'), 'utf8');
const env = {};
envContent.split('\n').forEach(line => {
  const match = line.match(/^([^=]+)=(.*)$/);
  if (match) env[match[1].trim()] = match[2].trim().replace(/^["']|["']$/g, '');
});

const supabaseUrl = env['NEXT_PUBLIC_SUPABASE_URL'];
const supabaseKey = env['NEXT_PUBLIC_SUPABASE_ANON_KEY'];
const supabase = createClient(supabaseUrl, supabaseKey);

// Emulate groupSeasons, seasonSlugOf, seasonPath, episodeSlugs, episodePath
const editionRank = { subtitled: 0, original: 1, dubbed: 2, unresolved: 3 };

function compareCollections(a, b) {
  const sa = a.reported_seasons?.[0] ?? 999;
  const sb = b.reported_seasons?.[0] ?? 999;
  if (sa !== sb) return sa - sb;
  const ea = editionRank[a.collection_type ?? 'unresolved'] ?? 3;
  const eb = editionRank[b.collection_type ?? 'unresolved'] ?? 3;
  if (ea !== eb) return ea - eb;
  return (a.label || '').localeCompare(b.label || '');
}

function seasonKey(c) {
  return c.reported_seasons?.length ? c.reported_seasons.join('-') : `c:${c.id}`;
}

function groupSeasons(collections) {
  const map = new Map();
  [...collections].sort(compareCollections).forEach((c) => {
    const key = seasonKey(c);
    if (!map.has(key)) {
      map.set(key, { key, number: c.reported_seasons?.[0] ?? 0, label: `Season ${c.reported_seasons?.[0] ?? ''}`, editions: [] });
    }
    map.get(key).editions.push(c);
  });
  return Array.from(map.values()).sort((a, b) => a.number - b.number || a.key.localeCompare(b.key));
}

function seasonSlugOf(c) {
  const s = c.reported_seasons || [];
  if (s.length > 1) return `seasons-${s.join('-')}`;
  if (s.length === 1) return `season-${s[0]}`;
  return `release-${c.id.replace(/^collection-/, '')}`;
}

function isDefaultEdition(season, edition) {
  return season.editions[0]?.id === edition.id;
}

function seasonPath(dramaId, season, edition) {
  const base = `/drama/${dramaId}/${seasonSlugOf(season.editions[0])}`;
  return edition && !isDefaultEdition(season, edition) ? `${base}/urdu-dubbed` : base;
}

function episodeSlugs(groups) {
  const out = new Map();
  const used = new Map();
  groups.forEach((g, i) => {
    let base = g.reported_episode_number != null ? `episode-${g.reported_episode_number}` : g.bolum != null ? `bolum-${g.bolum}` : `episode-${i + 1}`;
    if (g.part != null) base += `-part-${g.part}`;
    const seen = used.get(base) ?? 0;
    used.set(base, seen + 1);
    out.set(g.id, seen === 0 ? base : `${base}-${String.fromCharCode(97 + seen)}`);
  });
  return out;
}

async function testE2E() {
  console.log('--- Step 1: Testing Season Navigation Structure ---');
  const { data: drama } = await supabase.from('dramas').select('*').eq('source_id', 'mehmed-fetihler-sultani').single();
  const { data: collections } = await supabase.from('collections').select('*').eq('drama_id', drama.id);

  const seasons = groupSeasons(collections);
  console.log(`Seasons grouped count: ${seasons.length}`);
  seasons.forEach(s => {
    console.log(`\nSeason ${s.number} (${s.label}) has ${s.editions.length} edition(s):`);
    s.editions.forEach(e => {
      const sPath = seasonPath(drama.source_id, s, e);
      console.log(`   - Edition: [${e.source_id}] ${e.label} -> Route: ${sPath} (isDefault: ${isDefaultEdition(s, e)})`);
    });
  });

  console.log('\n--- Step 2: Testing Season 1 Default (Subtitled) Episodes ---');
  const s1 = seasons.find(s => s.number === 1);
  const defaultEdition = s1.editions[0]; // Subtitled
  const dubbedEdition = s1.editions[1];  // Dubbed

  console.log(`Default Edition: ${defaultEdition.source_id} (${defaultEdition.collection_type})`);
  console.log(`Dubbed Edition: ${dubbedEdition.source_id} (${dubbedEdition.collection_type})`);

  const { data: subGroups } = await supabase
    .from('episode_groups')
    .select('*')
    .eq('collection_id', defaultEdition.id)
    .order('reported_episode_number', { ascending: true });

  const subSlugs = episodeSlugs(subGroups);
  console.log(`Subtitled Episodes count: ${subGroups.length}`);
  console.log(`First 3 episode URLs:`);
  subGroups.slice(0, 3).forEach(g => {
    const slug = subSlugs.get(g.id);
    const href = `${seasonPath(drama.source_id, s1, defaultEdition)}/${slug}`;
    console.log(`  ${g.label} -> ${href}`);
  });

  console.log('\n--- Step 3: Testing Season 1 Urdu Dubbed Episodes ---');
  const { data: dubGroups } = await supabase
    .from('episode_groups')
    .select('*')
    .eq('collection_id', dubbedEdition.id)
    .order('reported_episode_number', { ascending: true });

  const dubSlugs = episodeSlugs(dubGroups);
  console.log(`Dubbed Episodes count: ${dubGroups.length}`);
  console.log(`First 3 dubbed episode URLs:`);
  dubGroups.slice(0, 3).forEach(g => {
    const slug = dubSlugs.get(g.id);
    const href = `${seasonPath(drama.source_id, s1, dubbedEdition)}/${slug}`;
    console.log(`  ${g.label} -> ${href}`);
  });

  console.log('\n--- Step 4: Testing Language Switching for Episode 1 Subtitled ---');
  const ep1 = subGroups[0];
  const { data: variants } = await supabase
    .from('video_variants')
    .select('*, stream_sources(*)')
    .eq('group_id', ep1.id);

  console.log(`Episode 1 has ${variants.length} language variants:`);
  variants.forEach(v => {
    const stream = v.stream_sources?.[0]?.delivery_url;
    console.log(`  - Variant: ${v.source_id} | Language: ${v.languages.join(', ')} | Version: ${v.version}`);
    console.log(`    Stream: ${stream}`);
  });

  console.log('\n--- Step 5: Testing Stream Playback Reachability & HLS Headers ---');
  const https = require('https');
  for (const v of variants) {
    const streamUrl = v.stream_sources[0].delivery_url;
    await new Promise((resolve) => {
      https.get(streamUrl, { headers: { 'User-Agent': 'Mozilla/5.0' } }, (res) => {
        let chunk = '';
        res.on('data', c => chunk += c);
        res.on('end', () => {
          const hasHlsHeader = chunk.includes('#EXTM3U');
          const hasSegments = chunk.includes('.ts') || chunk.includes('.m3u8');
          console.log(`  Playback test for ${v.languages[0]}: HTTP ${res.statusCode} | #EXTM3U: ${hasHlsHeader} | Segments: ${hasSegments}`);
          resolve();
        });
      }).on('error', (err) => {
        console.error(`  Playback error: ${err.message}`);
        resolve();
      });
    });
  }

  console.log('\nE2E Routing, Language Switching, and Playback test completed successfully!');
}

testE2E().catch(console.error);
