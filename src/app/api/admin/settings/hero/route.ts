import { NextResponse } from 'next/server';
import { revalidatePath, revalidateTag } from 'next/cache';
import { verifyAdminAccess, createAdminClient } from '@/lib/auth/admin-auth';

export const dynamic = 'force-dynamic';

export async function POST(request: Request) {
  try {
    const auth = await verifyAdminAccess(request);
    if (!auth.isAuthorized) {
      return NextResponse.json({ error: auth.message || 'Unauthorized' }, { status: 401 });
    }

    const body = await request.json();
    let heroDramaIds: string[] = [];

    if (Array.isArray(body.heroDramaIds)) {
      heroDramaIds = body.heroDramaIds.filter((id: unknown): id is string => typeof id === 'string' && id.trim().length > 0);
    } else if (typeof body.dramaSourceId === 'string' && body.dramaSourceId.trim().length > 0) {
      heroDramaIds = [body.dramaSourceId.trim()];
    }

    if (heroDramaIds.length === 0) {
      return NextResponse.json({ error: 'At least one drama series ID is required' }, { status: 400 });
    }

    const client: any = createAdminClient(auth.token);

    // 1. Fetch current settings to preserve existing feature_flags
    const { data: currentSettings } = await client
      .from('public_site_settings')
      .select('*')
      .eq('id', 'current')
      .single();

    const existingFlags = (currentSettings?.feature_flags as Record<string, any>) || {};
    const updatedFlags = {
      ...existingFlags,
      hero_drama_ids: heroDramaIds,
    };

    // 2. Update public_site_settings (slot 1 sets pilot_drama_source_id)
    const { error: settingsErr } = await client
      .from('public_site_settings')
      .update({
        pilot_drama_source_id: heroDramaIds[0],
        feature_flags: updatedFlags,
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
      .neq('source_id', heroDramaIds[0]);

    await client
      .from('dramas')
      .update({ is_pilot: true })
      .eq('source_id', heroDramaIds[0]);

    // 4. Revalidate homepage and admin routes immediately
    try {
      revalidateTag('public-catalog');
      revalidatePath('/');
      revalidatePath('/admin');
    } catch (e) {
      console.warn('[AdminHeroRoute] Cache revalidation error:', e);
    }

    return NextResponse.json({
      success: true,
      heroDramaIds,
    });
  } catch (error) {
    console.error('[AdminHeroRoute] Unexpected error:', error);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}
