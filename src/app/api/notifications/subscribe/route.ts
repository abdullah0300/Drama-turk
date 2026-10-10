import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import { z } from 'zod';
import { sendSubscriptionConfirmation } from '@/lib/notifications/email';

const subscribeSchema = z.object({
  email: z.string().email('Please enter a valid email address').max(255),
  dramaId: z.string().min(1, 'Drama ID is required'),
  dramaName: z.string().optional(),
});

export async function POST(req: NextRequest) {
  try {
    const body = await req.json();
    const parsed = subscribeSchema.safeParse(body);

    if (!parsed.success) {
      return NextResponse.json(
        { error: parsed.error.issues[0]?.message || 'Invalid input' },
        { status: 400 }
      );
    }

    const { email, dramaId, dramaName } = parsed.data;
    const normalizedEmail = email.toLowerCase().trim();
    const resolvedName = dramaName || dramaId.split('-').map(s => s.charAt(0).toUpperCase() + s.slice(1)).join(' ');

    const url = process.env.NEXT_PUBLIC_SUPABASE_URL!;
    const key = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;
    const supabase = createClient(url, key);

    // Upsert subscription into drama_subscriptions table
    const { data, error } = await supabase
      .from('drama_subscriptions')
      .upsert(
        {
          email: normalizedEmail,
          drama_id: dramaId,
          drama_name: resolvedName,
          status: 'active',
          updated_at: new Date().toISOString(),
        },
        { onConflict: 'email,drama_id' }
      )
      .select('id, email, drama_id, drama_name, unsubscribe_token')
      .single();

    if (error || !data) {
      console.error('[Subscribe Error] Supabase upsert failed:', error);
      return NextResponse.json(
        { error: 'Failed to save subscription. Please try again later.' },
        { status: 500 }
      );
    }

    // Attempt to send confirmation email
    try {
      await sendSubscriptionConfirmation({
        email: data.email,
        dramaName: data.drama_name || resolvedName,
        dramaId: data.drama_id,
        unsubscribeToken: data.unsubscribe_token,
      });
    } catch (emailErr) {
      // In dev / unverified domain mode Resend might reject outside recipients.
      // Log warning, but do NOT fail user subscription in database.
      console.warn('[Subscribe Warning] Confirmation email not dispatched:', emailErr);
    }

    return NextResponse.json({
      success: true,
      message: `Subscribed! You will be notified when new episodes of ${resolvedName} drop.`,
      email: data.email,
      dramaId: data.drama_id,
    });
  } catch (err: any) {
    console.error('[Subscribe Exception]:', err);
    return NextResponse.json(
      { error: err?.message || 'Internal server error' },
      { status: 500 }
    );
  }
}

export async function GET(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const email = searchParams.get('email');
    const dramaId = searchParams.get('dramaId');

    if (!email || !dramaId) {
      return NextResponse.json({ error: 'Missing email or dramaId parameter' }, { status: 400 });
    }

    const normalizedEmail = email.toLowerCase().trim();
    const url = process.env.NEXT_PUBLIC_SUPABASE_URL!;
    const key = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;
    const supabase = createClient(url, key);

    const { data, error } = await supabase
      .from('drama_subscriptions')
      .select('id, status')
      .eq('email', normalizedEmail)
      .eq('drama_id', dramaId)
      .eq('status', 'active')
      .maybeSingle();

    if (error) {
      console.warn('[Check Subscription Error]:', error.message);
      return NextResponse.json({ subscribed: false }, { status: 200 });
    }

    return NextResponse.json({
      subscribed: Boolean(data),
      email: normalizedEmail,
      dramaId,
    });
  } catch (err: any) {
    return NextResponse.json({ subscribed: false }, { status: 200 });
  }
}

