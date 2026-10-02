import { NextRequest, NextResponse } from 'next/server';
import { verifyAdminAccess, createAdminClient } from '@/lib/auth/admin-auth';
import { catalogRepository } from '@/lib/repository/catalog-repository';
import { PlaybackCheckLog } from '@/types/catalog';

export async function POST(req: NextRequest) {
  const auth = await verifyAdminAccess(req);
  if (!auth.isAuthorized) {
    return NextResponse.json({ error: auth.message || 'Unauthorized' }, { status: 401 });
  }

  try {
    const body = await req.json();
    const { videoId, streamUrl, checkType } = body;

    if (!videoId || !streamUrl) {
      return NextResponse.json({ error: 'videoId and streamUrl are required' }, { status: 400 });
    }

    // SSRF protection: only allow http/https
    const parsed = new URL(streamUrl);
    if (!['http:', 'https:'].includes(parsed.protocol)) {
      return NextResponse.json({ error: 'Invalid stream URL protocol' }, { status: 400 });
    }

    const client: any = createAdminClient(auth.token);
    const now = new Date().toISOString();

    if (checkType === 'reachability_head') {
      const controller = new AbortController();
      const timeout = setTimeout(() => controller.abort(), 6000);

      try {
        const headRes = await fetch(streamUrl, {
          method: 'HEAD',
          signal: controller.signal,
          headers: {
            'User-Agent': 'DramaPlatformStreamHealthCheck/1.0',
          },
        });
        clearTimeout(timeout);

        const isPassed = headRes.ok;
        const contentType = headRes.headers.get('content-type') || undefined;

        // Record check in Supabase stream_checks table
        const { data: dbCheck } = await client
          .from('stream_checks')
          .insert({
            variant_source_id: videoId,
            stream_url: streamUrl,
            check_method: 'reachability_head',
            status: isPassed ? 'passed' : 'failed',
            http_status: headRes.status,
            content_type: contentType,
            origin_device: 'admin_console',
            checked_at: now,
          })
          .select()
          .maybeSingle();

        const checkLog: PlaybackCheckLog = {
          id: dbCheck?.id || `check-${Date.now()}`,
          video_id: videoId,
          stream_url: streamUrl,
          check_type: 'reachability_head',
          status: isPassed ? 'passed' : 'failed',
          http_status: headRes.status,
          content_type: contentType,
          checked_at: now,
          checked_by: auth.user?.email || 'admin_console',
        };

        catalogRepository.recordPlaybackCheck(checkLog);
        return NextResponse.json({ success: true, check: checkLog });
      } catch (err: any) {
        clearTimeout(timeout);

        const { data: dbCheck } = await client
          .from('stream_checks')
          .insert({
            variant_source_id: videoId,
            stream_url: streamUrl,
            check_method: 'reachability_head',
            status: 'failed',
            error_message: err.message,
            origin_device: 'admin_console',
            checked_at: now,
          })
          .select()
          .maybeSingle();

        const checkLog: PlaybackCheckLog = {
          id: dbCheck?.id || `check-${Date.now()}`,
          video_id: videoId,
          stream_url: streamUrl,
          check_type: 'reachability_head',
          status: 'failed',
          error_message: err.message,
          checked_at: now,
          checked_by: auth.user?.email || 'admin_console',
        };

        catalogRepository.recordPlaybackCheck(checkLog);
        return NextResponse.json({ success: false, check: checkLog });
      }
    } else if (checkType === 'browser_playback') {
      const isPassed = body.status === 'passed';
      const { data: dbCheck } = await client
        .from('stream_checks')
        .insert({
          variant_source_id: videoId,
          stream_url: streamUrl,
          check_method: 'browser_playback',
          status: isPassed ? 'passed' : 'failed',
          error_message: body.errorMessage,
          origin_device: 'browser_client',
          checked_at: now,
        })
        .select()
        .maybeSingle();

      const checkLog: PlaybackCheckLog = {
        id: dbCheck?.id || `check-${Date.now()}`,
        video_id: videoId,
        stream_url: streamUrl,
        check_type: 'browser_playback',
        status: isPassed ? 'passed' : 'failed',
        error_message: body.errorMessage,
        checked_at: now,
        checked_by: 'browser_client',
      };

      catalogRepository.recordPlaybackCheck(checkLog);
      return NextResponse.json({ success: true, check: checkLog });
    }

    return NextResponse.json({ error: 'Unsupported checkType' }, { status: 400 });
  } catch (err: any) {
    return NextResponse.json({ error: err.message }, { status: 500 });
  }
}

export async function GET(req: NextRequest) {
  const auth = await verifyAdminAccess(req);
  if (!auth.isAuthorized) {
    return NextResponse.json({ error: auth.message || 'Unauthorized' }, { status: 401 });
  }

  try {
    const client: any = createAdminClient(auth.token);
    const { data: checks } = await client
      .from('stream_checks')
      .select('*')
      .order('checked_at', { ascending: false })
      .limit(20);

    return NextResponse.json({ checks: checks || [] });
  } catch {
    catalogRepository.ensureLoaded();
    const checks = catalogRepository.getPlaybackChecks();
    return NextResponse.json({ checks });
  }
}
