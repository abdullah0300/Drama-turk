import { z } from 'zod';
import { SEO_TITLE_MAX, SEO_DESCRIPTION_MAX } from './catalog-seo';

export const PublishedEditorialInput = z.object({
  seo_title: z.string().trim().min(1).max(SEO_TITLE_MAX).optional(),
  seo_description: z.string().trim().min(1).max(SEO_DESCRIPTION_MAX).optional(),
  structured_article: z.array(z.object({
    heading: z.string().trim().min(1).max(200),
    content: z.string().trim().min(1).max(10000),
    is_spoiler: z.boolean().optional(),
    sources: z.array(z.object({ name: z.string().min(1).max(200), url: z.string().url().refine(url => url.startsWith('https://')) })).max(10).optional(),
  })).max(30).optional(),
});
