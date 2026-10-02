import { NextResponse } from 'next/server';
import { revalidatePath } from 'next/cache';
import { verifyAdminAccess, createAdminClient } from '@/lib/auth/admin-auth';

export const dynamic = 'force-dynamic';

export async function POST(request: Request) {
  try {
    const auth = await verifyAdminAccess(request);
    if (!auth.isAuthorized) {
      return NextResponse.json({ error: auth.message || 'Unauthorized' }, { status: 401 });
    }

    const body = await request.json();
    const { dramaSourceId } = body;

    if (!dramaSourceId || typeof dramaSourceId !== 'string') {
      return NextResponse.json({ error: 'Missing or invalid dramaSourceId' }, { status: 400 });
    }

    const client: any = createAdminClient(auth.token);

    // 1. Verify that the drama exists
    const { data: drama, error: dramaErr } = await client
      .from('dramas')
      .select('id, source_id, display_name')
      .eq('source_id', dramaSourceId)
      .single();

    if (dramaErr || !drama) {
      return NextResponse.json({ error: `Drama with source_id "${dramaSourceId}" not found` }, { status: 404 });
    }

    // 2. Update public_site_settings
    const { error: settingsErr } = await client
      .from('public_site_settings')
      .update({
        pilot_drama_source_id: dramaSourceId,
        updated_at: new Date().toISOString(),
      })
      .eq('id', 'current');

    if (settingsErr) {
      console.error('[AdminHeroRoute] Failed to update public_site_settings:', settingsErr);
      return NextResponse.json({ error: settingsErr.message }, { status: 500 });
    }

    // 3. Sync is_pilot flags in dramas table
    await client
      .from('dramas')
      .update({ is_pilot: false })
      .neq('source_id', dramaSourceId);

    await client
      .from('dramas')
      .update({ is_pilot: true })
      .eq('source_id', dramaSourceId);

    // 4. Revalidate homepage and admin routes immediately
    try {
      revalidatePath('/');
      revalidatePath('/admin');
    } catch (e) {
      console.warn('[AdminHeroRoute] Cache revalidation error:', e);
    }

    return NextResponse.json({
      success: true,
      heroDrama: {
        source_id: drama.source_id,
        display_name: drama.display_name,
      },
    });
  } catch (error) {
    console.error('[AdminHeroRoute] Unexpected error:', error);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}
