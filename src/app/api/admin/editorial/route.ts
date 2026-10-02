import { NextRequest, NextResponse } from 'next/server';
import { revalidatePath } from 'next/cache';
import { verifyAdminAccess, createAdminClient } from '@/lib/auth/admin-auth';

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

    const client: any = createAdminClient(auth.token);
    const now = new Date().toISOString();

    if (action === 'update_metadata') {
      if (targetType === 'episode_group') {
        const { label, short_description } = payload || {};
        if (!label) return NextResponse.json({ error: 'Missing label in payload' }, { status: 400 });

        const { data: group } = await client
          .from('episode_groups')
          .select('id')
          .eq('source_id', targetId)
          .single();

        if (!group) return NextResponse.json({ error: `Episode group ${targetId} not found` }, { status: 404 });

        const { data: updated, error } = await (client as any)
          .from('published_editorial')
          .upsert(
            {
              group_id: (group as any).id,
              approved_display_title: label,
              short_description: short_description || '',
              updated_at: now,
            },
            { onConflict: 'group_id' }
          )
          .select('id, group_id, approved_display_title, short_description, updated_at');

        if (error) {
          return NextResponse.json({ error: error.message }, { status: 500 });
        }

        revalidatePath('/', 'layout');
        return NextResponse.json({ success: true, updated, is_editorial_override: true });
      }

      if (targetType === 'drama') {
        const { display_name, short_overview } = payload || {};
        if (!display_name) return NextResponse.json({ error: 'Missing display_name in payload' }, { status: 400 });

        const { data: drama } = await client
          .from('dramas')
          .select('id')
          .eq('source_id', targetId)
          .single();

        if (!drama) return NextResponse.json({ error: `Drama ${targetId} not found` }, { status: 404 });

        const { data: updated, error } = await (client as any)
          .from('published_editorial')
          .upsert(
            {
              drama_id: (drama as any).id,
              approved_display_title: display_name,
              short_description: short_overview || '',
              updated_at: now,
            },
            { onConflict: 'drama_id' }
          )
          .select('id, drama_id, approved_display_title, short_description, updated_at');

        if (error) {
          return NextResponse.json({ error: error.message }, { status: 500 });
        }

        revalidatePath(`/drama/${targetId}`);
        revalidatePath('/browse');
        revalidatePath('/');
        return NextResponse.json({ success: true, updated, is_editorial_override: true });
      }
    }

    if (action === 'set_publication_status') {
      const { status } = payload || {};
      if (!['published', 'draft', 'archived'].includes(status)) {
        return NextResponse.json({ error: 'Invalid status. Must be published, draft, or archived' }, { status: 400 });
      }

      if (targetType === 'episode_group') {
        const { data: group, error: grpErr } = await client
          .from('episode_groups')
          .update({ status, updated_at: now })
          .eq('source_id', targetId)
          .select('id, source_id, label, status, updated_at')
          .single();

        if (grpErr) return NextResponse.json({ error: grpErr.message }, { status: 500 });

        if (group) {
          await client
            .from('video_variants')
            .update({ publication_state: status, updated_at: now })
            .eq('group_id', (group as any).id);
        }

        revalidatePath('/', 'layout');
        return NextResponse.json({ success: true, updated: group });
      }

      if (targetType === 'drama') {
        const { data: drama, error: drmErr } = await client
          .from('dramas')
          .update({ status, updated_at: now })
          .eq('source_id', targetId)
          .select('id, source_id, display_name, status, updated_at')
          .single();

        if (drmErr) return NextResponse.json({ error: drmErr.message }, { status: 500 });

        revalidatePath(`/drama/${targetId}`);
        revalidatePath('/browse');
        revalidatePath('/');
        return NextResponse.json({ success: true, updated: drama });
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
      const client = createAdminClient(auth.token);
      const { data: group } = await client
        .from('episode_groups')
        .select('id, source_id, label, status, reported_episode_number, bolum, collections(source_id, label, dramas(source_id, display_name))')
        .eq('source_id', targetId)
        .single();

      if (!group) {
        return NextResponse.json({ draft_preview: null }, { status: 404 });
      }

      const { data: variants } = await client
        .from('video_variants')
        .select('id, source_id, version, display_label, publication_state, stream_sources(delivery_url, is_active)')
        .eq('group_id', (group as any).id);

      const formattedVariants = (variants || []).map((v: any) => ({
        id: v.id,
        variant_id: v.source_id,
        version: v.version,
        display_label: v.display_label,
        publication_state: v.publication_state,
        streams: (v.stream_sources || []).filter((s: any) => s.is_active).map((s: any) => s.delivery_url),
      }));

      const col = (group as any).collections;
      const drm = col?.dramas;

      return NextResponse.json({
        draft_preview: {
          id: (group as any).id,
          source_id: (group as any).source_id,
          label: (group as any).label,
          status: (group as any).status,
          reported_episode_number: (group as any).reported_episode_number,
          bolum: (group as any).bolum,
          collection_source_id: col?.source_id,
          collection_label: col?.label,
          drama_source_id: drm?.source_id,
          drama_name: drm?.display_name,
          variants: formattedVariants,
        },
      });
    } catch (err: any) {
      return NextResponse.json({ error: err.message }, { status: 500 });
    }
  }

  return NextResponse.json({ status: 'admin_authenticated', mode: auth.mode });
}
