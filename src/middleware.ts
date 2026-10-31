import { type NextRequest } from 'next/server';
import { updateSession } from '@/lib/supabase/middleware';

export async function middleware(request: NextRequest) {
  // Only invoke Supabase Auth / session handling for admin routes or auth endpoints.
  // Public routes (/drama, /browse, /search, /, etc.) do not require auth and
  // should not trigger Supabase network roundtrips on every page hit.
  const path = request.nextUrl.pathname;
  if (path.startsWith('/admin') || path.startsWith('/api/admin')) {
    return await updateSession(request);
  }
}

export const config = {
  matcher: [
    /*
     * Only match admin routes and admin APIs to eliminate unnecessary
     * Supabase auth queries and bandwidth on public pages.
     */
    '/admin/:path*',
    '/api/admin/:path*',
  ],
};
