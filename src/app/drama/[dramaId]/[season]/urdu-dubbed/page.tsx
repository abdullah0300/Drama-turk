import { SeasonView, seasonMetadata, SeasonRouteParams } from '@/components/season/SeasonView';
import { DUBBED_SEGMENT } from '@/lib/routes';

export const dynamic = 'force-dynamic';
export const revalidate = 0;

export async function generateMetadata({ params }: { params: SeasonRouteParams }) {
  return seasonMetadata(params, DUBBED_SEGMENT);
}

export default function DubbedSeasonPage({ params }: { params: SeasonRouteParams }) {
  return <SeasonView params={params} segment={DUBBED_SEGMENT} />;
}
