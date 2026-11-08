import { NextRequest, NextResponse } from 'next/server';
import { revalidatePath, revalidateTag } from 'next/cache';
import { verifyAdminAccess } from '@/lib/auth/admin-auth';
import { PUBLIC_CATALOG_TAG } from '@/lib/public-catalog-cache';

export async function POST(req: NextRequest) {
  const auth = await verifyAdminAccess(req);
  if (!auth.isAuthorized) {
    return NextResponse.json({ error: auth.message || 'Unauthorized admin access' }, { status: 401 });
  }

  try {
    revalidateTag(PUBLIC_CATALOG_TAG);
    revalidatePath('/', 'layout');
    revalidatePath('/browse', 'page');
    revalidatePath('/search', 'page');

    return NextResponse.json({
      success: true,
      message: 'Revalidated public-catalog tag and catalog pages.',
      timestamp: new Date().toISOString(),
    });
  } catch (error: any) {
    return NextResponse.json({ error: error.message || 'Revalidation failed' }, { status: 500 });
  }
}
