import { EpisodeView, episodeMetadata, EpisodeRouteParams } from '@/components/episode/EpisodeView';

export async function generateMetadata({ params }: { params: EpisodeRouteParams }) {
  return episodeMetadata(params);
}

export default function EpisodePage({ params }: { params: EpisodeRouteParams }) {
  return <EpisodeView params={params} />;
}
