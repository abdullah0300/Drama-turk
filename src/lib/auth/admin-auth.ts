import { NextRequest } from 'next/server';
import { createClient, SupabaseClient } from '@supabase/supabase-js';
import { Database } from '@/types/database.types';

export interface AdminAuthResult {
  isAuthorized: boolean;
  mode: 'authenticated' | 'unauthorized';
  message?: string;
  user?: {
    id: string;
    email?: string;
  };
  role?: 'admin' | 'editor' | 'publisher';
  token?: string;
}

/**
 * Verifies admin / staff access using Supabase Auth JWT and public.admin_memberships role check.
 * Strictly replaces shared secrets with genuine user authentication and RBAC.
 */
export async function verifyAdminAccess(request?: NextRequest | Request): Promise<AdminAuthResult> {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const anonKey = process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  if (!url || !anonKey) {
    return {
      isAuthorized: false,
      mode: 'unauthorized',
      message: 'Supabase configuration missing on server.',
    };
  }

  if (!request) {
    return {
      isAuthorized: false,
      mode: 'unauthorized',
      message: 'Missing request context for authentication.',
    };
  }

  // 1. Extract Bearer token or Supabase auth token from cookie / header
  let token = '';
  const authHeader = request.headers.get('authorization') || '';
  if (authHeader.startsWith('Bearer ')) {
    token = authHeader.replace(/^Bearer\s+/i, '').trim();
  }

  // Fallback to checking cookie if header not passed
  if (!token && 'cookies' in request) {
    const cookiesObj = (request as NextRequest).cookies;
    const authCookie = cookiesObj.get('sb-access-token') || cookiesObj.get('supabase-auth-token');
    if (authCookie) {
      token = authCookie.value;
    }
  }

  // Fallback to raw Cookie header (e.g. standard Request or Server Component)
  if (!token) {
    const cookieHeader = request.headers.get('cookie') || '';
    const match = cookieHeader.match(/(?:^|;\s*)(?:sb-access-token|supabase-auth-token)=([^;]+)/);
    if (match) {
      token = decodeURIComponent(match[1]);
    }
  }

  if (!token) {
    return {
      isAuthorized: false,
      mode: 'unauthorized',
      message: 'Authentication required. No Supabase Auth Bearer token or session cookie provided.',
    };
  }

  try {
    // 2. Authenticate user against Supabase Auth service
    const supabase = createClient<Database>(url, anonKey, {
      auth: { persistSession: false }
    });

    const { data: userData, error: userError } = await supabase.auth.getUser(token);

    if (userError || !userData?.user) {
      return {
        isAuthorized: false,
        mode: 'unauthorized',
        message: userError?.message || 'Invalid or expired Supabase authentication token.',
      };
    }

    const user = userData.user;

    // 3. Verify user's role in public.admin_memberships using authenticated client
    const authScopedClient = createClient<Database>(url, anonKey, {
      auth: { persistSession: false },
      global: {
        headers: {
          Authorization: `Bearer ${token}`
        }
      }
    });

    const { data: membership, error: memError } = await authScopedClient
      .from('admin_memberships')
      .select('role, is_enabled')
      .eq('user_id', user.id)
      .eq('is_enabled', true)
      .maybeSingle();

    if (memError || !membership) {
      return {
        isAuthorized: false,
        mode: 'unauthorized',
        message: 'Forbidden: User does not possess an active staff or administrator role.',
      };
    }

    const role = (membership as any).role as 'admin' | 'editor' | 'publisher';

    return {
      isAuthorized: true,
      mode: 'authenticated',
      user: {
        id: user.id,
        email: user.email,
      },
      role,
      token,
    };
  } catch (err: any) {
    return {
      isAuthorized: false,
      mode: 'unauthorized',
      message: err.message || 'Internal authorization failure.',
    };
  }
}

/**
 * Returns a Supabase client configured for administrative operations.
 * If SUPABASE_SERVICE_ROLE_KEY is present, it uses it for full bypass;
 * otherwise it uses the authenticated user's JWT token which satisfies RLS policies.
 */
export function createAdminClient(token?: string): SupabaseClient<Database> {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL!;
  const serviceKey = process.env.SUPABASE_SERVICE_ROLE_KEY;
  const anonKey = process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

  const keyToUse = serviceKey || anonKey;

  return createClient<Database>(url, keyToUse, {
    auth: { persistSession: false },
    global: token && !serviceKey ? {
      headers: {
        Authorization: `Bearer ${token}`
      }
    } : undefined
  });
}
