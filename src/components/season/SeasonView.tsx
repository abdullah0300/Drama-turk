import React from 'react';
import type { Metadata } from 'next';
import { notFound, permanentRedirect } from 'next/navigation';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { DramaCard } from '@/components/dramas/DramaCard';
import { SeasonClient, SeasonEpisode, OtherSeason } from './SeasonClient';
import { siteConfig } from '@/config/site';
import { editionName, isReleasePublished, seasonPosterOf, seasonTitle } from '@/types/catalog';
import { findEdition, findSeason, loadDrama, loadEditionEpisodes, episodeHref } from '@/lib/catalog-nav';
import { isDefaultEdition, seasonPath } from '@/lib/routes';

export interface SeasonRouteParams {
  dramaId: string;
  season: string;
}

async function resolve(params: SeasonRouteParams, segment?: string) {
  const loaded = await loadDrama(params.dramaId);
  if (!loaded) return null;
  const season = findSeason(loaded.seasons, params.season);
  const edition = season ? findEdition(season, segment) : undefined;
  if (!season || !edition) return null;
  return { ...loaded, season, edition };
}

export async function seasonMetadata(params: SeasonRouteParams, segment?: string): Promise<Metadata> {
  const r = await resolve(params, segment);
  if (!r) return { title: 'Season Not Found' };
  const title = `${r.drama.name} ${seasonTitle(r.edition)}${r.edition.version === 'dubbed' ? ' (Urdu Dubbed)' : ''}`;
  return {
    title,
    description: `Watch every episode of ${title}, ad-free.`,
    alternates: { canonical: `${siteConfig.domain}${seasonPath(r.drama.id, r.season, r.edition)}` },
  };
}

/** Season page for one release (default or Urdu dubbed). */
export async function SeasonView({ params, segment }: { params: SeasonRouteParams; segment?: string }) {
  const r = await resolve(params, segment);
  if (!r) notFound();
  const { drama, seasons, season, edition } = r;
  // A dubbed-only season lives at the plain season URL
  if (segment && isDefaultEdition(season, edition)) permanentRedirect(seasonPath(drama.id, season, edition));

  const published = isReleasePublished(edition);
  const { groups, slugs, videosByGroup, extras } = await loadEditionEpisodes(edition.id);

  const episodes: SeasonEpisode[] = groups.map((group, i) => {
    const videos = videosByGroup.get(group.id) || [];
    const firstVideo = videos[0];
    return {
      id: group.id,
      href: episodeHref(drama.id, season, edition, slugs.get(group.id)!),
      label: group.display_label,
      title: firstVideo?.title || group.display_label,
      bolum: group.bolum,
      number: group.episode_number ?? i + 1,
      thumb: firstVideo?.thumbnail_urls?.[0],
      playable: videos.some((v) => v.stream_present),
      renditions: videos.length,
      languages: videos.map((v) => v.languages?.join(', ')).filter(Boolean).join(' / '),
    };
  });

  const editions = season.editions.map((e) => ({
    id: e.id,
    href: seasonPath(drama.id, season, e),
    name: editionName(e),
    episodes: e.episode_group_ids?.length ?? 0,
    active: e.id === edition.id,
  }));

  const others: OtherSeason[] = seasons
    .filter((s) => s.key !== season.key)
    .map((s) => ({
      id: s.editions[0].id,
      poster: seasonPosterOf(s, drama.poster_url),
      href: seasonPath(drama.id, s),
      heading: s.editions.map(editionName).join(' · '),
      seasonLabel: s.label,
      episodeCount: s.editions[0].episode_group_ids?.length ?? 0,
      playable: s.editions.some(isReleasePublished),
    }));

  const allDramas = await supabaseCatalog.getAllDramas();
  const moreDramas = allDramas.filter((d) => d.id !== drama.id).slice(0, 6);
  const heroImage = drama.backdrop_url || drama.poster_url || episodes.find((e) => e.thumb)?.thumb;
  const isCombined = (edition.reported_seasons?.length ?? 0) > 1;

  return (
    <SeasonClient
      dramaId={drama.id}
      dramaName={drama.name}
      dramaPoster={drama.poster_url}
      heroImage={heroImage}
      seasonPoster={seasonPosterOf(season, drama.poster_url)}
      collectionId={edition.id}
      collectionHeading={edition.source_heading}
      seasonNumber={edition.reported_seasons?.[0] ?? 1}
      seasonName={seasonTitle(edition)}
      editions={editions}
      seasonNote={
        isCombined
          ? `Seasons ${edition.reported_seasons.join(' & ')} were released together as one collection; episode numbering is kept as in the source.`
          : undefined
      }
      edition={editionName(edition)}
      videoCount={Array.from(videosByGroup.values()).reduce((n, v) => n + v.length, 0) || edition.video_records}
      published={published}
      isPilot={false}
      episodes={episodes}
      extras={extras.map((x) => ({ id: x.id, title: x.heading || x.title }))}
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
