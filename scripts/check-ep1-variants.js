const fs = require('fs');

async function test() {
  const envContent = fs.readFileSync('.env.local', 'utf8');
  const env = {};
  envContent.split('\n').forEach(line => {
    const m = line.match(/^([A-Za-z0-9_]+)=(.*)$/);
    if (m) env[m[1]] = m[2].trim();
  });

  const { createClient } = require('@supabase/supabase-js');
  const supabase = createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY);

  const { data: group } = await supabase
    .from('episode_groups')
    .select('id, source_id')
    .eq('source_id', 'collection-68-episode-1')
    .single();

  const { data: variants } = await supabase
    .from('video_variants')
    .select('id, source_id, version, languages, display_label')
    .eq('group_id', group.id);

  console.log('Variants for Ep 1:', variants);
}

test().catch(console.error);
