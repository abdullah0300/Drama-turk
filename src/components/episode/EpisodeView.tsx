import React from 'react';
import type { Metadata } from 'next';
import { notFound, permanentRedirect, redirect } from 'next/navigation';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { catalogRepository } from '@/lib/repository/catalog-repository';
import { WatchClient } from './WatchClient';
import { siteConfig } from '@/config/site';
import { isReleasePublished, seasonLabel } from '@/types/catalog';
import { findEdition, findSeason, loadDrama, loadEditionEpisodes, episodeHref } from '@/lib/catalog-nav';
import { isDefaultEdition, seasonPath } from '@/lib/routes';

export interface EpisodeRouteParams {
  dramaId: string;
  season: string;
  episode: string;
}

async function resolve(params: EpisodeRouteParams, segment?: string) {
  const loaded = await loadDrama(params.dramaId);
  if (!loaded) return null;
  const season = findSeason(loaded.seasons, params.season);
  const edition = season ? findEdition(season, segment) : undefined;
  if (!season || !edition) return null;
  const episodes = await loadEditionEpisodes(edition.id);
  const index = episodes.groups.findIndex((g) => episodes.slugs.get(g.id) === params.episode);
  if (index === -1) return null;
  return { ...loaded, season, edition, episodes, index, group: episodes.groups[index] };
}

export async function episodeMetadata(params: EpisodeRouteParams, segment?: string): Promise<Metadata> {
  const r = await resolve(params, segment);
  if (!r) return { title: 'Episode Not Found' };
  const title = `${r.drama.name} ${seasonLabel(r.edition)} ${r.group.display_label}`;
  const video = r.episodes.videosByGroup.get(r.group.id)?.[0];
  const url = episodeHref(r.drama.id, r.season, r.edition, r.episodes.slugs.get(r.group.id)!);
  return {
    title,
    description: video?.title || `Watch ${title} ad-free.`,
    alternates: { canonical: `${siteConfig.domain}${url}` },
    // Native HLS (Safari) and the XHR fallback use the page policy; see CustomVideoPlayer.
    referrer: 'no-referrer',
    openGraph: {
      title,
      images: video?.thumbnail_urls?.[0] ? [{ url: video.thumbnail_urls[0] }] : [],
    },
  };
}

/** Episode (watch) page addressed by drama / season / [urdu-dubbed] / episode slug. */
export async function EpisodeView({ params, segment }: { params: EpisodeRouteParams; segment?: string }) {
  const r = await resolve(params, segment);
  if (!r) notFound();
  const { drama, season, edition, episodes, index, group } = r;
  const seasonUrl = seasonPath(drama.id, season, edition);
  // Episodes of a dubbed-only season live under the plain season URL
  if (segment && isDefaultEdition(season, edition)) {
    permanentRedirect(episodeHref(drama.id, season, edition, episodes.slugs.get(group.id)!));
  }

  // Publication and playability enforcement: both the release and the episode must be published
  const isPlayable =
    isReleasePublished(edition) &&
    (group.status === 'published' || group.status === undefined);
  if (!isPlayable) redirect(seasonUrl);

  const allRenditions = await supabaseCatalog.getVideosForGroup(group.id);
  // Quarantine records with missing or zero streams
  if (allRenditions.length === 0 || !allRenditions.some((v) => v.stream_present)) notFound();
  const initialVideo = allRenditions.find((v) => v.stream_present) ?? allRenditions[0];

  const hrefOf = (id: string) => episodeHref(drama.id, season, edition, episodes.slugs.get(id)!);
  const prevGroup = index > 0 ? episodes.groups[index - 1] : undefined;
  const nextGroup = index < episodes.groups.length - 1 ? episodes.groups[index + 1] : undefined;

  const sidebarEpisodes = episodes.groups.map((g) => ({
    id: g.id,
    href: hrefOf(g.id),
    display_label: g.display_label,
    bolum: g.bolum,
    thumbnailUrl: episodes.videosByGroup.get(g.id)?.find((v) => v.thumbnail_urls?.[0])?.thumbnail_urls[0],
  }));

  // Offline Gemma editorial drafts — unapproved drafts remain private
  const rawDraft =
    catalogRepository.getEditorialDraft(`draft-${drama.id}-${group.id}`) ||
    catalogRepository.getAllEditorialDrafts().find((d) => d.episode_group_id === group.id);
  const editorialDraft = rawDraft?.approval_status === 'approved' ? rawDraft : undefined;

  // Schema.org VideoObject structured data
  const jsonLd: Record<string, any> = {
    '@context': 'https://schema.org',
    '@type': 'VideoObject',
    name: `${drama.name} - ${seasonLabel(edition)} - ${group.display_label}`,
    description: initialVideo.title || `${group.display_label} of ${drama.name}`,
    thumbnailUrl: initialVideo.thumbnail_urls?.[0] ? [initialVideo.thumbnail_urls[0]] : undefined,
    uploadDate: initialVideo.upload_date && initialVideo.upload_date.length > 5 ? initialVideo.upload_date : undefined,
    contentUrl: initialVideo.stream_urls?.[0],
    embedUrl: `${siteConfig.domain}${hrefOf(group.id)}`,
    partOfSeries: { '@type': 'TVSeries', name: drama.name },
  };
  Object.keys(jsonLd).forEach((key) => jsonLd[key] === undefined && delete jsonLd[key]);

  return (
    <div className="min-h-screen">
      <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }} />
      <WatchClient
        drama={drama}
        collection={edition}
        episodeGroup={group}
        initialVideo={initialVideo}
        allRenditions={allRenditions}
        sidebarEpisodes={sidebarEpisodes}
        seasonHref={seasonUrl}
        seasonName={seasonLabel(edition)}
        prevHref={prevGroup ? hrefOf(prevGroup.id) : undefined}
        nextHref={nextGroup ? hrefOf(nextGroup.id) : undefined}
        prevGroup={prevGroup}
        nextGroup={nextGroup}
        editorialDraft={editorialDraft}
      />
    </div>
  );
}
