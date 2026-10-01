import React from 'react';
import type { Metadata } from 'next';
import { notFound } from 'next/navigation';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { catalogRepository } from '@/lib/repository/catalog-repository';
import { DramaCard } from '@/components/dramas/DramaCard';
import { SeasonClient, SeasonEpisode, OtherSeason } from './SeasonClient';
import { siteConfig } from '@/config/site';
import { seasonLabel } from '@/types/catalog';

interface CollectionPageProps {
  params: {
    dramaId: string;
    collectionId: string;
  };
}

export async function generateMetadata({ params }: CollectionPageProps): Promise<Metadata> {
  const drama = await supabaseCatalog.getDrama(params.dramaId);
  const collection = await supabaseCatalog.getCollection(params.collectionId);
  if (!drama || !collection) return { title: 'Collection Not Found' };

  return {
    title: `${collection.source_heading} | ${drama.name}`,
    description: `Browse episode listings and catalog details for ${collection.source_heading}.`,
    alternates: {
      canonical: `${siteConfig.domain}/drama/${drama.id}/collection/${collection.id}`,
    },
  };
}

export default async function CollectionPage({ params }: CollectionPageProps) {
  const drama = await supabaseCatalog.getDrama(params.dramaId);
  const collection = await supabaseCatalog.getCollection(params.collectionId);

  if (!drama || !collection) notFound();

  const isPilot = collection.id === siteConfig.pilotCollectionId;
  const isCollectionPublished = collection.status === 'published' || isPilot;
  const episodeGroups = await supabaseCatalog.getCollectionEpisodeGroups(collection.id);
  let collectionVideos = await supabaseCatalog.getCollectionVideos(collection.id);
  if (collectionVideos.length === 0 && episodeGroups.length > 0) {
    // Fall back to per-group lookups when the bulk collection query returns nothing
    collectionVideos = (await Promise.all(episodeGroups.map((g) => supabaseCatalog.getVideosForGroup(g.id)))).flat();
  }

  // Group videos by episode_group_id and isolate unassigned extras
  const videosByGroup = new Map<string, any[]>();
  const extras: any[] = [];

  collectionVideos.forEach(v => {
    if (v.episode_group_id) {
      if (!videosByGroup.has(v.episode_group_id)) {
        videosByGroup.set(v.episode_group_id, []);
      }
      videosByGroup.get(v.episode_group_id)!.push(v);
    } else {
      // Quarantine failed episode video-1974 (kept draft) from extras
      if (v.id !== 'video-1974') {
        extras.push(v);
      }
    }
  });

  // Fallback extras if needed
  if (extras.length === 0 && collection.extra_video_ids && collection.extra_video_ids.length > 0) {
    collection.extra_video_ids.forEach(vid => {
      const v = catalogRepository.getVideo(vid);
      if (v && v.id !== 'video-1974') extras.push(v);
    });
  }

  const firstPlayable = episodeGroups.find(g => {
    const vList = videosByGroup.get(g.id);
    return vList && vList.some((v: any) => v.stream_present);
  }) || (episodeGroups.length > 0 ? episodeGroups[0] : null);

  // Check for combined seasons label (e.g. Kosem Sultan Seasons 1 & 2)
  const isCombinedSeason = collection.reported_seasons && collection.reported_seasons.length > 1;

  const episodes: SeasonEpisode[] = episodeGroups.map((group, i) => {
    const videos = videosByGroup.get(group.id) || [];
    const firstVideo = videos[0];
    return {
      id: group.id,
      label: group.display_label,
      title: firstVideo?.title || group.display_label,
      bolum: group.bolum,
      number: group.episode_number ?? i + 1,
      thumb: firstVideo?.thumbnail_urls?.[0],
      playable: videos.some((v: any) => v.stream_present),
      renditions: videos.length,
      languages: videos.map((v: any) => v.languages?.join(', ')).filter(Boolean).join(' / '),
    };
  });

  const dramaCollections = await supabaseCatalog.getDramaCollections(drama.id);
  const others: OtherSeason[] = [];
  for (const c of dramaCollections.filter((c) => c.id !== collection.id)) {
    others.push({
      id: c.id,
      heading: c.source_heading,
      seasonLabel: seasonLabel(c),
      episodeCount: c.episode_group_ids?.length ?? 0,
      playable: c.status === 'published' || c.id === siteConfig.pilotCollectionId,
    });
  }

  const allDramas = await supabaseCatalog.getAllDramas();
  const moreDramas = allDramas.filter((d) => d.id !== drama.id).slice(0, 6);

  const heroImage = drama.backdrop_url || drama.poster_url || episodes.find((e) => e.thumb)?.thumb;
  const seasonNumber = collection.reported_seasons?.[0] ?? 1;

  return (
    <SeasonClient
      dramaId={drama.id}
      dramaName={drama.name}
      dramaPoster={drama.poster_url}
      heroImage={heroImage}
      collectionId={collection.id}
      collectionHeading={collection.source_heading}
      seasonNumber={seasonNumber}
      seasonNote={isCombinedSeason ? `Seasons ${collection.reported_seasons.join(' & ')} — combined collection. Boundaries preserved as provided in source records.` : undefined}
      edition={collection.version || 'preserved'}
      videoCount={collectionVideos.length || collection.video_records}
      published={isCollectionPublished}
      isPilot={isPilot}
      episodes={episodes}
      extras={extras.map((x: any) => ({ id: x.id, title: x.heading || x.title }))}
      others={others}
      more={
        moreDramas.length > 0 ? (
          <section className="sv-sec">
            <div className="sv-sec-h"><h2>More like this</h2></div>
            <div className="sv-more">
              {moreDramas.map((d) => <DramaCard key={d.id} drama={d} />)}
            </div>
          </section>
        ) : null
      }
    />
  );
}
