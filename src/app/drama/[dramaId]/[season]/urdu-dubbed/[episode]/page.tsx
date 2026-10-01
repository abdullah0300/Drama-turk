import { EpisodeView, episodeMetadata, EpisodeRouteParams } from '@/components/episode/EpisodeView';
import { DUBBED_SEGMENT } from '@/lib/routes';

export async function generateMetadata({ params }: { params: EpisodeRouteParams }) {
  return episodeMetadata(params, DUBBED_SEGMENT);
}

export default function DubbedEpisodePage({ params }: { params: EpisodeRouteParams }) {
  return <EpisodeView params={params} segment={DUBBED_SEGMENT} />;
}
