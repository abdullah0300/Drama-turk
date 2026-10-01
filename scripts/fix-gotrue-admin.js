const fs = require('fs');

async function main() {
  const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
  const key = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
  const token = tokens[key].token.access_token;
  const projectRef = 'zvwltfqhbpqtnjbsflvk';

  const sql = `
    UPDATE auth.users
    SET 
      confirmation_token = '',
      recovery_token = '',
      email_change_token_new = '',
      email_change_token_current = '',
      email_change = '',
      phone_change = '',
      phone_change_token = '',
      reauthentication_token = ''
    WHERE email = 'admin@drama-platform.internal';

    -- Insert into auth.identities if not exists
    INSERT INTO auth.identities (
      id,
      user_id,
      identity_data,
      provider,
      provider_id,
      last_sign_in_at,
      created_at,
      updated_at
    )
    SELECT
      id,
      id,
      json_build_object('sub', id::text, 'email', email),
      'email',
      id::text,
      now(),
      now(),
      now()
    FROM auth.users
    WHERE email = 'admin@drama-platform.internal'
    ON CONFLICT (provider_id, provider) DO NOTHING;
  `;

  const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
    method: 'POST',
    headers: { 'Authorization': `Bearer ${token}`, 'Content-Type': 'application/json' },
    body: JSON.stringify({ query: sql })
  });

  console.log('Result:', await res.json());
}

main().catch(console.error);
