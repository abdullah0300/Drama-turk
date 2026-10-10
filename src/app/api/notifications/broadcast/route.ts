import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import { z } from 'zod';
import { sendEpisodeReleaseAlert } from '@/lib/notifications/email';
import { siteConfig } from '@/config/site';

const broadcastSchema = z.object({
  dramaId: z.string().min(1),
  dramaName: z.string().optional(),
  season: z.number().int().positive(),
  episode: z.number().int().positive(),
  bolum: z.number().int().positive().nullable().optional(),
  watchUrl: z.string().optional(),
  thumbnailUrl: z.string().url().optional(),
  adminSecret: z.string().optional(),
});

export async function POST(req: NextRequest) {
  try {
    const body = await req.json();
    const parsed = broadcastSchema.safeParse(body);

    if (!parsed.success) {
      return NextResponse.json({ error: parsed.error.issues[0]?.message || 'Invalid payload' }, { status: 400 });
    }

    const { dramaId, dramaName, season, episode, bolum, watchUrl, thumbnailUrl, adminSecret } = parsed.data;

    // Optional admin security check
    const expectedSecret = process.env.ADMIN_SECRET_KEY || 'local_dev_secret_key_12345';
    if (adminSecret && adminSecret !== expectedSecret) {
      return NextResponse.json({ error: 'Unauthorized secret' }, { status: 401 });
    }

    const url = process.env.NEXT_PUBLIC_SUPABASE_URL!;
    const key = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;
    const supabase = createClient(url, key);

    // Fetch active subscribers for this drama
    const { data: subscribers, error } = await supabase
      .from('drama_subscriptions')
      .select('email, unsubscribe_token, drama_name')
      .eq('drama_id', dramaId)
      .eq('status', 'active');

    if (error) {
      console.error('[Broadcast Error] Could not query subscribers:', error);
      return NextResponse.json({ error: 'Database query failed' }, { status: 500 });
    }

    if (!subscribers || subscribers.length === 0) {
      return NextResponse.json({
        success: true,
        dispatchedCount: 0,
        message: `No active subscribers found for drama ${dramaId}.`,
      });
    }

    const resolvedDramaName = dramaName || subscribers[0]?.drama_name || dramaId;
    const finalWatchUrl = watchUrl || `${siteConfig.domain}/drama/${dramaId}/season-${season}/episode-${episode}`;

    let successCount = 0;
    let failureCount = 0;

    // Send emails (concurrently with Promise.allSettled)
    const results = await Promise.allSettled(
      subscribers.map((sub) =>
        sendEpisodeReleaseAlert({
          email: sub.email,
          dramaName: resolvedDramaName,
          dramaId,
          season,
          episode,
          bolum: bolum ?? null,
          watchUrl: finalWatchUrl,
          thumbnailUrl,
          unsubscribeToken: sub.unsubscribe_token,
        })
      )
    );

    results.forEach((res) => {
      if (res.status === 'fulfilled') successCount++;
      else {
        failureCount++;
        console.warn('[Broadcast Alert Error]:', res.reason);
      }
    });

    return NextResponse.json({
      success: true,
      totalSubscribers: subscribers.length,
      dispatchedCount: successCount,
      failedCount: failureCount,
      dramaId,
      episode: `S${season} E${episode}`,
    });
  } catch (err: any) {
    console.error('[Broadcast Exception]:', err);
    return NextResponse.json({ error: err?.message || 'Server error' }, { status: 500 });
  }
}
