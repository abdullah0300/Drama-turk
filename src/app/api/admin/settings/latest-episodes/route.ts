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
    let priorityDramaIds: string[] = [];

    if (Array.isArray(body.priorityDramaIds)) {
      priorityDramaIds = body.priorityDramaIds
        .filter((id: unknown): id is string => typeof id === 'string' && id.trim().length > 0)
        .slice(0, 5);
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
      latest_episodes_priority_ids: priorityDramaIds,
    };

    // 2. Update public_site_settings
    const { error: settingsErr } = await client
      .from('public_site_settings')
      .update({
        feature_flags: updatedFlags,
        updated_at: new Date().toISOString(),
      })
      .eq('id', 'current');

    if (settingsErr) {
      console.error('[LatestEpisodesPriorityRoute] Failed to update public_site_settings:', settingsErr);
      return NextResponse.json({ error: settingsErr.message }, { status: 500 });
    }

    // 3. Revalidate homepage and admin routes
    try {
      revalidateTag('public-catalog');
      revalidatePath('/');
      revalidatePath('/admin');
    } catch (e) {
      console.warn('[LatestEpisodesPriorityRoute] Cache revalidation error:', e);
    }

    return NextResponse.json({
      success: true,
      priorityDramaIds,
    });
  } catch (error) {
    console.error('[LatestEpisodesPriorityRoute] Unexpected error:', error);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}
