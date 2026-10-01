import React from 'react';
import type { Metadata } from 'next';
import Link from 'next/link';
import { notFound } from 'next/navigation';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { DramaActions } from './DramaActions';
import { DramaCard } from '@/components/dramas/DramaCard';
import { Play, ArrowRight } from 'lucide-react';
import { siteConfig } from '@/config/site';
import { isDramaPlayable, groupSeasons, editionName, pluralSeasons, VideoRecord } from '@/types/catalog';

interface DramaPageProps {
  params: {
    dramaId: string;
  };
  searchParams?: {
    season?: string;
    edition?: string;
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

export default async function DramaPage({ params, searchParams }: DramaPageProps) {
  const drama = await supabaseCatalog.getDrama(params.dramaId);
  if (!drama) notFound();

  const collections = await supabaseCatalog.getDramaCollections(drama.id);
  const seasons = groupSeasons(collections);
  const playable = isDramaPlayable(drama) || collections.some((c) => c.status === 'published');

  // Selected season and edition come from the URL (?season=3&edition=dubbed); default is the first season
  const season = seasons.find((s) => s.key === searchParams?.season) ?? seasons[0];
  const edition = season?.editions.find((e) => e.version === searchParams?.edition) ?? season?.editions[0];

  const [groups, videos] = edition
    ? await Promise.all([
        supabaseCatalog.getCollectionEpisodeGroups(edition.id),
        supabaseCatalog.getCollectionVideos(edition.id),
      ])
    : [[], [] as VideoRecord[]];
  let editionVideos = videos;
  if (editionVideos.length === 0 && groups.length > 0) {
    // Fall back to per-group lookups when the bulk collection query returns nothing
    editionVideos = (await Promise.all(groups.map((g) => supabaseCatalog.getVideosForGroup(g.id)))).flat();
  }
  const videosByGroup = new Map<string, VideoRecord[]>();
  editionVideos.forEach((v) => {
    if (!v.episode_group_id) return;
    if (!videosByGroup.has(v.episode_group_id)) videosByGroup.set(v.episode_group_id, []);
    videosByGroup.get(v.episode_group_id)!.push(v);
  });

  // "Play" always starts at the first episode of the first season
  const firstSeason = seasons[0];
  const firstEdition = firstSeason?.editions[0];
  const firstGroups =
    firstEdition && firstEdition.id === edition?.id
      ? groups
      : firstEdition
        ? await supabaseCatalog.getCollectionEpisodeGroups(firstEdition.id)
        : [];
  const firstPlayableGroup = playable ? firstGroups[0] : undefined;

  // Episode totals per version (subtitled and dubbed releases are numbered differently)
  const totalsByEdition = new Map<string, number>();
  collections.forEach((c) => {
    const name = editionName(c);
    totalsByEdition.set(name, (totalsByEdition.get(name) ?? 0) + (c.episode_group_ids?.length ?? 0));
  });
  const editionNames = Array.from(totalsByEdition.keys());
  const totalEpisodes = Math.max(0, ...Array.from(totalsByEdition.values()));
  const yearsLabel = pluralSeasons(seasons.length);

  // Related dramas
  const allDramas = await supabaseCatalog.getAllDramas();
  const relatedDramas = allDramas
    .filter((d) => d.id !== drama.id && d.genres?.some((g) => drama.genres?.includes(g)))
    .slice(0, 6);

  // Structured Data (Schema.org)
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
  const tabHref = (seasonKey: string, version?: string) =>
    `/drama/${drama.id}?season=${encodeURIComponent(seasonKey)}${version ? `&edition=${version}` : ''}#episodes`;

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
            <span className="gold">{yearsLabel}</span>
            <span className="sep" />
            <span>{editionNames.join(' & ')}</span>
          </div>
          {drama.synopsis && <p className="dw-line">{drama.synopsis}</p>}
          <DramaActions
            drama={drama}
            firstPlayableGroup={firstPlayableGroup}
            isPlayable={playable}
            seasonName={firstSeason?.label}
          />
        </div>
      </header>

      {/* Section navigation */}
      <nav className="dw-nav" aria-label="Series sections">
        <a href="#episodes">Episodes</a>
        <a href="#seasons">Seasons</a>
        <a href="#details">Details</a>
        {relatedDramas.length > 0 && <a href="#more">More like this</a>}
      </nav>

      {/* Episodes of the selected season & edition */}
      <section className="dw-sec" id="episodes">
        <div className="eps-head">
          <h3>
            Episodes
            <small>
              {season ? `${season.label} · ${edition ? editionName(edition) : ''} · ${groups.length} episodes` : 'No seasons yet'}
            </small>
          </h3>
          {edition && (
            <Link className="sortbtn" href={`/drama/${drama.id}/collection/${edition.id}`}>
              Open season page <ArrowRight className="i" />
            </Link>
          )}
        </div>

        {seasons.length > 1 && (
          <div className="tabs series-tabs" role="tablist" aria-label="Season">
            {seasons.map((s) => (
              <Link key={s.key} href={tabHref(s.key)} className={`tab${s.key === season?.key ? ' on' : ''}`} role="tab" aria-selected={s.key === season?.key} scroll={false}>
                {s.label}
              </Link>
            ))}
          </div>
        )}
        {season && season.editions.length > 1 && (
          <div className="tabs series-tabs ed" role="tablist" aria-label="Edition">
            {season.editions.map((e) => (
              <Link key={e.id} href={tabHref(season.key, e.version)} className={`tab${e.id === edition?.id ? ' on' : ''}`} role="tab" aria-selected={e.id === edition?.id} scroll={false}>
                {editionName(e)} · {e.episode_group_ids?.length ?? 0}
              </Link>
            ))}
          </div>
        )}

        <div className="eps">
          {groups.length === 0 && <div className="dw-empty">No episodes indexed for this season yet.</div>}
          {groups.map((g, i) => {
            const vs = videosByGroup.get(g.id) || [];
            const thumb = vs.find((v) => v.thumbnail_urls?.[0])?.thumbnail_urls[0];
            const canPlay = playable && (vs.length === 0 || vs.some((v) => v.stream_present));
            const langs = Array.from(new Set(vs.flatMap((v) => v.languages || []))).join(' / ');
            const inner = (
              <>
                <span className="ep-n">{g.episode_number ?? i + 1}</span>
                <span className="ep-t">
                  {thumb ? <img src={thumb} alt="" loading="lazy" /> : <span className="thumb-fallback" />}
                  {canPlay && <span className="c-play"><Play className="i f" /></span>}
                </span>
                <span>
                  <h5>
                    {g.display_label}
                    {i === groups.length - 1 && season?.key === seasons[seasons.length - 1]?.key && <span className="badge">Latest</span>}
                  </h5>
                  <div className="ep-m">
                    {[g.bolum ? `Bolum ${g.bolum}` : null, langs || null, edition ? editionName(edition) : null].filter(Boolean).join(' · ')}
                  </div>
                </span>
                <span className="ep-d">{vs.length > 1 ? `${vs.length} versions` : ''}</span>
              </>
            );
            return canPlay ? (
              <Link key={g.id} href={`/drama/${drama.id}/watch/${g.id}`} className="ep">{inner}</Link>
            ) : (
              <div key={g.id} className="ep up">{inner}</div>
            );
          })}
        </div>
      </section>

      {/* All seasons */}
      <section className="dw-sec" id="seasons">
        <h3>Seasons <small>{yearsLabel} · {editionNames.join(' & ')}</small></h3>
        <div className="dw-seasons">
          {seasons.map((s, i) => {
            const pref = s.editions[0];
            return (
              <Link key={s.key} href={`/drama/${drama.id}/collection/${pref.id}`} className={`sn${s.key === season?.key ? ' on' : ''}`}>
                {drama.poster_url ? <img src={drama.poster_url} alt="" /> : <span className="thumb-fallback" style={{ position: 'absolute', inset: 0 }} />}
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
