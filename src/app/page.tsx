import React from 'react';
import type { Metadata } from 'next';
import Link from 'next/link';
import { getPublicDramas, getPublicHomeEpisodes, getPublicHomeSettings, getPublicViewingChoices } from '@/lib/public-catalog-cache';
import { loadDrama, loadEditionEpisodes } from '@/lib/catalog-nav';
import { isEligibleEpisode, serializeJsonLd } from '@/lib/seo/catalog-seo';
import { FeaturedHero, HeroItem } from '@/components/home/FeaturedHero';
import { Rail } from '@/components/sezon/Rail';
import { LatestSeasons, LatestSeasonItem } from '@/components/home/LatestSeasons';
import { MyListSection } from '@/components/home/MyListSection';
import { ContinueWatchingRow } from '@/components/home/ContinueWatchingRow';
import { LatestEpisodesRow } from '@/components/home/LatestEpisodesRow';
import { DramaCard } from '@/components/dramas/DramaCard';
import { siteConfig, publicIndexingEnabled } from '@/config/site';
import { isDramaPlayable, isReleasePublished, seasonPosterOf, editionName, pluralSeasons, dramaSeasonCount, CatalogCollection } from '@/types/catalog';
import { episodePath, seasonPath } from '@/lib/routes';

const homeTitle = 'Turkish & Historical Dramas | Urdu & English Subtitles';
const homeDescription = 'Browse Turkish and historical dramas with Urdu and English subtitles, plus available Urdu dubbed editions. Explore seasons and episodes on Great Nation.';
export const metadata: Metadata = {
  title: { absolute: homeTitle }, description: homeDescription,
  alternates: { canonical: siteConfig.domain + '/' },
  robots: { index: publicIndexingEnabled, follow: publicIndexingEnabled },
  openGraph: { type: 'website', url: siteConfig.domain + '/', siteName: siteConfig.name, title: homeTitle, description: homeDescription, images: [{ url: '/social/home.png', width: 1200, height: 630, alt: 'Great Nation · Turkish and historical dramas' }] },
  twitter: { card: 'summary_large_image', title: homeTitle, description: homeDescription, images: ['/social/home.png'] },
};

export const dynamic = 'force-dynamic';
export const revalidate = 0;

export default async function HomePage() {
  const [latestEpisodes, directory, siteSettings, viewingChoices] = await Promise.all([
    getPublicHomeEpisodes(),
    getPublicDramas(),
    getPublicHomeSettings(),
    getPublicViewingChoices(),
  ]);

  const allDramas = directory.filter(d => d.status === undefined || d.status === 'published');
  const historical = allDramas.filter(d => d.genres?.some(g => g.toLowerCase() === 'historical'));
  const otherDramas = allDramas.filter(d => !historical.some(h => h.id === d.id));
  const choices = [
    { id: 'urdu-subtitles', title: 'Urdu Subtitles', text: 'Turkish dramas and other series with available Urdu subtitle renditions.', matches: (v: typeof viewingChoices[number]) => v.version === 'subtitled' && v.languages.includes('Urdu') },
    { id: 'english-subtitles', title: 'English Subtitles', text: 'Explore series with available English subtitle renditions.', matches: (v: typeof viewingChoices[number]) => v.version === 'subtitled' && v.languages.includes('English') },
    { id: 'urdu-dubbed', title: 'Urdu Dubbed Dramas', text: 'Choose available Urdu dubbed editions for Urdu audio rather than subtitles.', matches: (v: typeof viewingChoices[number]) => v.version === 'dubbed' && v.languages.includes('Urdu') },
  ];
  const editionCount = new Set(allDramas.flatMap(d => d.collection_ids)).size;
  // Reuse the slim playable inventory instead of loading every season's full videos.
  const countEpisodes = (edition: CatalogCollection) => new Set(viewingChoices
    .filter(v => v.collectionId === edition.id).map(v => v.groupId)).size;

  const configuredHeroIds: string[] = (siteSettings?.feature_flags as any)?.hero_drama_ids || [];
  const slot1Id = configuredHeroIds[0] || siteSettings?.pilot_drama_source_id || 'mehmed-fetihler-sultani';
  const featured = allDramas.find((d) => d.id === slot1Id) || allDramas.find(d => d.id === siteConfig.pilotDramaId) || allDramas[0];

  // The featured drama starts from its first season (subtitled edition preferred)
  const featuredSeasons = featured ? (await loadDrama(featured.id))?.seasons || [] : [];
  const firstSeason = featuredSeasons[0];
  const firstEdition = firstSeason?.editions[0];
  const firstData = firstEdition ? await loadEditionEpisodes(firstEdition.id) : undefined;
  const firstGroups = featured && firstEdition && firstData
    ? firstData.groups.filter(g => isEligibleEpisode(featured, firstEdition, g, firstData.videosByGroup.get(g.id) || [])) : [];
  const thumbByGroup = new Map(firstGroups.map(g => [g.id, g.still_url || firstData?.videosByGroup.get(g.id)?.[0]?.thumbnail_urls?.[0]]));
  const firstGroup = firstGroups[0];
  const firstSlugs = firstData?.slugs || new Map<string, string>();
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
        const seasons = (await loadDrama(d.id))?.seasons || [];
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
              episodes: countEpisodes(s.editions[0]),
              playable: s.editions.some(isReleasePublished),
            })),
        };
        return item;
      })
    )
  ).filter((x): x is LatestSeasonItem => x !== null);


  const myListTotals: Record<string, number> = featured
    ? { [featured.id]: featuredSeasons.reduce((total, s) => total + countEpisodes(s.editions[0]), 0) }
    : {};

  const jsonLd = {
    '@context': 'https://schema.org', '@graph': [
      { '@type': 'WebSite', '@id': siteConfig.domain + '/#website', name: siteConfig.name, url: siteConfig.domain + '/', description: homeDescription, inLanguage: 'en' },
      { '@type': 'CollectionPage', '@id': siteConfig.domain + '/#homepage', url: siteConfig.domain + '/', name: homeTitle, description: homeDescription, isPartOf: { '@id': siteConfig.domain + '/#website' }, mainEntity: { '@id': siteConfig.domain + '/#dramas' } },
      { '@type': 'ItemList', '@id': siteConfig.domain + '/#dramas', name: 'Browse Dramas', numberOfItems: allDramas.length, itemListElement: allDramas.map((d, i) => ({ '@type': 'ListItem', position: i + 1, name: d.name, url: siteConfig.domain + '/drama/' + d.id })) },
    ],
  };

  return (
    <div className="flex flex-col min-h-screen">
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: serializeJsonLd(jsonLd) }}
      />

      {/* Featured Hero */}
      {heroItems.length > 0 && <FeaturedHero items={heroItems} />}

      <section className={`home-intro${heroItems.length === 0 ? ' home-intro--first' : ''}`} aria-labelledby="home-heading">
        <span className="home-eyebrow">Great Nation · Find your next series</span>
        <h1 id="home-heading">Explore Turkish and Historical Dramas</h1>
        <p>Discover Turkish historical dramas and other series with Urdu or English subtitles, plus available Urdu dubbed editions. Browse a drama, choose a season and check the viewing choices on each episode.</p>
        <nav className="home-choices" aria-label="Browse viewing choices">
          {choices.map(c => <a key={c.id} href={'#' + c.id}>{c.title}</a>)}
          <Link href="/browse">Browse all dramas</Link>
        </nav>
      </section>

      <div className="rows">
        {/* Continue Watching Section (Private local storage) */}
        <ContinueWatchingRow />

        {/* Latest Playable Episodes in Pilot Release */}
        <LatestEpisodesRow episodes={latestEpisodes} />

        {/* Latest Seasons */}
        {seasonItems.length > 0 && <LatestSeasons items={seasonItems} />}

        {/* My List */}
        <MyListSection totals={myListTotals} />

        {historical.length > 0 && <Rail id="historical" title="Historical Dramas" sub="Explore series currently tagged Historical in our catalog">
          {historical.map(d => <DramaCard key={d.id} drama={d} fluid={false} />)}
        </Rail>}
        {otherDramas.length > 0 && <Rail id="more-dramas" title="More Dramas to Explore" sub="Discover the rest of our catalog, including contemporary series">
          {otherDramas.map(d => <DramaCard key={d.id} drama={d} fluid={false} />)}
        </Rail>}
        {choices.map(c => {
          const matches = new Set(viewingChoices.filter(c.matches).map(v => v.dramaId));
          const dramas = allDramas.filter(d => matches.has(d.id));
          return <section key={c.id} id={c.id} className="home-guide home-language" aria-labelledby={c.id + '-heading'}>
            <h2 id={c.id + '-heading'}>{c.title}</h2><p>{c.text} Languages can differ between episodes.</p>
            {dramas.length ? <ul className="home-series-links">{dramas.map(d => <li key={d.id}><Link href={'/drama/' + d.id}>{d.name}</Link></li>)}</ul> : <p>No playable editions currently listed for this choice.</p>}
          </section>;
        })}
        {/* Browse Dramas Section */}
        <Rail
          id="browse"
          title="Browse Dramas"
          sub={`${allDramas.length} series · ${editionCount} published viewing editions · availability varies by episode`}
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

      <section className="home-guide" aria-labelledby="viewing-guide">
        <h2 id="viewing-guide">How to Watch on Great Nation</h2>
        <p>Open a drama page, select an available season and choose an episode. Subtitled editions retain the original audio; Urdu dubbed editions use Urdu audio. Select the rendition listed beside the player.</p>
        <p>Start with <Link href="/drama/mehmed-fetihler-sultani">Mehmed: Fetihler Sultani (Sultan Muhammad Fatih)</Link>, or <Link href="/browse">explore the full drama catalog</Link>.</p>
        <h3>Does every episode have Urdu and English subtitles?</h3>
        <p>No. Language availability varies by episode and edition. Check the listed viewing choices before starting playback.</p>
        <h3>Why are episode and Bolum numbers sometimes different?</h3>
        <p>A viewing release may restart its episode count each season, while the original broadcast uses continuous numbering. Where verified, episode pages show both numbers.</p>
        <h3>Are these documentaries or historical fiction?</h3>
        <p>Historical drama series dramatize people and events. They should not be treated as documentary evidence or a substitute for historical sources.</p>
        <p>Read <Link href="/about">about Great Nation</Link> or <Link href="/contact">contact us</Link> about a viewing issue.</p>
      </section>
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
