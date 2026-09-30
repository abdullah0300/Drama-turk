import fs from 'fs';
import path from 'path';
import { z } from 'zod';
import { EditorialDraft } from '@/types/catalog';
import { catalogRepository } from '@/lib/repository/catalog-repository';

export const GemmaArticleSectionSchema = z.object({
  heading: z.string().min(1),
  content: z.string().min(1),
  is_spoiler: z.boolean().default(false),
});

export const GemmaEditorialBatchItemSchema = z.object({
  id: z.string().min(1),
  drama_id: z.string().min(1),
  collection_id: z.string().optional(),
  episode_group_id: z.string().optional(),
  video_id: z.string().optional(),
  proposed_display_title: z.string().min(1),
  short_description: z.string().min(1),
  sections: z.array(GemmaArticleSectionSchema),
  seo_title: z.string().optional(),
  seo_description: z.string().optional(),
  source_record_reference: z.string().optional(),
  review_flags: z.array(z.string()).default([]),
  generation_provenance: z.object({
    model: z.string(),
    timestamp: z.string(),
    offline_batch_id: z.string().optional(),
  }),
  approval_status: z.enum(['draft', 'under_review', 'approved', 'rejected']).default('draft'),
});

export const GemmaEditorialBatchSchema = z.array(GemmaEditorialBatchItemSchema);

export interface EditorialImportResult {
  total: number;
  imported: number;
  skippedDuplicates: number;
  invalidReferences: number;
  errors: string[];
}

export function importGemmaBatchFile(filePath: string): EditorialImportResult {
  const result: EditorialImportResult = {
    total: 0,
    imported: 0,
    skippedDuplicates: 0,
    invalidReferences: 0,
    errors: [],
  };

  if (!fs.existsSync(filePath)) {
    result.errors.push(`File not found: ${filePath}`);
    return result;
  }

  try {
    const raw = JSON.parse(fs.readFileSync(filePath, 'utf8'));
    const parsed = GemmaEditorialBatchSchema.safeParse(raw);

    if (!parsed.success) {
      result.errors.push(`Schema validation failed: ${parsed.error.message}`);
      return result;
    }

    result.total = parsed.data.length;
    catalogRepository.ensureLoaded();

    for (const item of parsed.data) {
      // Validate references
      const drama = catalogRepository.getDrama(item.drama_id);
      if (!drama) {
        result.invalidReferences++;
        result.errors.push(`Draft ${item.id} references non-existent drama ${item.drama_id}`);
        continue;
      }

      if (item.episode_group_id && !catalogRepository.getEpisodeGroup(item.episode_group_id)) {
        result.invalidReferences++;
        result.errors.push(`Draft ${item.id} references non-existent episode group ${item.episode_group_id}`);
        continue;
      }

      // Check existing draft
      const existing = catalogRepository.getEditorialDraft(item.id);
      if (existing) {
        result.skippedDuplicates++;
        continue;
      }

      // Save draft (never overwrites verified canonical numbering or video IDs)
      const draft: EditorialDraft = {
        ...item,
        approval_status: item.approval_status || 'draft',
      };

      catalogRepository.saveEditorialDraft(draft);
      result.imported++;
    }
  } catch (err: any) {
    result.errors.push(`Failed to read/parse batch file: ${err.message}`);
  }

  return result;
}
