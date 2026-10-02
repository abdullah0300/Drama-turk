import React from 'react';
import Link from 'next/link';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { FeaturedHero, HeroItem } from '@/components/home/FeaturedHero';
import { Rail } from '@/components/sezon/Rail';
import { LatestSeasons, LatestSeasonItem } from '@/components/home/LatestSeasons';
import { MyListSection } from '@/components/home/MyListSection';
import { ContinueWatchingRow } from '@/components/home/ContinueWatchingRow';
import { LatestEpisodesRow } from '@/components/home/LatestEpisodesRow';
import { DramaCard } from '@/components/dramas/DramaCard';
import { siteConfig } from '@/config/site';
import { isDramaPlayable, isReleasePublished, seasonPosterOf, groupSeasons, editionName, pluralSeasons, dramaSeasonCount } from '@/types/catalog';
import { episodePath, episodeSlugs, seasonPath } from '@/lib/routes';

export const dynamic = 'force-dynamic';
export const revalidate = 0;

export default async function HomePage() {
  const [latestEpisodes, allDramas, siteSettings] = await Promise.all([
    supabaseCatalog.getLatestEpisodePerDrama(),
    supabaseCatalog.getAllDramas(),
    supabaseCatalog.getSiteSettings(),
  ]);

  const configuredHeroIds: string[] = (siteSettings?.feature_flags as any)?.hero_drama_ids || [];
  const slot1Id = configuredHeroIds[0] || siteSettings?.pilot_drama_source_id || 'mehmed-fetihler-sultani';
  const featured = allDramas.find((d) => d.id === slot1Id) || (await supabaseCatalog.getPilotDrama());

  // The featured drama starts from its first season (subtitled edition preferred)
  const featuredSeasons = featured ? groupSeasons(await supabaseCatalog.getDramaCollections(featured.id)) : [];
  const firstSeason = featuredSeasons[0];
  const firstEdition = firstSeason?.editions[0];
  const [firstGroups, firstVideos] = firstEdition
    ? await Promise.all([
        supabaseCatalog.getCollectionEpisodeGroups(firstEdition.id),
        supabaseCatalog.getCollectionVideos(firstEdition.id),
      ])
    : [[], []];
  const thumbByGroup = new Map<string, string>();
  firstVideos.forEach((v) => {
    if (v.episode_group_id && v.thumbnail_urls?.[0] && !thumbByGroup.has(v.episode_group_id)) {
      thumbByGroup.set(v.episode_group_id, v.thumbnail_urls[0]);
    }
  });
  const firstGroup = firstGroups[0];
  const firstSlugs = episodeSlugs(firstGroups);
  const firstSeasonUrl = featured && firstSeason && firstEdition ? seasonPath(featured.id, firstSeason, firstEdition) : '';
  const firstEpisodeUrl = (groupId: string) => episodePath(firstSeasonUrl, firstSlugs.get(groupId)!);

  const heroItems: HeroItem[] = [];
  if (featured) {
    const editions = Array.from(new Set(featuredSeasons.flatMap((s) => s.editions.map(editionName))));
    heroItems.push({
      id: featured.id,
      title: featured.name,
      kicker: `Featured · ${pluralSeasons(featuredSeasons.length)} streaming`,
      genres: featured.genres?.slice(0, 2) ?? [],
      meta: editions.join(' & ') || 'Ad-free',
      line: featured.synopsis || '',
      image: featured.backdrop_url || featured.poster_url,
      thumb: featured.backdrop_url || featured.poster_url,
      thumbnailForList: featured.poster_url,
      episodeCount: firstGroups.length,
      segLabel: firstSeason ? `episodes in ${firstSeason.label}` : 'episodes',
      playHref: firstGroup ? firstEpisodeUrl(firstGroup.id) : `/drama/${featured.id}`,
      playLabel: firstSeason ? `Play ${firstSeason.label}` : 'Start watching',
      infoHref: `/drama/${featured.id}`,
    });
  }
  const otherHeroDramas: typeof allDramas = [];
  if (configuredHeroIds.length > 1) {
    for (let i = 1; i < configuredHeroIds.length && otherHeroDramas.length < 3; i++) {
      const match = allDramas.find((d) => d.id === configuredHeroIds[i]);
      if (match && match.id !== featured?.id && !otherHeroDramas.some((x) => x.id === match.id)) {
        otherHeroDramas.push(match);
      }
    }
  }

  if (otherHeroDramas.length < 3) {
    const existingIds = new Set([featured?.id, ...otherHeroDramas.map((d) => d.id)]);
    const fallbackDramas = allDramas.filter(
      (d) => !existingIds.has(d.id) && (d.backdrop_url || d.poster_url)
    );
    for (const d of fallbackDramas) {
      if (otherHeroDramas.length >= 3) break;
      otherHeroDramas.push(d);
    }
  }

  otherHeroDramas.forEach((d) =>
    heroItems.push({
      id: d.id,
      title: d.name,
      kicker: isDramaPlayable(d) ? 'Now streaming · ad-free' : 'Preview catalog',
      genres: d.genres?.slice(0, 2) ?? [],
      meta: pluralSeasons(dramaSeasonCount(d)),
      line: d.synopsis || '',
      image: d.backdrop_url || d.poster_url,
      thumb: d.backdrop_url || d.poster_url,
      thumbnailForList: d.poster_url,
      episodeCount: 0,
      playHref: `/drama/${d.id}`,
      playLabel: isDramaPlayable(d) ? 'Watch now' : 'View catalog',
      infoHref: `/drama/${d.id}`,
    })
  );

  // Latest seasons stage: one card per season (editions merged), newest first
  const seasonCandidates = [
    ...(featured ? [featured] : []),
    ...allDramas
      .filter((d) => d.id !== featured?.id && dramaSeasonCount(d) > 0 && (d.poster_url || d.backdrop_url))
      .sort((a, b) => dramaSeasonCount(b) - dramaSeasonCount(a)),
  ].slice(0, 5);
  const seasonItems: LatestSeasonItem[] = (
    await Promise.all(
      seasonCandidates.map(async (d) => {
        const seasons = groupSeasons(await supabaseCatalog.getDramaCollections(d.id));
        if (seasons.length === 0) return null;
        const item: LatestSeasonItem = {
          id: d.id,
          title: d.name,
          genre: d.genres?.[0] || 'Drama',
          totalSeasons: seasons.length,
          image: d.backdrop_url || d.poster_url,
          poster: d.poster_url,
          seasons: seasons
            .slice(-5)
            .reverse()
            .map((s) => ({
              id: s.editions[0].id,
              poster: seasonPosterOf(s, d.poster_url),
              href: seasonPath(d.id, s),
              n: s.number,
              label: s.label,
              edition: s.editions.map(editionName).join(' · '),
              episodes: s.editions[0].episode_group_ids?.length ?? 0,
              playable: s.editions.some(isReleasePublished),
            })),
        };
        return item;
      })
    )
  ).filter((x): x is LatestSeasonItem => x !== null);

  // Opening episodes of the featured drama, shown in Continue Watching before anything has been watched
  const starters =
    featured && firstEdition
      ? firstGroups.slice(0, 5).map((g) => ({
          dramaId: featured.id,
          dramaTitle: featured.name,
          groupId: g.id,
          href: firstEpisodeUrl(g.id),
          label: g.display_label,
          thumb: thumbByGroup.get(g.id) || featured.backdrop_url || featured.poster_url,
          seasonHref: firstSeasonUrl,
        }))
      : [];

  const myListTotals: Record<string, number> = featured
    ? { [featured.id]: featuredSeasons.reduce((n, s) => n + (s.editions[0].episode_group_ids?.length ?? 0), 0) }
    : {};

  // Structured data JSON-LD
  const jsonLd = {
    '@context': 'https://schema.org',
    '@type': 'WebSite',
    name: siteConfig.name,
    url: siteConfig.domain,
    description: 'An ad-free, uninterrupted streaming platform for historical and cultural drama series.',
    potentialAction: {
      '@type': 'SearchAction',
      target: `${siteConfig.domain}/search?q={search_term_string}`,
      'query-input': 'required name=search_term_string',
    },
  };

  return (
    <div className="flex flex-col min-h-screen">
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
      />

      {/* Featured Hero */}
      {heroItems.length > 0 && <FeaturedHero items={heroItems} />}

      <div className="rows">
        {/* Continue Watching Section (Private local storage) */}
        <ContinueWatchingRow starters={starters} />

        {/* Latest Playable Episodes in Pilot Release */}
        <LatestEpisodesRow episodes={latestEpisodes} />

        {/* Latest Seasons */}
        {seasonItems.length > 0 && <LatestSeasons items={seasonItems} />}

        {/* My List */}
        <MyListSection totals={myListTotals} />

        {/* Browse Dramas Section */}
        <Rail
          id="browse"
          title="Browse Dramas"
          sub={`${allDramas.length} series · 63 collections · 2,900+ preserved episodes`}
          aside={
            <Link href="/browse" className="cw-head-r" style={{ color: 'var(--gold)' }}>
              Filter by language &amp; genre &rarr;
            </Link>
          }
        >
          {allDramas.map((drama, idx) => (
            <DramaCard key={drama.id} drama={drama} priority={idx < 6} fluid={false} />
          ))}
        </Rail>
      </div>

      {/* Transparent brand reassurance (appears once, subtle, honest) */}
      <section className="assure" aria-label="Our promise">
        <h3>{siteConfig.brandPromise}</h3>
        <p>
          Zero pre-roll ads, zero mid-roll interruptions, and zero pop-ups. We prioritize direct, distraction-free
          playback with authentic audio and subtitle renditions.
        </p>
      </section>
    </div>
  );
}
