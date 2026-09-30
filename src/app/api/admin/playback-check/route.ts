import { NextRequest, NextResponse } from 'next/server';
import { verifyAdminAccess } from '@/lib/auth/admin-auth';
import { catalogRepository } from '@/lib/repository/catalog-repository';
import { PlaybackCheckLog } from '@/types/catalog';

export async function POST(req: NextRequest) {
  const auth = verifyAdminAccess(req);
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

        const checkLog: PlaybackCheckLog = {
          id: `check-${Date.now()}`,
          video_id: videoId,
          stream_url: streamUrl,
          check_type: 'reachability_head',
          status: headRes.ok ? 'passed' : 'failed',
          http_status: headRes.status,
          content_type: headRes.headers.get('content-type') || undefined,
          checked_at: new Date().toISOString(),
          checked_by: 'admin_health_agent',
        };

        catalogRepository.recordPlaybackCheck(checkLog);
        return NextResponse.json({ success: true, check: checkLog });
      } catch (err: any) {
        clearTimeout(timeout);
        const checkLog: PlaybackCheckLog = {
          id: `check-${Date.now()}`,
          video_id: videoId,
          stream_url: streamUrl,
          check_type: 'reachability_head',
          status: 'failed',
          error_message: err.message,
          checked_at: new Date().toISOString(),
        };

        catalogRepository.recordPlaybackCheck(checkLog);
        return NextResponse.json({ success: false, check: checkLog });
      }
    } else if (checkType === 'browser_playback') {
      const checkLog: PlaybackCheckLog = {
        id: `check-${Date.now()}`,
        video_id: videoId,
        stream_url: streamUrl,
        check_type: 'browser_playback',
        status: body.status === 'passed' ? 'passed' : 'failed',
        error_message: body.errorMessage,
        checked_at: new Date().toISOString(),
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
  const auth = verifyAdminAccess(req);
  if (!auth.isAuthorized) {
    return NextResponse.json({ error: auth.message || 'Unauthorized' }, { status: 401 });
  }

  catalogRepository.ensureLoaded();
  const checks = catalogRepository.getPlaybackChecks();
  return NextResponse.json({ checks });
}
