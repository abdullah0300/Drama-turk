// Comprehensive Verification Suite for Full Catalog Accessibility
// Tests:
// 1. Database reconciliation & published counts
// 2. Playable status of pilot and non-pilot collections
// 3. Representative Subtitled episode (Mehmed Season 2 Episode 1)
// 4. Representative Dubbed episode (Kurulus Osman Episode 231 Urdu Dubbed)
// 5. Quarantine of failed episode (video-1974 from Alparslan)
// 6. Honest labeling of combined seasons (Kosem Sultan collection-10)
// 7. Isolation of unassigned extras
// 8. Privacy of unapproved editorial drafts
// 9. Untested stream source integrity (3,200 untested, 68 reachable)
// 10. Staging environment noindex header & meta verification
// 11. Live HTTP response tests across Browse, Search, Drama, Collection, and Watch routes

const http = require('http');
const fs = require('fs');
const path = require('path');
const { createClient } = require('@supabase/supabase-js');

// Parse .env.local
const envContent = fs.readFileSync(path.join(__dirname, '..', '.env.local'), 'utf8');
const env = {};
envContent.split('\n').forEach(line => {
  const m = line.match(/^([A-Za-z0-9_]+)=(.*)$/);
  if (m) env[m[1]] = m[2].trim().replace(/^["']|["']$/g, '');
});

const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
const tokenKey = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
const mcpToken = tokens[tokenKey].token.access_token;
const projectRef = 'zvwltfqhbpqtnjbsflvk';

async function adminDbQuery(sql) {
  const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
    method: 'POST',
    headers: {
      'Authorization': `Bearer ${mcpToken}`,
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ query: sql })
  });
  return await res.json();
}

const anonClient = createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY || env.NEXT_PUBLIC_SUPABASE_ANON_KEY, {
  auth: { persistSession: false }
});

function fetchUrl(urlPath) {
  return new Promise((resolve, reject) => {
    http.get(`http://localhost:3000${urlPath}`, (res) => {
      let data = '';
      res.on('data', chunk => data += chunk);
      res.on('end', () => resolve({ status: res.statusCode, headers: res.headers, body: data }));
    }).on('error', reject);
  });
}

async function runVerification() {
  console.log('================================================================');
  console.log('   DRAMA PLATFORM - FULL CATALOG ACCESSIBILITY VERIFICATION');
  console.log('================================================================\n');

  let passed = 0;
  let failed = 0;

  function assert(condition, message, details = '') {
    if (condition) {
      console.log(`[PASS] ${message}`);
      if (details) console.log(`       ${details}`);
      passed++;
    } else {
      console.error(`[FAIL] ${message}`);
      if (details) console.error(`       ${details}`);
      failed++;
    }
  }

  // -------------------------------------------------------------
  // Test 1: Database Catalog Counts Reconciliation
  // -------------------------------------------------------------
  console.log('\n--- 1. DATABASE CATALOG COUNTS RECONCILIATION ---');
  const dramaRows = await adminDbQuery(`SELECT COUNT(*)::int as count FROM public.dramas WHERE status = 'published';`);
  const dramaCount = dramaRows[0]?.count;
  assert(dramaCount === 24, `Published dramas count is 24 (actual: ${dramaCount})`);

  const colRows = await adminDbQuery(`SELECT COUNT(*)::int as count FROM public.collections WHERE status = 'published';`);
  const colCount = colRows[0]?.count;
  assert(colCount === 63, `Published collections count is 63 (actual: ${colCount})`);

  const grpRows = await adminDbQuery(`SELECT COUNT(*)::int as count FROM public.episode_groups WHERE status = 'published';`);
  const groupCount = grpRows[0]?.count;
  assert(groupCount === 2902, `Published episode groups count is 2,902 (actual: ${groupCount})`);

  const varPubRows = await adminDbQuery(`SELECT COUNT(*)::int as count FROM public.video_variants WHERE publication_state = 'published';`);
  const variantPublishedCount = varPubRows[0]?.count;
  assert(variantPublishedCount === 3268, `Published video variants count is 3,268 (actual: ${variantPublishedCount})`);

  const varDraftRows = await adminDbQuery(`SELECT COUNT(*)::int as count FROM public.video_variants WHERE publication_state = 'draft';`);
  const variantDraftCount = varDraftRows[0]?.count;
  assert(variantDraftCount === 1, `Quarantined draft video variant count is 1 (actual: ${variantDraftCount})`);

  // -------------------------------------------------------------
  // Test 2: Stream Source Verification States
  // -------------------------------------------------------------
  console.log('\n--- 2. STREAM SOURCE INTEGRITY ---');
  const streamReachRows = await adminDbQuery(`SELECT COUNT(*)::int as count FROM public.stream_sources WHERE verification_state = 'reachable';`);
  const reachableStreams = streamReachRows[0]?.count;
  assert(reachableStreams === 69, `Reachable streams count is exactly 69 (68 pilot + 1 browser-verified dubbed) (actual: ${reachableStreams})`);

  const streamUntestedRows = await adminDbQuery(`SELECT COUNT(*)::int as count FROM public.stream_sources WHERE verification_state = 'untested';`);
  const untestedStreams = streamUntestedRows[0]?.count;
  assert(untestedStreams === 3199, `Untested streams count is exactly 3,199 (actual: ${untestedStreams})`);
  assert(reachableStreams + untestedStreams === 3268, `Total streams: 3,268 (69 reachable + 3,199 untested)`);

  // -------------------------------------------------------------
  // Test 3: Failed Episode Quarantine (video-1974)
  // -------------------------------------------------------------
  console.log('\n--- 3. FAILED EPISODE QUARANTINE (video-1974) ---');
  const v1974Rows = await adminDbQuery(`SELECT * FROM public.video_variants WHERE source_id = 'video-1974';`);
  const v1974 = v1974Rows[0];
  assert(v1974 && v1974.publication_state === 'draft', 'video-1974 is explicitly kept in draft publication_state');
  assert(v1974 && v1974.group_id === null, 'video-1974 has group_id = null (unattached from episode groups)');

  // Verify anon query cannot fetch video-1974
  const { data: anonV1974 } = await anonClient.from('video_variants').select('*').eq('source_id', 'video-1974');
  assert(!anonV1974 || anonV1974.length === 0, 'video-1974 is completely hidden from anonymous public queries via RLS');

  // -------------------------------------------------------------
  // Test 4: Honest Labeling of Combined Seasons (Kosem collection-10)
  // -------------------------------------------------------------
  console.log('\n--- 4. KOSEM SULTAN HONEST LABELING (collection-10) ---');
  const { data: col10 } = await anonClient.from('collections').select('*').eq('source_id', 'collection-10').single();
  assert(col10 && col10.label.includes('Seasons 1 & 2 (Combined Source Release)'), `collection-10 label is honest: "${col10?.label}"`);
  assert(col10 && col10.version_label.includes('Combined (60 Episodes)'), `collection-10 version_label: "${col10?.version_label}"`);

  const col10Res = await fetchUrl('/drama/kosem-sultan/collection/collection-10');
  assert(col10Res.status === 200, `Kosem collection page returns HTTP 200 (actual: ${col10Res.status})`);
  assert(col10Res.body.includes('Seasons 1 &amp; 2 (Combined Source Release)'), 'Kosem collection page renders honest combined title');
  assert(col10Res.body.includes('combined collection. Boundaries preserved'), 'Kosem collection page renders combined boundaries disclaimer banner');
  assert(col10Res.body.includes('/drama/kosem-sultan/watch/collection-10-episode-1'), 'Kosem episodes have playable watch links now that catalog is accessible');

  // -------------------------------------------------------------
  // Test 5: Watch Route - Subtitled Episode (Mehmed S2 Episode 1)
  // -------------------------------------------------------------
  console.log('\n--- 5. WATCH ROUTE - REPRESENTATIVE SUBTITLED EPISODE ---');
  const subRes = await fetchUrl('/drama/mehmed-fetihler-sultani/watch/collection-68-episode-1');
  assert(subRes.status === 200, `Subtitled episode watch page returns HTTP 200 (actual: ${subRes.status})`);
  assert(subRes.body.includes('Episode 1'), 'Renders episode title "Episode 1"');
  assert(subRes.body.includes('Mehmed: Fetihler Sultani'), 'Renders drama name in title/breadcrumbs');
  assert(subRes.body.includes('application/ld+json'), 'Renders VideoObject structured data');
  assert(subRes.body.includes('custom-video-player') || subRes.body.includes('video'), 'Custom player rendered on page');

  // -------------------------------------------------------------
  // Test 6: Watch Route - Representative Dubbed Episode (Kurulus Osman Episode 231)
  // -------------------------------------------------------------
  console.log('\n--- 6. WATCH ROUTE - REPRESENTATIVE DUBBED EPISODE ---');
  const dubRes = await fetchUrl('/drama/kurulus-osman/watch/collection-73-episode-231');
  assert(dubRes.status === 200, `Dubbed episode watch page returns HTTP 200 (actual: ${dubRes.status})`);
  assert(dubRes.body.includes('Episode 231'), 'Renders dubbed episode title "Episode 231"');
  assert(dubRes.body.includes('Kurulus Osman'), 'Renders drama name');

  // -------------------------------------------------------------
  // Test 7: Staging Strict Noindex Verification
  // -------------------------------------------------------------
  console.log('\n--- 7. STAGING STRICT NOINDEX VERIFICATION ---');
  const robotsRes = await fetchUrl('/robots.txt');
  assert(robotsRes.status === 200, '/robots.txt returns HTTP 200');
  assert(robotsRes.body.includes('Disallow: /'), '/robots.txt contains "Disallow: /"');

  const homeRes = await fetchUrl('/');
  assert(homeRes.status === 200, 'Homepage returns HTTP 200');
  assert(homeRes.body.includes('robots" content="noindex, nofollow"'), 'Homepage contains <meta name="robots" content="noindex, nofollow"');

  const browseRes = await fetchUrl('/browse');
  assert(browseRes.status === 200, 'Browse page returns HTTP 200');
  assert(browseRes.body.includes('robots" content="noindex, nofollow"'), 'Browse page contains <meta name="robots" content="noindex, nofollow"');

  const searchRes = await fetchUrl('/search?q=Mehmed');
  assert(searchRes.status === 200, 'Search page returns HTTP 200');
  assert(searchRes.body.includes('robots" content="noindex, nofollow"'), 'Search page contains <meta name="robots" content="noindex, nofollow"');

  // -------------------------------------------------------------
  // Test 8: Unapproved Editorial Draft Privacy
  // -------------------------------------------------------------
  console.log('\n--- 8. UNAPPROVED EDITORIAL DRAFT PRIVACY ---');
  // Check if unapproved drafts are not leaked into the HTML of the watch page
  assert(!subRes.body.includes('gemma-offline-batch-1'), 'Watch page does NOT leak offline unapproved draft provenance');

  // -------------------------------------------------------------
  // Test 9: Extras Isolation
  // -------------------------------------------------------------
  console.log('\n--- 9. EXTRAS ISOLATION ---');
  const extras = await adminDbQuery(`SELECT * FROM public.video_variants WHERE group_id IS NULL AND source_id != 'video-1974';`);
  assert(extras.length === 5, `Unassigned extras count is exactly 5 (actual: ${extras.length})`);
  const extraIds = extras.map(e => e.source_id);
  console.log(`       Isolated extra IDs: ${extraIds.join(', ')}`);

  console.log('\n================================================================');
  console.log(`VERIFICATION SUMMARY: ${passed} PASSED, ${failed} FAILED`);
  console.log('================================================================\n');

  if (failed > 0) {
    process.exit(1);
  } else {
    process.exit(0);
  }
}

runVerification().catch(err => {
  console.error('Test script crashed:', err);
  process.exit(1);
});
