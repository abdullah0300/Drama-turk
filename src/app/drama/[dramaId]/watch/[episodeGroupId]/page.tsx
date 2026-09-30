import React from 'react';
import type { Metadata } from 'next';
import { notFound, redirect } from 'next/navigation';
import { catalogRepository } from '@/lib/repository/catalog-repository';
import { WatchClient } from './WatchClient';
import { siteConfig } from '@/config/site';

interface WatchPageProps {
  params: {
    dramaId: string;
    episodeGroupId: string;
  };
}

export async function generateMetadata({ params }: WatchPageProps): Promise<Metadata> {
  catalogRepository.ensureLoaded();
  const drama = catalogRepository.getDrama(params.dramaId);
  const group = catalogRepository.getEpisodeGroup(params.episodeGroupId);

  if (!drama || !group) return { title: 'Episode Not Found' };

  const videos = catalogRepository.getVideosForGroup(group.id);
  const firstVideo = videos[0];
  const title = `${group.display_label} - ${drama.name}`;
  const description = firstVideo?.title || `Watch ${group.display_label} of ${drama.name} ad-free on Drama Platform.`;

  return {
    title,
    description,
    alternates: {
      canonical: `${siteConfig.domain}/drama/${drama.id}/watch/${group.id}`,
    },
    openGraph: {
      title,
      description,
      images: firstVideo?.thumbnail_urls?.[0] ? [{ url: firstVideo.thumbnail_urls[0] }] : [],
    },
  };
}

export default async function WatchPage({ params }: WatchPageProps) {
  catalogRepository.ensureLoaded();
  const drama = catalogRepository.getDrama(params.dramaId);
  const episodeGroup = catalogRepository.getEpisodeGroup(params.episodeGroupId);

  if (!drama || !episodeGroup) notFound();

  const collection = catalogRepository.getCollection(episodeGroup.collection_id);
  if (!collection) notFound();

  // Pilot enforcement: Only pilot collection episodes are playable in initial release
  const isPlayable = catalogRepository.isPilotCollection(collection.id);
  if (!isPlayable) {
    redirect(`/drama/${drama.id}/collection/${collection.id}`);
  }

  const allRenditions = catalogRepository.getVideosForGroup(episodeGroup.id);
  if (allRenditions.length === 0) notFound();

  const initialVideo = allRenditions[0];
  const allCollectionGroups = catalogRepository.getCollectionEpisodeGroups(collection.id);
  const { prevGroup, nextGroup } = catalogRepository.getAdjacentEpisodeGroups(collection.id, episodeGroup.id);

  const sidebarEpisodes = allCollectionGroups.map(g => {
    const vids = catalogRepository.getVideosForGroup(g.id);
    return {
      id: g.id,
      display_label: g.display_label,
      bolum: g.bolum,
      thumbnailUrl: vids[0]?.thumbnail_urls?.[0],
    };
  });

  // Check if offline Gemma editorial draft exists
  const editorialDraft = catalogRepository.getEditorialDraft(`draft-${drama.id}-${episodeGroup.id}`) ||
    catalogRepository.getAllEditorialDrafts().find(d => d.episode_group_id === episodeGroup.id);

  // Schema.org VideoObject Structured Data
  const jsonLd: Record<string, any> = {
    '@context': 'https://schema.org',
    '@type': 'VideoObject',
    name: `${drama.name} - ${episodeGroup.display_label}`,
    description: initialVideo.title || `${episodeGroup.display_label} of ${drama.name}`,
    thumbnailUrl: initialVideo.thumbnail_urls?.[0] ? [initialVideo.thumbnail_urls[0]] : undefined,
    uploadDate: initialVideo.upload_date && initialVideo.upload_date.length > 5 ? initialVideo.upload_date : undefined,
    contentUrl: initialVideo.stream_urls?.[0],
    embedUrl: `${siteConfig.domain}/drama/${drama.id}/watch/${episodeGroup.id}`,
    partOfSeries: {
      '@type': 'TVSeries',
      name: drama.name,
    },
  };

  // Clean undefined keys
  Object.keys(jsonLd).forEach(key => jsonLd[key] === undefined && delete jsonLd[key]);

  return (
    <div className="min-h-screen bg-canvas">
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
      />

      <WatchClient
        drama={drama}
        collection={collection}
        episodeGroup={episodeGroup}
        initialVideo={initialVideo}
        allRenditions={allRenditions}
        sidebarEpisodes={sidebarEpisodes}
        prevGroup={prevGroup}
        nextGroup={nextGroup}
        editorialDraft={editorialDraft}
      />
    </div>
  );
}
