import { EditorialSections } from '@/components/seo/EditorialSections';
import { ViewingTable } from '@/components/seo/ViewingTable';
import { seasonSeo, episodeNumbers, isEligibleEpisode, isPlayableVideo, pageMetadata, serializeJsonLd, breadcrumbSchema } from '@/lib/seo/catalog-seo';
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
  if (!r) return { title: 'Season Not Found', robots: { index: false, follow: false } };
  const loaded = await loadEditionEpisodes(r.edition.id);
  const videos = Array.from(loaded.videosByGroup.values()).flat().filter(isPlayableVideo);
  const seo = seasonSeo(r.drama, r.edition, videos);
  const eligible = loaded.groups.some(g => isEligibleEpisode(r.drama, r.edition, g, loaded.videosByGroup.get(g.id) || []));
  return pageMetadata(seasonPath(r.drama.id, r.season, r.edition), seo.title, seo.description, eligible, r.edition.poster_url || r.drama.poster_url);
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

  const episodes: SeasonEpisode[] = groups.filter(g => isEligibleEpisode(drama, edition, g, videosByGroup.get(g.id) || [])).map((group, i) => {
    const videos = (videosByGroup.get(group.id) || []).filter(isPlayableVideo);
    const firstVideo = videos[0];
    return {
      id: group.id,
      href: episodeHref(drama.id, season, edition, slugs.get(group.id)!),
      label: `Episode ${group.episode_number ?? i + 1}`,
      title: firstVideo?.title || group.display_label,
      bolum: episodeNumbers(edition, group).broadcast,
      number: group.episode_number ?? i + 1,
      thumb: firstVideo?.thumbnail_urls?.[0],
      playable: videos.some((v) => v.stream_present),
      renditions: videos.length,
      languages: videos.map((v) => v.languages?.join(', ')).filter(Boolean).join(' / '),
    };
  });

  const editions = await Promise.all(season.editions.map(async (e) => { const data = await loadEditionEpisodes(e.id); return ({
    id: e.id,
    href: seasonPath(drama.id, season, e),
    name: editionName(e),
    episodes: data.groups.filter(g => isEligibleEpisode(drama, e, g, data.videosByGroup.get(g.id) || [])).length,
    active: e.id === edition.id,
  }); }));

  const others: OtherSeason[] = await Promise.all(seasons
    .filter((s) => s.key !== season.key)
    .map(async (s) => { const data = await loadEditionEpisodes(s.editions[0].id); return ({
      id: s.editions[0].id,
      poster: seasonPosterOf(s, drama.poster_url),
      href: seasonPath(drama.id, s),
      heading: s.editions.map(editionName).join(' · '),
      seasonLabel: s.label,
      episodeCount: data.groups.filter(g => isEligibleEpisode(drama, s.editions[0], g, data.videosByGroup.get(g.id) || [])).length,
      playable: s.editions.some(isReleasePublished),
    }); }));

  const allDramas = await supabaseCatalog.getAllDramas();
  const moreDramas = allDramas.filter((d) => d.id !== drama.id).slice(0, 6);
  const heroImage = drama.backdrop_url || drama.poster_url || episodes.find((e) => e.thumb)?.thumb;
  const isCombined = (edition.reported_seasons?.length ?? 0) > 1;

  const seasonUrl = seasonPath(drama.id, season, edition);
  const graph = { '@context': 'https://schema.org', '@graph': [breadcrumbSchema([
    { name: 'Home', path: '/' }, { name: drama.name, path: '/drama/' + drama.id },
    { name: season.label, path: seasonUrl },
  ]), { '@type': 'TVSeason', '@id': siteConfig.domain + seasonUrl + '#season', name: drama.name + ' ' + season.label,
    seasonNumber: season.number, partOfSeries: { '@type': 'TVSeries', '@id': siteConfig.domain + '/drama/' + drama.id + '#series' } }] };
  return (<>
    <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: serializeJsonLd(graph) }} />
    <SeasonClient
      dramaId={drama.id}
      dramaName={drama.name}
      dramaPoster={drama.poster_url}
      heroImage={heroImage}
      seasonPoster={seasonPosterOf(season, drama.poster_url)}
      collectionId={edition.id}
      collectionHeading={edition.editorial?.description || edition.source_heading}
      seasonNumber={edition.reported_seasons?.[0] ?? 1}
      seasonName={seasonTitle(edition)}
      editions={editions}
      seasonNote={
        drama.id === 'mehmed-fetihler-sultani' ? 'Subtitled Seasons 1–3 retain continuous broadcast episode labels. Season 4 pairs local episodes with broadcast numbers. Other dubbed broadcast mappings are shown only when supplied and verified.' : isCombined
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
    {drama.id === 'mehmed-fetihler-sultani' && <ViewingTable heading={`Season ${season.number} episode and Bolum guide`}
      rows={episodes.map(e => ({ label: e.label, href: e.href, detail: e.bolum == null ? 'Broadcast mapping unverified' : `Bolum ${e.bolum}`, availability: e.languages }))} />}
    <EditorialSections sections={edition.editorial?.sections || []} /></>
  );
}
