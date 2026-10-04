import { notFound, permanentRedirect } from 'next/navigation';
import { ComingSoon, getComingSoonDrama, comingSoonMetadata } from '@/components/dramas/ComingSoon';
export const metadata = comingSoonMetadata;
import { seasonHrefForCollection } from '@/lib/catalog-nav';

/** Old season URL (by collection id) — forwards to the clean season URL. */
export default async function LegacyCollectionPage({ params }: { params: { dramaId: string; collectionId: string } }) {
  const name = await getComingSoonDrama(params.dramaId);
  if (name) return <ComingSoon name={name} />;
  const href = await seasonHrefForCollection(params.dramaId, params.collectionId);
  if (!href) notFound();
  permanentRedirect(href);
}
