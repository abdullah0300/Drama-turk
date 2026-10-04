import React from 'react';
import { ComingSoon, getComingSoonDrama, comingSoonMetadata } from '@/components/dramas/ComingSoon';
import type { Metadata } from 'next';
import { notFound, permanentRedirect } from 'next/navigation';
import { WatchClient } from './WatchClient';
import { siteConfig } from '@/config/site';
import { findEdition, findSeason, loadDrama, loadEditionEpisodes, episodeHref } from '@/lib/catalog-nav';
import { isDefaultEdition, seasonPath } from '@/lib/routes';
import { canonicalGroupId, episodeLabel, episodeSeo, episodeNumbers, languageLabel, isEligibleEpisode, isPlayableVideo,
  pageMetadata, serializeJsonLd, selectVideoMetadata, videoSchema, breadcrumbSchema } from '@/lib/seo/catalog-seo';

export interface EpisodeRouteParams { dramaId: string; season: string; episode: string }
async function resolve(params: EpisodeRouteParams, segment?: string) {
  const loaded = await loadDrama(params.dramaId);
  if (!loaded) return null;
  const season = findSeason(loaded.seasons, params.season);
  const edition = season ? findEdition(season, segment) : undefined;
  if (!season || !edition) return null;
  const episodes = await loadEditionEpisodes(edition.id);
  const requestedId = Array.from(episodes.slugs).find(([, slug]) => slug === params.episode)?.[0];
  if (!requestedId) return null;
  const group = episodes.groups.find(g => g.id === canonicalGroupId(requestedId));
  if (!group) return null;
  const videos = (episodes.videosByGroup.get(group.id) || []).filter(isPlayableVideo);
  return { ...loaded, season, edition, episodes, group, requestedId, videos };
}
export async function episodeMetadata(params: EpisodeRouteParams, segment?: string): Promise<Metadata> {
  const r = await resolve(params, segment);
  if (!r) return await getComingSoonDrama(params.dramaId) ? comingSoonMetadata : { title: 'Episode Not Found', robots: { index: false, follow: false } };
  const seo = episodeSeo(r.drama, r.edition, r.group, r.videos);
  const path = episodeHref(r.drama.id, r.season, r.edition, r.episodes.slugs.get(r.group.id)!);
  return { ...pageMetadata(path, seo.title, seo.description,
    isEligibleEpisode(r.drama, r.edition, r.group, r.videos), r.videos[0]?.thumbnail_urls[0]), referrer: 'no-referrer' };
}
export async function EpisodeView({ params, segment }: { params: EpisodeRouteParams; segment?: string }) {
  const r = await resolve(params, segment);
  if (!r) {
    const name = await getComingSoonDrama(params.dramaId);
    if (name) return <ComingSoon name={name} />;
    notFound();
  }
  const { drama, season, edition, episodes, group, requestedId, videos } = r;
  const path = episodeHref(drama.id, season, edition, episodes.slugs.get(group.id)!);
  if (requestedId !== group.id || (segment && isDefaultEdition(season, edition))) permanentRedirect(path);
  const seasonUrl = seasonPath(drama.id, season, edition);
  if (!isEligibleEpisode(drama, edition, group, videos)) {
    return <section className="dw-sec"><h1>{drama.name} — {episodeLabel(edition, group)}</h1>
      <p>This episode is currently unavailable or its numbering is under review.</p>
      <a href={seasonUrl}>Browse available episodes</a></section>;
  }
  const initialVideo = videos[0];
  const eligible = episodes.groups.filter(g => isEligibleEpisode(drama, edition, g, episodes.videosByGroup.get(g.id) || []));
  const index = eligible.findIndex(g => g.id === group.id);
  const prevGroup = eligible[index - 1];
  const nextGroup = eligible[index + 1];
  const hrefOf = (id: string) => episodeHref(drama.id, season, edition, episodes.slugs.get(id)!);
  const sidebarEpisodes = eligible.map(g => ({ id: g.id, href: hrefOf(g.id), display_label: g.display_label,
    bolum: g.bolum, thumbnailUrl: episodes.videosByGroup.get(g.id)?.find(isPlayableVideo)?.thumbnail_urls[0] }));
  const seo = episodeSeo(drama, edition, group, videos);
  const matchingEditions = await Promise.all(season.editions.filter(e => drama.id === 'mehmed-fetihler-sultani' &&
    e.id !== edition.id).map(async e => {
    const data = await loadEditionEpisodes(e.id);
    const broadcast = episodeNumbers(edition, group).broadcast;
    if (broadcast == null) return undefined;
    const match = data.groups.find(g => episodeNumbers(e, g).broadcast === broadcast &&
      isEligibleEpisode(drama, e, g, data.videosByGroup.get(g.id) || []));
    if (!match) return undefined;
    return { href: episodeHref(drama.id, season, e, data.slugs.get(match.id)!),
      label: languageLabel(e, data.videosByGroup.get(match.id) || []) };
  }));
  // Any visible, selectable rendition can provide the verified video facts.
  // Keep the preferred playback rendition instead of switching its language.
  const metadataVideo = selectVideoMetadata(videos);
  const video = metadataVideo ? videoSchema(drama, edition, group, metadataVideo, path, seo.description) : undefined;
  const breadcrumbs = breadcrumbSchema([{ name: 'Home', path: '/' }, { name: drama.name, path: `/drama/${drama.id}` },
    { name: season.label, path: seasonUrl }, { name: group.display_label, path }]);
  const jsonLd = { '@context': 'https://schema.org', '@graph': [breadcrumbs, ...(video ? [video] : []), {
    '@type': 'TVEpisode', '@id': `${siteConfig.domain}${path}#episode`, name: seo.heading,
    episodeNumber: group.episode_number, url: `${siteConfig.domain}${path}`, description: seo.summary,
    ...(edition.version === 'subtitled' ? { subtitleLanguage: Array.from(new Set(videos.flatMap(v => v.languages)))
      .map(l => l === 'Urdu' ? 'ur' : l === 'English' ? 'en' : l) } : {}),
    partOfSeason: { '@type': 'TVSeason', '@id': `${siteConfig.domain}${seasonUrl}#season`, seasonNumber: season.number },
    partOfSeries: { '@type': 'TVSeries', '@id': `${siteConfig.domain}/drama/${drama.id}#series`, name: drama.name },
  }] };
  return <div className="min-h-screen">
    <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: serializeJsonLd(jsonLd) }} />
    <WatchClient drama={drama} collection={edition} episodeGroup={group} initialVideo={initialVideo}
      allRenditions={videos} sidebarEpisodes={sidebarEpisodes} seasonHref={seasonUrl} seasonName={season.label}
      prevHref={prevGroup ? hrefOf(prevGroup.id) : undefined} nextHref={nextGroup ? hrefOf(nextGroup.id) : undefined}
      prevGroup={prevGroup} nextGroup={nextGroup} pageSummary={seo.summary} />
    {matchingEditions.some(Boolean) && <section className="dw-sec"><h2>Other viewing editions of this broadcast</h2>
      <p>{matchingEditions.filter(Boolean).map(e => <a key={e!.href} href={e!.href} style={{ marginRight: 16 }}>{e!.label}</a>)}</p></section>}
  </div>;
}
