import React from 'react';
import Link from 'next/link';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { FeaturedHero, HeroItem } from '@/components/home/FeaturedHero';
import { Rail } from '@/components/sezon/Rail';
import { LatestSeasons, LatestSeasonItem } from '@/components/home/LatestSeasons';
import { MyListSection } from '@/components/home/MyListSection';
import { TopTenRow } from '@/components/home/TopTenRow';
import { ContinueWatchingRow } from '@/components/home/ContinueWatchingRow';
import { LatestEpisodesRow } from '@/components/home/LatestEpisodesRow';
import { DramaCard } from '@/components/dramas/DramaCard';
import { siteConfig } from '@/config/site';

export const revalidate = 3600; // 1 hour ISR

export default async function HomePage() {
  const pilotDrama = await supabaseCatalog.getPilotDrama();
  const pilotCollection = await supabaseCatalog.getPilotCollection();
  const pilotGroups = pilotCollection ? await supabaseCatalog.getCollectionEpisodeGroups(pilotCollection.id) : [];
  const firstGroup = pilotGroups.length > 0 ? pilotGroups[0] : undefined;

  const latestEpisodes = await supabaseCatalog.getLatestPlayableEpisodes(6);
  const allDramas = await supabaseCatalog.getAllDramas();

  const heroItems: HeroItem[] = [];
  if (pilotDrama) {
    heroItems.push({
      id: pilotDrama.id,
      title: pilotDrama.name,
      kicker: 'Pilot feature · Playable release',
      genres: pilotDrama.genres?.slice(0, 2) ?? [],
      meta: pilotCollection
        ? `Season ${pilotCollection.reported_seasons.join(', ')} · Urdu & English subtitles`
        : 'Urdu & English subtitles',
      line:
        pilotDrama.synopsis ||
        'An epic historical narrative chronicling the vision, statecraft, and tactical campaigns of Sultan Mehmed II.',
      image: pilotDrama.backdrop_url || pilotDrama.poster_url,
      thumb: pilotDrama.backdrop_url || pilotDrama.poster_url,
      thumbnailForList: pilotDrama.poster_url,
      episodeCount: pilotGroups.length,
      playHref: firstGroup ? `/drama/${pilotDrama.id}/watch/${firstGroup.id}` : `/drama/${pilotDrama.id}`,
      playLabel: 'Start watching',
      infoHref: `/drama/${pilotDrama.id}`,
    });
  }
  allDramas
    .filter((d) => d.id !== pilotDrama?.id && (d.backdrop_url || d.poster_url))
    .slice(0, 3)
    .forEach((d) =>
      heroItems.push({
        id: d.id,
        title: d.name,
        kicker: 'Preview catalog',
        genres: d.genres?.slice(0, 2) ?? [],
        meta: `${d.collection_ids.length} ${d.collection_ids.length === 1 ? 'season' : 'seasons'} · ${d.video_records} records`,
        line: d.synopsis || 'Browse authentic catalog metadata and source collection groupings.',
        image: d.backdrop_url || d.poster_url,
        thumb: d.backdrop_url || d.poster_url,
        thumbnailForList: d.poster_url,
        episodeCount: 0,
        playHref: `/drama/${d.id}`,
        playLabel: 'View catalog',
        infoHref: `/drama/${d.id}`,
      })
    );

  // Latest seasons stage: dramas with their season collections
  const seasonCandidates = [
    ...(pilotDrama ? [pilotDrama] : []),
    ...allDramas.filter((d) => d.id !== pilotDrama?.id && d.collection_ids.length > 0 && (d.poster_url || d.backdrop_url)),
  ].slice(0, 5);
  const seasonItems: LatestSeasonItem[] = [];
  for (const d of seasonCandidates) {
    const cols = (await supabaseCatalog.getDramaCollections(d.id)).slice(0, 5);
    if (cols.length === 0) continue;
    const seasons = cols
      .map((c, i) => ({
        id: c.id,
        n: c.reported_seasons?.[0] ?? i + 1,
        label: c.reported_seasons?.length ? `Season ${c.reported_seasons.join(' & ')}` : c.source_heading,
        edition: c.version || 'preserved',
        episodes: c.episode_group_ids?.length ?? 0,
        playable: c.status === 'published' || c.id === siteConfig.pilotCollectionId,
        watchHref: c.id === pilotCollection?.id && firstGroup ? `/drama/${d.id}/watch/${firstGroup.id}` : undefined,
      }))
      .sort((a, b) => b.n - a.n);
    seasonItems.push({
      id: d.id,
      title: d.name,
      genre: d.genres?.[0] || 'Drama',
      image: d.backdrop_url || d.poster_url,
      poster: d.poster_url,
      seasons,
    });
  }
  // Opening episodes of the pilot, shown in Continue Watching before anything has been watched
  const pilotVideos = pilotCollection ? await supabaseCatalog.getCollectionVideos(pilotCollection.id) : [];
  const thumbByGroup = new Map<string, string>();
  pilotVideos.forEach((v) => {
    if (v.episode_group_id && v.thumbnail_urls?.[0] && !thumbByGroup.has(v.episode_group_id)) {
      thumbByGroup.set(v.episode_group_id, v.thumbnail_urls[0]);
    }
  });
  const starters =
    pilotDrama && pilotCollection
      ? pilotGroups.slice(0, 5).map((g) => ({
          dramaId: pilotDrama.id,
          dramaTitle: pilotDrama.name,
          groupId: g.id,
          label: g.display_label,
          thumb: thumbByGroup.get(g.id) || pilotDrama.backdrop_url || pilotDrama.poster_url,
          seasonHref: `/drama/${pilotDrama.id}/collection/${pilotCollection.id}`,
        }))
      : [];

  const myListTotals: Record<string, number> = pilotDrama ? { [pilotDrama.id]: pilotGroups.length } : {};

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

        {/* Top 10 */}
        <TopTenRow dramas={allDramas} />

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
