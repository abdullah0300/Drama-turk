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
  if (!drama) return { title: 'Drama Not Found' };

  return {
    title: drama.name,
    description: drama.synopsis || `Explore catalog records and verified episode collections for ${drama.name}.`,
    alternates: {
      canonical: `${siteConfig.domain}/drama/${drama.id}`,
    },
    openGraph: {
      title: drama.name,
      description: drama.synopsis || `Explore catalog records and verified episode collections for ${drama.name}.`,
      images: drama.poster_url ? [{ url: drama.poster_url }] : [],
    },
  };
}

export default async function DramaPage({ params }: DramaPageProps) {
  const loaded = await loadDrama(params.dramaId);
  if (!loaded) notFound();
  const { drama, seasons } = loaded;
  const collections = seasons.flatMap((s) => s.editions);
  const playable = isDramaPlayable(drama) || collections.some(isReleasePublished);

  // "Start watching" opens the first episode of the first season
  const firstSeason = seasons[0];
  const firstEdition = firstSeason?.editions[0];
  let startHref: string | undefined;
  if (playable && firstSeason && firstEdition) {
    const { groups, slugs } = await loadEditionEpisodes(firstEdition.id);
    if (groups[0]) startHref = episodeHref(drama.id, firstSeason, firstEdition, slugs.get(groups[0].id)!);
  }

  // Episode totals per version (subtitled and dubbed releases are numbered differently)
  const totalsByEdition = new Map<string, number>();
  collections.forEach((c) => {
    const name = editionName(c);
    totalsByEdition.set(name, (totalsByEdition.get(name) ?? 0) + (c.episode_group_ids?.length ?? 0));
  });
  const editionNames = Array.from(totalsByEdition.keys());
  const totalEpisodes = Math.max(0, ...Array.from(totalsByEdition.values()));

  // Related dramas
  const allDramas = await supabaseCatalog.getAllDramas();
  const relatedDramas = allDramas
    .filter((d) => d.id !== drama.id && d.genres?.some((g) => drama.genres?.includes(g)))
    .slice(0, 6);

  const jsonLd = {
    '@context': 'https://schema.org',
    '@type': 'TVSeries',
    name: drama.name,
    description: drama.synopsis,
    numberOfSeasons: seasons.length,
    numberOfEpisodes: totalEpisodes,
    genre: drama.genres,
    image: drama.poster_url,
  };

  const heroImage = drama.backdrop_url || drama.poster_url;

  return (
    <div className="series">
      <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }} />

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
                <span className={`badge${i === seasons.length - 1 ? '' : ' dark'}`}>{i === seasons.length - 1 ? 'Latest' : 'Complete'}</span>
                <span className="sn-n"><small>S</small>{s.key.includes('-') ? s.key.replace('-', '–') : s.number}</span>
                <span className="sn-i">
                  {pref.episode_group_ids?.length ?? 0} episodes
                  <span className="sn-ed">{s.editions.map(editionName).join(' · ')}</span>
                </span>
              </Link>
            );
          })}
        </div>
      </section>

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
