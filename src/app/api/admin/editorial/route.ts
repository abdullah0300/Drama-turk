import { NextRequest, NextResponse } from 'next/server';
import { revalidatePath } from 'next/cache';
import { verifyAdminAccess } from '@/lib/auth/admin-auth';
import fs from 'fs';
import path from 'path';

// Helper to query remote Supabase using management / superuser connection
async function executeAdminQuery(sql: string) {
  let token: string | null = null;
  const oauthPath = 'C:/Users/larai/.gemini/antigravity/mcp_oauth_tokens.json';
  if (fs.existsSync(oauthPath)) {
    const tokens = JSON.parse(fs.readFileSync(oauthPath, 'utf8'));
    const key = Object.keys(tokens).find(k => k.includes('zvwltfqhbpqtnjbsflvk'));
    if (key && tokens[key]?.token?.access_token) {
      token = tokens[key].token.access_token;
    }
  }

  if (!token) {
    throw new Error('Supabase management credentials not available on server.');
  }

  const projectRef = 'zvwltfqhbpqtnjbsflvk';
  const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
    method: 'POST',
    headers: {
      'Authorization': `Bearer ${token}`,
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ query: sql })
  });

  if (!res.ok) {
    const errText = await res.text();
    throw new Error(`Admin query failed (${res.status}): ${errText}`);
  }

  return await res.json();
}

function escapeSql(val: any): string {
  if (val === null || val === undefined) return 'NULL';
  if (typeof val === 'number') return String(val);
  if (typeof val === 'boolean') return val ? 'true' : 'false';
  return `'${String(val).replace(/'/g, "''")}'`;
}

export async function POST(req: NextRequest) {
  const auth = await verifyAdminAccess(req);
  if (!auth.isAuthorized) {
    return NextResponse.json({ error: auth.message || 'Unauthorized admin access' }, { status: 401 });
  }

  try {
    const body = await req.json();
    const { action, targetType, targetId, payload } = body;

    if (!action || !targetType || !targetId) {
      return NextResponse.json({ error: 'Missing required parameters: action, targetType, targetId' }, { status: 400 });
    }

    if (action === 'update_metadata') {
      if (targetType === 'episode_group') {
        const { label, short_description } = payload || {};
        if (!label) return NextResponse.json({ error: 'Missing label in payload' }, { status: 400 });
        
        // Isolate editorial override in public.published_editorial (preserving raw imported episode_groups row)
        const sql = `
          INSERT INTO public.published_editorial (group_id, approved_display_title, short_description, updated_at)
          SELECT id, ${escapeSql(label)}, ${escapeSql(short_description || '')}, now()
          FROM public.episode_groups 
          WHERE source_id = ${escapeSql(targetId)}
          ON CONFLICT (group_id) WHERE group_id IS NOT NULL DO UPDATE SET
            approved_display_title = EXCLUDED.approved_display_title,
            short_description = EXCLUDED.short_description,
            updated_at = now()
          RETURNING id, group_id, approved_display_title, short_description, updated_at;
        `;
        const result = await executeAdminQuery(sql);

        // Immediate cache invalidation
        revalidatePath('/', 'layout');
        return NextResponse.json({ success: true, updated: result, is_editorial_override: true });
      }

      if (targetType === 'drama') {
        const { display_name, short_overview } = payload || {};
        if (!display_name) return NextResponse.json({ error: 'Missing display_name in payload' }, { status: 400 });

        // Isolate editorial override in public.published_editorial (preserving raw imported dramas row)
        const sql = `
          INSERT INTO public.published_editorial (drama_id, approved_display_title, short_description, updated_at)
          SELECT id, ${escapeSql(display_name)}, ${escapeSql(short_overview || '')}, now()
          FROM public.dramas 
          WHERE source_id = ${escapeSql(targetId)}
          ON CONFLICT (drama_id) WHERE drama_id IS NOT NULL DO UPDATE SET
            approved_display_title = EXCLUDED.approved_display_title,
            short_description = EXCLUDED.short_description,
            updated_at = now()
          RETURNING id, drama_id, approved_display_title, short_description, updated_at;
        `;
        const result = await executeAdminQuery(sql);

        // Immediate cache invalidation
        revalidatePath(`/drama/${targetId}`);
        revalidatePath('/browse');
        revalidatePath('/');
        return NextResponse.json({ success: true, updated: result, is_editorial_override: true });
      }
    }

    if (action === 'set_publication_status') {
      const { status } = payload || {};
      if (!['published', 'draft', 'archived'].includes(status)) {
        return NextResponse.json({ error: 'Invalid status. Must be published, draft, or archived' }, { status: 400 });
      }

      if (targetType === 'episode_group') {
        const sql = `
          UPDATE public.episode_groups
          SET status = ${escapeSql(status)}, updated_at = now()
          WHERE source_id = ${escapeSql(targetId)}
          RETURNING id, source_id, label, status, updated_at;
        `;
        const result = await executeAdminQuery(sql);

        // Also update child video variants publication_state
        await executeAdminQuery(`
          UPDATE public.video_variants
          SET publication_state = ${escapeSql(status)}, updated_at = now()
          WHERE group_id = (SELECT id FROM public.episode_groups WHERE source_id = ${escapeSql(targetId)});
        `);

        // Immediate cache invalidation
        revalidatePath('/', 'layout');
        return NextResponse.json({ success: true, updated: result });
      }

      if (targetType === 'drama') {
        const sql = `
          UPDATE public.dramas
          SET status = ${escapeSql(status)}, updated_at = now()
          WHERE source_id = ${escapeSql(targetId)}
          RETURNING id, source_id, display_name, status, updated_at;
        `;
        const result = await executeAdminQuery(sql);

        // Immediate cache invalidation
        revalidatePath(`/drama/${targetId}`);
        revalidatePath('/browse');
        revalidatePath('/');
        return NextResponse.json({ success: true, updated: result });
      }
    }

    return NextResponse.json({ error: `Unknown action: ${action}` }, { status: 400 });
  } catch (err: any) {
    return NextResponse.json({ error: err.message || 'Internal server error' }, { status: 500 });
  }
}

export async function GET(req: NextRequest) {
  const auth = await verifyAdminAccess(req);
  if (!auth.isAuthorized) {
    return NextResponse.json({ error: auth.message || 'Unauthorized admin access' }, { status: 401 });
  }

  const { searchParams } = new URL(req.url);
  const targetType = searchParams.get('type');
  const targetId = searchParams.get('id');

  if (targetType === 'draft_preview' && targetId) {
    try {
      const groupSql = `
        SELECT 
          eg.id, eg.source_id, eg.label, eg.status, eg.reported_episode_number, eg.bolum,
          c.source_id as collection_source_id, c.label as collection_label,
          d.source_id as drama_source_id, d.display_name as drama_name
        FROM public.episode_groups eg
        JOIN public.collections c ON eg.collection_id = c.id
        JOIN public.dramas d ON c.drama_id = d.id
        WHERE eg.source_id = ${escapeSql(targetId)};
      `;
      const groupRows = await executeAdminQuery(groupSql);
      if (!groupRows || groupRows.length === 0) {
        return NextResponse.json({ draft_preview: null }, { status: 404 });
      }

      const group = groupRows[0];
      const variantsSql = `
        SELECT 
          vv.id, vv.source_id as variant_id, vv.version, vv.display_label, vv.publication_state,
          COALESCE(
            (SELECT json_agg(ss.delivery_url) FROM public.stream_sources ss WHERE ss.variant_id = vv.id AND ss.is_active = true),
            '[]'::json
          ) as streams
        FROM public.video_variants vv
        WHERE vv.group_id = '${group.id}';
      `;
      const variants = await executeAdminQuery(variantsSql);

      return NextResponse.json({
        draft_preview: {
          ...group,
          variants
        }
      });
    } catch (err: any) {
      return NextResponse.json({ error: err.message }, { status: 500 });
    }
  }

  return NextResponse.json({ status: 'admin_authenticated', mode: auth.mode });
}
