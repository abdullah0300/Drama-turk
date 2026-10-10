const fs = require('fs');

async function main() {
  const tokens = JSON.parse(fs.readFileSync('C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json', 'utf8'));
  const key = 'https://mcp.supabase.com/mcp?project_ref=zvwltfqhbpqtnjbsflvk&features=docs%2Caccount%2Cdatabase%2Cdebugging%2Cdevelopment%2Cfunctions%2Cbranching';
  const token = tokens[key].token.access_token;
  const projectRef = 'zvwltfqhbpqtnjbsflvk';

  const sql = `
    CREATE TABLE IF NOT EXISTS public.drama_subscriptions (
        id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
        email TEXT NOT NULL,
        drama_id TEXT NOT NULL,
        drama_name TEXT,
        status TEXT NOT NULL DEFAULT 'active',
        edition_preference TEXT DEFAULT 'all',
        unsubscribe_token UUID NOT NULL DEFAULT gen_random_uuid(),
        created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
        updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
        CONSTRAINT unique_email_drama UNIQUE (email, drama_id)
    );

    CREATE INDEX IF NOT EXISTS idx_drama_subscriptions_lookup 
    ON public.drama_subscriptions (drama_id, status);

    CREATE INDEX IF NOT EXISTS idx_drama_subscriptions_unsub 
    ON public.drama_subscriptions (unsubscribe_token);

    ALTER TABLE public.drama_subscriptions ENABLE ROW LEVEL SECURITY;

    DROP POLICY IF EXISTS "Allow public inserts to drama_subscriptions" ON public.drama_subscriptions;
    CREATE POLICY "Allow public inserts to drama_subscriptions" 
    ON public.drama_subscriptions 
    FOR INSERT 
    WITH CHECK (true);

    DROP POLICY IF EXISTS "Allow reading subscription by token" ON public.drama_subscriptions;
    CREATE POLICY "Allow reading subscription by token" 
    ON public.drama_subscriptions 
    FOR SELECT 
    USING (true);

    DROP POLICY IF EXISTS "Allow updating subscription by token" ON public.drama_subscriptions;
    CREATE POLICY "Allow updating subscription by token" 
    ON public.drama_subscriptions 
    FOR UPDATE 
    USING (true);

    SELECT table_name FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'drama_subscriptions';
  `;

  const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
    method: 'POST',
    headers: {
      'Authorization': `Bearer ${token}`,
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ query: sql })
  });

  const data = await res.json();
  console.log('Migration result:', JSON.stringify(data, null, 2));
}

main().catch(console.error);
