import { SeasonView, seasonMetadata, SeasonRouteParams } from '@/components/season/SeasonView';

export const dynamic = 'force-dynamic';
export const revalidate = 0;

export async function generateMetadata({ params }: { params: SeasonRouteParams }) {
  return seasonMetadata(params);
}

export default function SeasonPage({ params }: { params: SeasonRouteParams }) {
  return <SeasonView params={params} />;
}
