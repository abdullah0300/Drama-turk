const fs = require('fs');
const { createClient } = require('@supabase/supabase-js');

const envContent = fs.readFileSync('.env.local', 'utf8');
const env = {};
envContent.split('\n').forEach(line => {
  const m = line.match(/^([A-Za-z0-9_]+)=(.*)$/);
  if (m) env[m[1]] = m[2].trim();
});

async function main() {
  const supabase = createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY);

  const { data, error } = await supabase.auth.signInWithPassword({
    email: 'admin@drama-platform.internal',
    password: 'AdminSecurity2026!'
  });

  if (error) {
    console.error('Sign in failed:', error);
    process.exit(1);
  }

  console.log('Supabase Auth sign in SUCCESSFUL!');
  console.log('User ID:', data.user.id);
  console.log('User Email:', data.user.email);
  console.log('Access token acquired length:', data.session.access_token.length);

  // Now test getUser with this token
  const { data: userData, error: userError } = await supabase.auth.getUser(data.session.access_token);
  console.log('getUser verification:', { id: userData?.user?.id, email: userData?.user?.email, valid: !userError });
}

main().catch(console.error);
