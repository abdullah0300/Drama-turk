import { NextRequest, NextResponse } from 'next/server';

export const revalidate = 86400; // Cache for 24 hours

export async function GET(req: NextRequest) {
  const urlParam = req.nextUrl.searchParams.get('url');
  if (!urlParam) {
    return new NextResponse('Missing url parameter', { status: 400 });
  }

  try {
    const parsed = new URL(urlParam);
    const allowedHosts = [
      'play.niazitv.pk',
      'niazitv.pk',
      'cdn4.urduflix.pk',
      'cdn6.urduflix.pk',
      'twimg.com',
    ];

    const isAllowed = allowedHosts.some((h) => parsed.hostname === h || parsed.hostname.endsWith('.' + h));
    if (!isAllowed) {
      return new NextResponse('Forbidden domain', { status: 403 });
    }

    const upstream = await fetch(urlParam, {
      headers: {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
      },
      next: { revalidate: 86400 },
    });

    if (!upstream.ok) {
      return new NextResponse(`Upstream failed with status ${upstream.status}`, { status: upstream.status });
    }

    let text = await upstream.text();
    text = text.trim();

    // Ensure valid WebVTT format for browser video player
    if (!text.startsWith('WEBVTT')) {
      // Convert standard SRT timestamps 00:00:00,000 to 00:00:00.000
      const converted = text.replace(/(\d{2}:\d{2}:\d{2}),(\d{3})/g, '$1.$2');
      text = `WEBVTT\n\n${converted}`;
    }

    return new NextResponse(text, {
      status: 200,
      headers: {
        'Content-Type': 'text/vtt; charset=utf-8',
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Methods': 'GET, OPTIONS',
        'Cache-Control': 'public, max-age=86400, s-maxage=604800, stale-while-revalidate=86400',
      },
    });
  } catch (error: any) {
    return new NextResponse(`Failed to process subtitle track: ${error?.message || error}`, { status: 500 });
  }
}

export async function OPTIONS() {
  return new NextResponse(null, {
    status: 204,
    headers: {
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Methods': 'GET, OPTIONS',
      'Access-Control-Allow-Headers': 'Content-Type',
    },
  });
}
