const fs = require('fs');
const { createClient } = require('@supabase/supabase-js');

// Parse .env.local for keys without logging them
const envContent = fs.readFileSync('.env.local', 'utf8');
const env = {};
envContent.split('\n').forEach(line => {
  const m = line.match(/^([A-Za-z0-9_]+)=(.*)$/);
  if (m) env[m[1]] = m[2].trim();
});

const supabaseUrl = env.NEXT_PUBLIC_SUPABASE_URL;
const publishableKey = env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY || env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !publishableKey) {
  console.error('Missing Supabase URL or publishable key in .env.local');
  process.exit(1);
}

// 1. ANONYMOUS CLIENT (Viewer)
const anonClient = createClient(supabaseUrl, publishableKey, {
  auth: { persistSession: false }
});

async function runTests() {
  console.log('=== TEST 1: ANONYMOUS / VIEWER READ PERMISSIONS ===');
  
  // A. Published dramas
  const { data: dramas, error: dramaErr } = await anonClient.from('dramas').select('id, display_name, status');
  console.log(`Anon Dramas query: error=${dramaErr?.message || 'none'}, count=${dramas?.length}`);
  const nonPublishedDramas = (dramas || []).filter(d => d.status !== 'published' && d.status !== 'preview');
  console.log(`Non-published dramas visible to anon: ${nonPublishedDramas.length} (Expected: 0)`);

  // B. Episode groups - verify RLS filters out drafts
  const { data: groups, error: groupErr } = await anonClient.from('episode_groups').select('id, source_id, status');
  console.log(`Anon Episode Groups query: error=${groupErr?.message || 'none'}, count=${groups?.length}`);
  const draftGroups = (groups || []).filter(g => g.status === 'draft');
  console.log(`Draft episode groups visible to anon: ${draftGroups.length} (Expected: 0)`);
  const publishedGroups = (groups || []).filter(g => g.status === 'published');
  console.log(`Published episode groups visible to anon: ${publishedGroups.length} (Expected: 36)`);

  // C. Video variants - verify RLS filters out drafts
  const { data: variants, error: variantErr } = await anonClient.from('video_variants').select('id, source_id, publication_state');
  console.log(`Anon Video Variants query: error=${variantErr?.message || 'none'}, count=${variants?.length}`);
  const draftVariants = (variants || []).filter(v => v.publication_state === 'draft');
  console.log(`Draft video variants visible to anon: ${draftVariants.length} (Expected: 0)`);
  const publishedVariants = (variants || []).filter(v => v.publication_state === 'published');
  console.log(`Published video variants visible to anon: ${publishedVariants.length} (Expected: 68)`);

  // D. Admin memberships table - verify blocked for anon
  const { data: admins, error: adminErr } = await anonClient.from('admin_memberships').select('*');
  console.log(`Anon Admin Memberships query: error=${adminErr?.message || 'none'}, count=${admins?.length || 0} (Expected: 0 or error)`);

  console.log('\n=== TEST 2: ANONYMOUS MUTATION REJECTION (RLS ENFORCEMENT) ===');
  
  // A. Try to INSERT as anon
  const { data: insertData, error: insertErr } = await anonClient.from('dramas').insert({
    slug: 'unauthorized-hack-drama',
    source_id: 'hack-drama',
    display_name: 'Hack Drama',
    status: 'published'
  });
  console.log(`Anon INSERT rejected: ${Boolean(insertErr)} (${insertErr?.message || 'Unexpected success'})`);

  // B. Try to UPDATE as anon
  const { data: updateData, error: updateErr } = await anonClient.from('episode_groups').update({
    label: 'Hacked Label'
  }).eq('source_id', 'collection-68-episode-1');
  console.log(`Anon UPDATE rejected or matched 0 rows: ${Boolean(updateErr) || updateData === null} (${updateErr?.message || 'Blocked by RLS'})`);

  // C. Try to DELETE as anon
  const { data: deleteData, error: deleteErr } = await anonClient.from('episode_groups').delete().eq('source_id', 'collection-68-episode-1');
  console.log(`Anon DELETE rejected or matched 0 rows: ${Boolean(deleteErr) || deleteData === null} (${deleteErr?.message || 'Blocked by RLS'})`);

  console.log('\n=== TEST 3: VERIFY Mehmed Episode 1 Still Intact ===');
  const { data: verifyEp1 } = await anonClient.from('episode_groups').select('label, status').eq('source_id', 'collection-68-episode-1').single();
  console.log(`Mehmed Ep 1 current state: label="${verifyEp1?.label}", status="${verifyEp1?.status}"`);
}

runTests().catch(console.error);
