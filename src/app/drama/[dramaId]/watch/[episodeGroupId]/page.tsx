import { notFound, permanentRedirect } from 'next/navigation';
import { episodeHrefForGroup } from '@/lib/catalog-nav';

/** Old episode URL (by episode group id, still used by older watch history) — forwards to the clean URL. */
export default async function LegacyWatchPage({ params }: { params: { dramaId: string; episodeGroupId: string } }) {
  const href = await episodeHrefForGroup(params.dramaId, params.episodeGroupId);
  if (!href) notFound();
  permanentRedirect(href);
}
