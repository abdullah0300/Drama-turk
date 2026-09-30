import { NextRequest, NextResponse } from 'next/server';
import path from 'path';
import { verifyAdminAccess } from '@/lib/auth/admin-auth';
import { importGemmaBatchFile } from '@/lib/editorial/editorial-importer';
import { catalogRepository } from '@/lib/repository/catalog-repository';

export async function POST(req: NextRequest) {
  const auth = verifyAdminAccess(req);
  if (!auth.isAuthorized) {
    return NextResponse.json({ error: auth.message || 'Unauthorized' }, { status: 401 });
  }

  try {
    const samplePath = path.join(process.cwd(), 'catalog_data', 'sample_gemma_batch.json');
    const result = importGemmaBatchFile(samplePath);
    return NextResponse.json({
      success: true,
      message: `Imported ${result.imported} draft(s) with ${result.invalidReferences} reference errors.`,
      result,
    });
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
  const drafts = catalogRepository.getAllEditorialDrafts();
  return NextResponse.json({ drafts });
}
