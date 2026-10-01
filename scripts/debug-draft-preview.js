const fs = require('fs');

async function test() {
  const envContent = fs.readFileSync('.env.local', 'utf8');
  const env = {};
  envContent.split('\n').forEach(line => {
    const m = line.match(/^([A-Za-z0-9_]+)=(.*)$/);
    if (m) env[m[1]] = m[2].trim();
  });

  const res = await fetch(`http://localhost:3000/api/admin/editorial?type=draft_preview&id=collection-82-bolum-84`, {
    headers: { 'Authorization': `Bearer ${env.ADMIN_SECRET_KEY}` }
  });
  console.log('Status:', res.status);
  const text = await res.text();
  console.log('Body:', text);
}

test().catch(console.error);
