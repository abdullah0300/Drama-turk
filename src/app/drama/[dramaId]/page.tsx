import React from 'react';
import type { Metadata } from 'next';
import Link from 'next/link';
import { notFound } from 'next/navigation';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { DramaActions } from './DramaActions';
import { DramaCard } from '@/components/dramas/DramaCard';
import { Play } from 'lucide-react';
import { siteConfig } from '@/config/site';

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
  const drama = await supabaseCatalog.getDrama(params.dramaId);
  if (!drama) notFound();

  const collections = await supabaseCatalog.getDramaCollections(drama.id);
  const isPilot = drama.isPilot ?? false;

  // If pilot, load collection-68 episode groups
  const pilotCollection = isPilot ? await supabaseCatalog.getPilotCollection() : undefined;
  const pilotEpisodeGroups = pilotCollection
    ? await supabaseCatalog.getCollectionEpisodeGroups(pilotCollection.id)
    : [];
  const firstPlayableGroup = pilotEpisodeGroups.length > 0 ? pilotEpisodeGroups[0] : undefined;
  let pilotVideos = pilotCollection
    ? await supabaseCatalog.getCollectionVideos(pilotCollection.id)
    : [];
  if (pilotVideos.length === 0 && pilotEpisodeGroups.length > 0) {
    // Fall back to per-group lookups when the bulk collection query returns nothing
    pilotVideos = (await Promise.all(pilotEpisodeGroups.map((g) => supabaseCatalog.getVideosForGroup(g.id)))).flat();
  }
  const pilotVideosByGroup = new Map<string, any[]>();
  pilotVideos.forEach(v => {
    if (v.episode_group_id) {
      if (!pilotVideosByGroup.has(v.episode_group_id)) {
        pilotVideosByGroup.set(v.episode_group_id, []);
      }
      pilotVideosByGroup.get(v.episode_group_id)!.push(v);
    }
  });

  // Related dramas
  const allDramas = await supabaseCatalog.getAllDramas();
  const relatedDramas = allDramas
    .filter(d => d.id !== drama.id && d.genres?.some(g => drama.genres?.includes(g)))
    .slice(0, 4);

  // Structured Data (Schema.org)
  const jsonLd = {
    '@context': 'https://schema.org',
    '@type': 'TVSeries',
    name: drama.name,
    description: drama.synopsis,
    numberOfSeasons: collections.length,
    genre: drama.genres,
    image: drama.poster_url,
  };

  const heroImage = drama.backdrop_url || drama.poster_url;
  const pilotPlayable = pilotEpisodeGroups.filter((g) => (pilotVideosByGroup.get(g.id) || []).some((v: any) => v.stream_present));

  return (
    <div className="sv">
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
      />

      {/* Hero */}
      <div className="sv-hero">
        {heroImage ? <img className="sv-bg" src={heroImage} alt="" /> : <div className="art-fallback" style={{ zIndex: -2 }} />}
        <div className="sv-shade" />
        <div className="sv-num" aria-hidden="true">
          {String(collections.length).padStart(2, '0').split('').map((c, i) => <span key={i}>{c}</span>)}
        </div>

        <div className="sv-hero-in">
          <nav className="sv-crumb" aria-label="Breadcrumb">
            <Link href="/">Home</Link><i>/</i>
            <Link href="/browse">Dramas</Link><i>/</i>
            <span style={{ color: 'var(--text)' }}>{drama.name}</span>
          </nav>
          <div className="sv-kick">
            <span className={`badge${isPilot ? ' live' : ' dark'}`}>{isPilot ? 'Playable Pilot' : 'Preview Catalog'}</span>
            <span>
              {collections.length} {collections.length === 1 ? 'season' : 'seasons'}
              {drama.genres?.[0] ? ` · ${drama.genres[0]}` : ''}
            </span>
          </div>
          <h1 className="sv-h" style={{ fontSize: 'clamp(44px,6.4vw,104px)' }}>{drama.name}</h1>
          {drama.source_names.length > 1 && (
            <p className="sv-line" style={{ fontSize: 13, color: 'var(--muted)', marginTop: 6 }}>
              Also recorded as: {drama.source_names.filter((n) => n !== drama.name).join(', ')}
            </p>
          )}
          {drama.synopsis && <p className="sv-line">{drama.synopsis}</p>}

          <DramaActions drama={drama} firstPlayableGroup={firstPlayableGroup} isPilot={isPilot} />
        </div>
      </div>

      <div className="sv-body">
        <div className="sv-stats">
          <div className="st"><small>Video records</small><b>{drama.video_records}</b><span>Preserved from source</span></div>
          <div className="st"><small>Seasons</small><b>{collections.length}</b><span>Dubbed &amp; subtitled kept separate</span></div>
          <div className="st"><small>Languages</small><b style={{ fontSize: 22 }}>{drama.languages?.slice(0, 2).join(' · ') || '—'}</b><span>{drama.languages && drama.languages.length > 2 ? `+${drama.languages.length - 2} more` : 'Available renditions'}</span></div>
          <div className="st"><small>Genres</small><b style={{ fontSize: 22 }}>{drama.genres?.slice(0, 2).join(' · ') || '—'}</b><span>Verified metadata</span></div>
          <div className="st"><small>Status</small><b>{isPilot ? 'Live' : 'Preview'}</b><span>{isPilot ? `${pilotPlayable.length} playable episodes` : 'Metadata only'}</span></div>
        </div>

        {/* Playable Pilot Episode Browser (Only for pilot collection) */}
        {isPilot && pilotCollection && (
          <section className="sv-sec" aria-label="Pilot Episodes">
            <div className="sv-sec-h">
              <h2>
                {pilotCollection.source_heading}
                <small>{pilotEpisodeGroups.length} episodes available with choice of Urdu or English subtitles.</small>
              </h2>
              <Link href={`/drama/${drama.id}/collection/${pilotCollection.id}`} className="pill">View season page</Link>
            </div>

            <div className="sv-grid">
              {pilotEpisodeGroups.map((group, i) => {
                const videos = pilotVideosByGroup.get(group.id) || [];
                const firstVideo = videos[0];
                const thumbnail = firstVideo?.thumbnail_urls?.[0];
                return (
                  <Link
                    key={group.id}
                    href={`/drama/${drama.id}/watch/${group.id}`}
                    className="se"
                    style={{ ['--d' as string]: `${Math.min(i, 12) * 50}ms` }}
                  >
                    <div className="media">
                      {thumbnail ? <img src={thumbnail} alt={group.display_label} loading="lazy" /> : <div className="thumb-fallback"><Play size={24} style={{ opacity: .4 }} /></div>}
                      <span className="shade" />
                      <span className="se-num">{group.episode_number ?? group.bolum ?? i + 1}</span>
                      <span className="c-play"><Play className="i f" /></span>
                    </div>
                    <div className="se-b">
                      <b>{group.display_label}{group.bolum ? <span>Bolum {group.bolum}</span> : null}</b>
                      <p>{firstVideo?.title || `${drama.name} ${group.display_label}`}</p>
                      <p style={{ marginTop: 2, fontSize: 12 }}>
                        {videos.map((v: any) => v.languages?.join(', ')).filter(Boolean).join(' / ')} · <span style={{ textTransform: 'capitalize' }}>{firstVideo?.version || 'subtitled'}</span>
                      </p>
                    </div>
                  </Link>
                );
              })}
            </div>
          </section>
        )}

        {/* Catalog Collections (honest separation of Dubbed vs Subtitled cuts) */}
        <section className="sv-sec" aria-label="Catalog Collections">
          <div className="sv-sec-h">
            <h2>
              Seasons &amp; collections ({collections.length})
              <small>Dubbed and subtitled editions are distinct source broadcast collections and numbering cuts; they are kept individually to preserve authenticity.</small>
            </h2>
          </div>
          <div className="sv-others">
            {collections.map((col, i) => {
              const isColPilot = col.id === siteConfig.pilotCollectionId;
              return (
                <Link key={col.id} href={`/drama/${drama.id}/collection/${col.id}`} className="so">
                  {heroImage ? <img src={heroImage} alt="" /> : <div className="thumb-fallback" style={{ position: 'absolute', inset: 0 }} />}
                  <span className="shade" />
                  {isColPilot && <span className="badge">Active pilot release</span>}
                  <span className="so-in">
                    <strong><small>S</small>{col.reported_seasons?.[0] ?? i + 1}</strong>
                    <span>
                      {col.source_heading}
                    </span>
                    <span style={{ fontSize: 12, fontWeight: 600, color: 'var(--muted)' }}>
                      {col.video_records} video entries · {col.episode_group_ids.length} episode groups · <span style={{ textTransform: 'capitalize' }}>{col.version} cut</span>
                    </span>
                  </span>
                </Link>
              );
            })}
          </div>
        </section>

        {/* Related Dramas */}
        {relatedDramas.length > 0 && (
          <section className="sv-sec" aria-label="Related Dramas">
            <div className="sv-sec-h"><h2>More like this</h2></div>
            <div className="sv-more">
              {relatedDramas.map((rd) => (
                <DramaCard key={rd.id} drama={rd} />
              ))}
            </div>
          </section>
        )}
      </div>
    </div>
  );
}
