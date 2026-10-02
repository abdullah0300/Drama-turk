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

async function run() {
  console.log('Testing Mehmed Season 1 Subtitled & Dubbed integration...\n');

  // 1. Fetch drama
  const { data: drama, error: dramaErr } = await supabase
    .from('dramas')
    .select('*')
    .eq('source_id', 'mehmed-fetihler-sultani')
    .single();

  if (dramaErr) throw dramaErr;
  console.log(`Drama: ${drama.display_name} (video_records_count: ${drama.video_records_count})`);

  // 2. Fetch collections
  const { data: collections, error: collErr } = await supabase
    .from('collections')
    .select('*')
    .eq('drama_id', drama.id)
    .order('sort_order', { ascending: true });

  if (collErr) throw collErr;
  console.log(`\nFound ${collections.length} collections for drama:`);
  collections.forEach(c => {
    console.log(`  - [${c.source_id}] Season ${c.reported_seasons?.join(',')} | ${c.label} | ${c.collection_type} | ${c.version_label}`);
  });

  // Verify Season 1 collections
  const s1Collections = collections.filter(c => c.reported_seasons && c.reported_seasons.includes(1));
  console.log(`\nSeason 1 collections count: ${s1Collections.length}`);
  const s1Sub = s1Collections.find(c => c.collection_type === 'subtitled');
  const s1Dub = s1Collections.find(c => c.collection_type === 'dubbed');

  console.log(`  Season 1 Subtitled present: ${!!s1Sub} (${s1Sub?.source_id})`);
  console.log(`  Season 1 Dubbed preserved: ${!!s1Dub} (${s1Dub?.source_id})`);

  // 3. Check Episode Groups for Season 1 Subtitled
  const { data: s1SubGroups, error: gErr } = await supabase
    .from('episode_groups')
    .select('*')
    .eq('collection_id', s1Sub.id)
    .order('reported_episode_number', { ascending: true });

  if (gErr) throw gErr;
  console.log(`\nSeason 1 Subtitled Episode Groups count: ${s1SubGroups.length} (expected: 15)`);

  // 4. Check Episode Groups for Season 1 Dubbed
  const { data: s1DubGroups, error: dubGErr } = await supabase
    .from('episode_groups')
    .select('*')
    .eq('collection_id', s1Dub.id)
    .order('reported_episode_number', { ascending: true });

  if (dubGErr) throw dubGErr;
  console.log(`Season 1 Dubbed Episode Groups count: ${s1DubGroups.length} (preserved: 8)`);

  // 5. Test all 15 episode pairs in Season 1 Subtitled
  console.log('\nVerifying 15 episode pairs (Urdu + English) for Season 1 Subtitled:');
  let allPairsValid = true;
  for (const g of s1SubGroups) {
    const { data: variants, error: vErr } = await supabase
      .from('video_variants')
      .select('id, source_id, display_label, languages, version, stream_sources(id, delivery_url, format, verification_state)')
      .eq('group_id', g.id);

    if (vErr) throw vErr;
    const langs = variants.map(v => v.languages.join(','));
    const streams = variants.map(v => v.stream_sources?.[0]?.delivery_url);
    const hasBothLangs = langs.some(l => l.includes('Urdu')) && langs.some(l => l.includes('English'));
    const hasStreams = streams.every(s => s && s.startsWith('https://'));

    if (!hasBothLangs || !hasStreams || variants.length !== 2) {
      allPairsValid = false;
      console.log(`  ❌ ${g.label} (reported ep ${g.reported_episode_number}): ${variants.length} variants, langs: [${langs.join(' | ')}]`);
    } else {
      console.log(`  ✓ ${g.label}: 2 variants [${langs.join(', ')}] | Streams: OK`);
    }
  }

  console.log(`\nAll 15 episode pairs verified: ${allPairsValid ? 'YES' : 'NO'}`);
}

run().catch(console.error);
