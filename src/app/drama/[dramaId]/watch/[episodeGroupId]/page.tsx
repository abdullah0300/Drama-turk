import React from 'react';
import type { Metadata } from 'next';
import { notFound, redirect } from 'next/navigation';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
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
  const drama = await supabaseCatalog.getDrama(params.dramaId);
  const group = await supabaseCatalog.getEpisodeGroup(params.episodeGroupId);

  if (!drama || !group) return { title: 'Episode Not Found' };

  const videos = await supabaseCatalog.getVideosForGroup(group.id);
  const firstVideo = videos[0];
  const title = `${group.display_label} - ${drama.name}`;
  const description = firstVideo?.title || `Watch ${group.display_label} of ${drama.name} ad-free on Great Nation.`;

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
  const drama = await supabaseCatalog.getDrama(params.dramaId);
  const episodeGroup = await supabaseCatalog.getEpisodeGroup(params.episodeGroupId);

  if (!drama || !episodeGroup) notFound();

  const collection = await supabaseCatalog.getCollection(episodeGroup.collection_id);
  if (!collection) notFound();

  // Publication and playability enforcement: Both collection and episode group must be published
  const isPlayable = (collection.status === 'published' || supabaseCatalog.isPilotCollection(collection.id)) &&
                     (episodeGroup.status === 'published' || episodeGroup.status === undefined);
  if (!isPlayable) {
    redirect(`/drama/${drama.id}/collection/${collection.id}`);
  }

  const allRenditions = await supabaseCatalog.getVideosForGroup(episodeGroup.id);
  // Quarantine records with missing or zero streams (e.g. video-1974)
  if (allRenditions.length === 0 || !allRenditions.some(v => v.stream_present)) {
    notFound();
  }

  const initialVideo = allRenditions[0];
  const allCollectionGroups = await supabaseCatalog.getCollectionEpisodeGroups(collection.id);
  const { prevGroup, nextGroup } = await supabaseCatalog.getAdjacentEpisodeGroups(collection.id, episodeGroup.id);

  const collectionVideos = await supabaseCatalog.getCollectionVideos(collection.id);
  const thumbByGroup = new Map<string, string>();
  collectionVideos.forEach(v => {
    if (v.episode_group_id && v.thumbnail_urls?.[0] && !thumbByGroup.has(v.episode_group_id)) {
      thumbByGroup.set(v.episode_group_id, v.thumbnail_urls[0]);
    }
  });

  const sidebarEpisodes = allCollectionGroups.map(g => ({
    id: g.id,
    display_label: g.display_label,
    bolum: g.bolum,
    thumbnailUrl: thumbByGroup.get(g.id),
  }));

  // Check if offline Gemma editorial draft exists - unapproved drafts remain private
  const rawDraft = catalogRepository.getEditorialDraft(`draft-${drama.id}-${episodeGroup.id}`) ||
    catalogRepository.getAllEditorialDrafts().find(d => d.episode_group_id === episodeGroup.id);
  const editorialDraft = rawDraft?.approval_status === 'approved' ? rawDraft : undefined;

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
    <div className="min-h-screen">
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
