const fs = require('fs');

async function main() {
  const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
  const key = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
  const token = tokens[key].token.access_token;
  const projectRef = 'zvwltfqhbpqtnjbsflvk';

  const sql = `
    -- Create admin user if not exists
    DO $$
    DECLARE
      admin_uid UUID := 'a0000000-0000-0000-0000-000000000001'::uuid;
    BEGIN
      IF NOT EXISTS (SELECT 1 FROM auth.users WHERE email = 'admin@drama-platform.internal') THEN
        INSERT INTO auth.users (
          instance_id, id, aud, role, email, encrypted_password,
          email_confirmed_at, raw_app_meta_data, raw_user_meta_data,
          created_at, updated_at
        ) VALUES (
          '00000000-0000-0000-0000-000000000000'::uuid,
          admin_uid,
          'authenticated',
          'authenticated',
          'admin@drama-platform.internal',
          extensions.crypt('AdminSecurity2026!', extensions.gen_salt('bf')),
          now(),
          '{"provider":"email","providers":["email"]}'::jsonb,
          '{"full_name":"Platform Administrator"}'::jsonb,
          now(),
          now()
        );
      END IF;

      -- Ensure admin membership exists and is enabled with 'admin' role
      INSERT INTO public.admin_memberships (user_id, role, is_enabled)
      VALUES (admin_uid, 'admin', true)
      ON CONFLICT (user_id) DO UPDATE SET role = 'admin', is_enabled = true;
    END $$;

    SELECT u.id, u.email, m.role, m.is_enabled 
    FROM auth.users u 
    JOIN public.admin_memberships m ON u.id = m.user_id;
  `;

  const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
    method: 'POST',
    headers: { 'Authorization': `Bearer ${token}`, 'Content-Type': 'application/json' },
    body: JSON.stringify({ query: sql })
  });

  console.log('Result:', await res.json());
}

main().catch(console.error);
