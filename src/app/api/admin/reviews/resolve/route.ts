import { NextRequest, NextResponse } from 'next/server';
import { verifyAdminAccess, createAdminClient } from '@/lib/auth/admin-auth';

export async function POST(req: NextRequest) {
  const auth = await verifyAdminAccess(req);
  if (!auth.isAuthorized) {
    return NextResponse.json({ error: auth.message || 'Unauthorized' }, { status: 401 });
  }

  try {
    const { findingId, isResolved, resolutionNotes } = await req.json();
    if (!findingId) {
      return NextResponse.json({ error: 'findingId is required' }, { status: 400 });
    }

    const client: any = createAdminClient(auth.token);
    const { data, error } = await client
      .from('review_findings')
      .update({
        is_resolved: isResolved ?? true,
        resolution_notes: resolutionNotes ?? (isResolved === false ? null : 'Resolved via Admin Console'),
        reviewed_at: isResolved === false ? null : new Date().toISOString(),
        reviewer_id: isResolved === false ? null : auth.user?.id,
      })
      .eq('id', findingId)
      .select()
      .single();

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json({ success: true, finding: data });
  } catch (err: any) {
    return NextResponse.json({ error: err.message }, { status: 500 });
  }
}
