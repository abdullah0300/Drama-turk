import { NextRequest } from 'next/server';

export interface AdminAuthResult {
  isAuthorized: boolean;
  mode: 'development' | 'authenticated' | 'unauthorized';
  message?: string;
}

export function verifyAdminAccess(request?: NextRequest | Request): AdminAuthResult {
  const adminMode = process.env.ADMIN_MODE || 'development';
  const secretKey = process.env.ADMIN_SECRET_KEY;

  // In local development, if configured as development mode, allow local access
  if (adminMode === 'development' && process.env.NODE_ENV !== 'production') {
    return {
      isAuthorized: true,
      mode: 'development',
      message: 'Local development admin access enabled.',
    };
  }

  // In production or when strictly enforced, verify authorization header or cookie
  if (!secretKey) {
    return {
      isAuthorized: false,
      mode: 'unauthorized',
      message: 'Admin access disabled: ADMIN_SECRET_KEY not configured.',
    };
  }

  if (request) {
    const authHeader = request.headers.get('authorization') || '';
    const token = authHeader.replace(/^Bearer\s+/i, '').trim();

    if (token === secretKey) {
      return {
        isAuthorized: true,
        mode: 'authenticated',
      };
    }
  }

  return {
    isAuthorized: false,
    mode: 'unauthorized',
    message: 'Invalid or missing admin credentials.',
  };
}
