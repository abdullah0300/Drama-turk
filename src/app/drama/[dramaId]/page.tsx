import { EditorialSections } from '@/components/seo/EditorialSections';
import { ComingSoon, getComingSoonDrama, comingSoonMetadata } from '@/components/dramas/ComingSoon';
import { ViewingTable } from '@/components/seo/ViewingTable';
import { dramaSeo, isEligibleEpisode, pageMetadata, serializeJsonLd, breadcrumbSchema } from '@/lib/seo/catalog-seo';
import React from 'react';
import type { Metadata } from 'next';
import Link from 'next/link';
import { notFound } from 'next/navigation';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { DramaActions } from './DramaActions';
import { DramaCard } from '@/components/dramas/DramaCard';
import { siteConfig } from '@/config/site';
import { isDramaPlayable, isReleasePublished, editionName, pluralSeasons, seasonPosterOf } from '@/types/catalog';
import { loadDrama, loadEditionEpisodes, episodeHref } from '@/lib/catalog-nav';
import { seasonPath } from '@/lib/routes';

interface DramaPageProps {
  params: {
    dramaId: string;
  };
}

export async function generateMetadata({ params }: DramaPageProps): Promise<Metadata> {
  const drama = await supabaseCatalog.getDrama(params.dramaId);
  if (!drama) return await getComingSoonDrama(params.dramaId) ? comingSoonMetadata : { title: 'Drama Not Found', robots: { index: false, follow: true } };

  const seo = dramaSeo(drama);
  return pageMetadata('/drama/' + drama.id, seo.title, seo.description, drama.status === 'published', drama.poster_url);
}

export const dynamic = 'force-dynamic';
export const revalidate = 0;

export default async function DramaPage({ params }: DramaPageProps) {
  const loaded = await loadDrama(params.dramaId);
  if (!loaded) {
    const name = await getComingSoonDrama(params.dramaId);
    if (name) return <ComingSoon name={name} />;
    notFound();
  }
  const { drama, seasons } = loaded;
  const collections = seasons.flatMap((s) => s.editions);
  const eligibleCounts = new Map<string, number>();
  await Promise.all(collections.map(async c => {
    const data = await loadEditionEpisodes(c.id);
    eligibleCounts.set(c.id, data.groups.filter(g => isEligibleEpisode(drama, c, g, data.videosByGroup.get(g.id) || [])).length);
  }));
  const playable = isDramaPlayable(drama) || collections.some(isReleasePublished);

  // "Start watching" opens the first episode of the first season
  const firstSeason = seasons[0];
  const firstEdition = firstSeason?.editions[0];
  let startHref: string | undefined;
  if (playable && firstSeason && firstEdition) {
    const data = await loadEditionEpisodes(firstEdition.id);
    const first = data.groups.find(g => isEligibleEpisode(drama, firstEdition, g, data.videosByGroup.get(g.id) || []));
    if (first) startHref = episodeHref(drama.id, firstSeason, firstEdition, data.slugs.get(first.id)!);
  }

  // Episode totals per version (subtitled and dubbed releases are numbered differently)
  const totalsByEdition = new Map<string, number>();
  collections.forEach((c) => {
    const name = editionName(c);
    totalsByEdition.set(name, (totalsByEdition.get(name) ?? 0) + (eligibleCounts.get(c.id) ?? 0));
  });
  const editionNames = Array.from(totalsByEdition.keys());

  // Related dramas
  const allDramas = await supabaseCatalog.getAllDramas();
  const relatedDramas = allDramas
    .filter((d) => d.id !== drama.id && d.genres?.some((g) => drama.genres?.includes(g)))
    .slice(0, 6);

  const jsonLd = {
    '@context': 'https://schema.org',
    '@type': 'TVSeries',
    '@id': `${siteConfig.domain}/drama/${drama.id}#series`,
    url: `${siteConfig.domain}/drama/${drama.id}`,
    name: drama.name,
    description: drama.synopsis,
    numberOfSeasons: seasons.length,
    ...(drama.id === 'alparslan-buyuk-selcuklu' ? {
      alternateName: 'Alparslan: The Great Seljuks',
      numberOfEpisodes: seasons.reduce((total, season) => total + (eligibleCounts.get(season.editions[0]?.id) ?? 0), 0),
    } : {}),
    ...(drama.id === 'ask-ve-taht' ? { alternateName: 'Ishq Aur Takht' } : {}),
    genre: drama.genres,
    image: drama.poster_url,
  };

  const heroImage = drama.backdrop_url || drama.poster_url;

  return (
    <div className="series">
      <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: serializeJsonLd({ '@context': 'https://schema.org', '@graph': [jsonLd, breadcrumbSchema([{ name: 'Home', path: '/' }, { name: drama.name, path: '/drama/' + drama.id }])] }) }} />

      {/* Hero: series identity */}
      <header className="dw-hero">
        {heroImage ? <img src={heroImage} alt="" /> : <div className="art-fallback" />}
        <span className="shade" />
        {drama.poster_url && (
          <div className="series-poster" aria-hidden="true">
            <img src={drama.poster_url} alt="" />
          </div>
        )}
        <div className="dw-top">
          <nav className="sv-crumb" aria-label="Breadcrumb">
            <Link href="/">Home</Link><i>/</i>
            <Link href="/browse">Dramas</Link><i>/</i>
            <span style={{ color: 'var(--text)' }}>{drama.name}</span>
          </nav>
          <div className="dw-kick">
            <span className={`badge${playable ? ' live' : ' dark'}`}>{drama.isPilot ? 'Featured' : playable ? 'Now streaming' : 'Preview'}</span>
            <span>Series · {drama.genres?.slice(0, 2).join(' · ') || 'Drama'}</span>
          </div>
          <h1 className="dw-title">{drama.name}</h1>
          <div className="meta">
            <span className="gold">{pluralSeasons(seasons.length)}</span>
            <span className="sep" />
            <span>{editionNames.join(' & ')}</span>
          </div>
          {drama.synopsis && <p className="dw-line">{drama.synopsis}</p>}
          <DramaActions drama={drama} startHref={startHref} isPlayable={playable} seasonName={firstSeason?.label} />
        </div>
      </header>

      {/* Section navigation */}
      <nav className="dw-nav" aria-label="Series sections">
        <a href="#seasons">Seasons</a>
        <a href="#details">Details</a>
        {relatedDramas.length > 0 && <a href="#more">More like this</a>}
      </nav>

      {/* All seasons — each opens its season page */}
      <section className="dw-sec" id="seasons">
        <h3>Seasons <small>{pluralSeasons(seasons.length)} · {editionNames.join(' & ')}</small></h3>
        {seasons.length === 0 && <div className="dw-empty">No seasons published yet.</div>}
        <div className="dw-seasons">
          {seasons.map((s, i) => {
            const pref = s.editions[0];
            const poster = seasonPosterOf(s, drama.poster_url);
            return (
              <Link key={s.key} href={seasonPath(drama.id, s)} className="sn">
                {poster ? <img src={poster} alt={`${drama.name} ${s.label}`} loading="lazy" /> : <span className="thumb-fallback" style={{ position: 'absolute', inset: 0 }} />}
                <span className="shade" />
                <span className={`badge${i === seasons.length - 1 ? '' : ' dark'}`}>{i === seasons.length - 1 ? 'Latest' : 'Available'}</span>
                <span className="sn-n"><small>S</small>{s.key.includes('-') ? s.key.replace('-', '–') : s.number}</span>
                <span className="sn-i">
                  {eligibleCounts.get(pref.id) ?? 0} available episodes
                  <span className="sn-ed">{s.editions.map(editionName).join(' · ')}</span>
                </span>
              </Link>
            );
          })}
        </div>
      </section>

      {['mehmed-fetihler-sultani', 'alparslan-buyuk-selcuklu', 'ask-ve-taht'].includes(drama.id) && <ViewingTable heading="Choose a season and viewing edition"
        rows={seasons.flatMap(s => s.editions.map(e => ({ label: `${s.label} — ${editionName(e)}`,
          href: seasonPath(drama.id, s, e), detail: `${eligibleCounts.get(e.id) ?? 0} available episode pages`,
          availability: ['alparslan-buyuk-selcuklu', 'ask-ve-taht'].includes(drama.id)
            ? e.version === 'dubbed' ? 'Catalogued Urdu dubbed edition; separate episode numbering' : 'Subtitle choices vary by episode'
            : e.version === 'dubbed' ? 'Urdu audio' : 'Original audio; subtitle choices vary by episode' })))} />}
      {/* Details */}
      <section className="dw-sec" id="details">
        <h3>Details</h3>
        <div className="facts2">
          <div>Seasons<b>{seasons.length}</b></div>
          {Array.from(totalsByEdition.entries()).map(([name, n]) => (
            <div key={name}>{name} episodes<b>{n}</b></div>
          ))}
          <div>Genres<b>{drama.genres?.join(', ') || 'Drama'}</b></div>
          <div>Languages<b>{drama.languages?.join(', ') || 'Urdu'}</b></div>
          <div>Status<b>{playable ? 'Streaming now, ad-free' : 'Preview catalog'}</b></div>
        </div>
        {drama.source_names.length > 1 && (
          <div className="tags">
            {drama.source_names.filter((n) => n !== drama.name).map((n) => <span key={n}>Also known as {n}</span>)}
          </div>
        )}
      </section>

      <EditorialSections sections={drama.editorial?.sections || []} />
      {/* Related Dramas */}
      {relatedDramas.length > 0 && (
        <section className="dw-sec" id="more">
          <h3>More like this</h3>
          <div className="sv-more">
            {relatedDramas.map((rd) => <DramaCard key={rd.id} drama={rd} />)}
          </div>
        </section>
      )}
    </div>
  );
}
