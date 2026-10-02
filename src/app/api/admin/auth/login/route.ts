import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import { Database } from '@/types/database.types';

export async function POST(req: NextRequest) {
  try {
    const { email, password } = await req.json();

    if (!email || !password) {
      return NextResponse.json({ error: 'Email and password are required.' }, { status: 400 });
    }

    const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
    const anonKey = process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

    if (!url || !anonKey) {
      return NextResponse.json({ error: 'Supabase configuration missing on server.' }, { status: 500 });
    }

    const supabase = createClient<Database>(url, anonKey, {
      auth: { persistSession: false },
    });

    const { data, error } = await supabase.auth.signInWithPassword({
      email,
      password,
    });

    if (error || !data.user || !data.session) {
      return NextResponse.json({ error: error?.message || 'Invalid credentials.' }, { status: 401 });
    }

    // Verify admin membership
    const { data: membership } = await supabase
      .from('admin_memberships')
      .select('role, is_enabled')
      .eq('user_id', data.user.id)
      .eq('is_enabled', true)
      .maybeSingle();

    if (!membership) {
      return NextResponse.json({ error: 'Forbidden: User is not authorized as staff or administrator.' }, { status: 403 });
    }

    const response = NextResponse.json({
      success: true,
      user: {
        id: data.user.id,
        email: data.user.email,
        role: (membership as any).role,
      },
      access_token: data.session.access_token,
      expires_in: data.session.expires_in,
    });

    response.cookies.set({
      name: 'sb-access-token',
      value: data.session.access_token,
      httpOnly: true,
      secure: process.env.NODE_ENV === 'production',
      sameSite: 'lax',
      path: '/',
      maxAge: data.session.expires_in || 60 * 60 * 24 * 7,
    });

    return response;
  } catch (err: any) {
    return NextResponse.json({ error: err.message || 'Internal login error.' }, { status: 500 });
  }
}
