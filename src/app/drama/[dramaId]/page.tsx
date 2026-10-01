import React from 'react';
import type { Metadata } from 'next';
import Link from 'next/link';
import { notFound } from 'next/navigation';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { DramaActions } from './DramaActions';
import { DramaCard } from '@/components/dramas/DramaCard';
import { Film, CheckCircle2, ChevronRight, Play, Layers } from 'lucide-react';
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
  const pilotVideos = pilotCollection
    ? await supabaseCatalog.getCollectionVideos(pilotCollection.id)
    : [];
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

  return (
    <div className="min-h-screen pb-16">
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
      />

      {/* Breadcrumb Navigation */}
      <div className="border-b border-surface-border bg-canvas-subtle/40">
        <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8 py-3 text-xs text-text-tertiary flex items-center gap-1.5">
          <Link href="/" className="hover:text-text-primary transition-colors">Home</Link>
          <ChevronRight size={12} />
          <Link href="/browse" className="hover:text-text-primary transition-colors">Dramas</Link>
          <ChevronRight size={12} />
          <span className="text-text-secondary truncate">{drama.name}</span>
        </div>
      </div>

      {/* Main Drama Header */}
      <div className="border-b border-surface-border bg-gradient-to-b from-canvas-elevated via-canvas-subtle to-canvas">
        <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12">
          <div className="flex flex-col md:flex-row gap-8 items-start">
            {/* Artwork Poster */}
            <div className="w-full sm:w-56 md:w-64 flex-shrink-0 aspect-[2/3] bg-surface-hover rounded-xl overflow-hidden shadow-elevated border border-surface-border relative">
              {drama.poster_url ? (
                <img
                  src={drama.poster_url}
                  alt={drama.name}
                  className="w-full h-full object-cover"
                />
              ) : (
                <div className="w-full h-full flex flex-col items-center justify-center text-text-tertiary p-6 text-center">
                  <Film size={40} className="mb-2 opacity-50" />
                  <span className="text-xs">{drama.name}</span>
                </div>
              )}

              {/* Pilot / Preview Badge */}
              <div className="absolute top-3 left-3">
                {isPilot ? (
                  <span className="px-2.5 py-1 rounded bg-amber-500 text-stone-950 font-bold text-xs uppercase tracking-wide shadow-md">
                    Playable Pilot
                  </span>
                ) : (
                  <span className="px-2.5 py-1 rounded bg-stone-900/90 text-text-tertiary border border-surface-border text-xs font-medium backdrop-blur-sm">
                    Preview Catalog
                  </span>
                )}
              </div>
            </div>

            {/* Drama Facts & Synopsis */}
            <div className="flex-1 max-w-3xl">
              <h1 className="text-3xl sm:text-4xl md:text-5xl font-bold font-display text-text-primary tracking-tight mb-3">
                {drama.name}
              </h1>

              {/* Known Aliases */}
              {drama.source_names.length > 1 && (
                <p className="text-xs text-text-tertiary mb-3">
                  Also recorded as: {drama.source_names.filter(n => n !== drama.name).join(', ')}
                </p>
              )}

              {/* Verified Facts Badges */}
              <div className="flex flex-wrap items-center gap-2 mb-4 text-xs">
                <span className="px-2.5 py-1 rounded bg-surface border border-surface-border text-amber-400 font-medium">
                  {drama.video_records} Video Records
                </span>
                <span className="px-2.5 py-1 rounded bg-surface border border-surface-border text-text-secondary">
                  {collections.length} Catalog Collections
                </span>
                {drama.languages?.map(lang => (
                  <span key={lang} className="px-2.5 py-1 rounded bg-surface border border-surface-border text-text-secondary">
                    {lang}
                  </span>
                ))}
                {drama.genres?.map(genre => (
                  <span key={genre} className="px-2.5 py-1 rounded bg-surface border border-surface-border text-text-tertiary">
                    {genre}
                  </span>
                ))}
              </div>

              {/* Synopsis */}
              <p className="text-sm sm:text-base text-text-secondary leading-relaxed mb-6">
                {drama.synopsis}
              </p>

              {/* Client Action Buttons (Resume / Add to list) */}
              <DramaActions
                drama={drama}
                firstPlayableGroup={firstPlayableGroup}
                isPilot={isPilot}
              />
            </div>
          </div>
        </div>
      </div>

      <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8 py-10 space-y-12">
        {/* Playable Pilot Episode Browser (Only for pilot collection) */}
        {isPilot && pilotCollection && (
          <section aria-label="Pilot Episodes">
            <div className="flex flex-col sm:flex-row sm:items-end justify-between mb-6 gap-2">
              <div>
                <div className="inline-flex items-center gap-1.5 text-xs text-amber-500 font-semibold uppercase tracking-wider mb-1">
                  <CheckCircle2 size={13} />
                  Playable Pilot Collection
                </div>
                <h2 className="text-xl sm:text-2xl font-bold font-display text-text-primary">
                  {pilotCollection.source_heading}
                </h2>
                <p className="text-xs text-text-tertiary mt-1">
                  {pilotEpisodeGroups.length} episodes available with choice of Urdu or English subtitles.
                </p>
              </div>
            </div>

            {/* Episode Grid */}
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
              {pilotEpisodeGroups.map((group) => {
                const videos = pilotVideosByGroup.get(group.id) || [];
                const firstVideo = videos[0];
                const thumbnail = firstVideo?.thumbnail_urls?.[0];
                const watchUrl = `/drama/${drama.id}/watch/${group.id}`;

                return (
                  <Link
                    key={group.id}
                    href={watchUrl}
                    className="group bg-surface/50 hover:bg-surface border border-surface-border hover:border-amber-500/40 rounded-lg overflow-hidden flex flex-col justify-between transition-all"
                  >
                    <div className="relative aspect-video w-full bg-surface-hover block overflow-hidden">
                      {thumbnail ? (
                        <img
                          src={thumbnail}
                          alt={group.display_label}
                          className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-200"
                        />
                      ) : (
                        <div className="w-full h-full flex items-center justify-center bg-surface-hover text-text-tertiary">
                          <Play size={24} className="opacity-40" />
                        </div>
                      )}

                      {/* Play overlay icon */}
                      <div className="absolute inset-0 bg-black/40 group-hover:bg-black/20 flex items-center justify-center transition-colors">
                        <div className="w-9 h-9 rounded-full bg-amber-500 text-stone-950 flex items-center justify-center group-hover:scale-110 transition-transform">
                          <Play size={16} className="fill-stone-950 translate-x-0.5" />
                        </div>
                      </div>
                    </div>

                    <div className="p-3">
                      <div className="flex items-center justify-between text-xs text-amber-400 font-semibold mb-1">
                        <span>{group.display_label}</span>
                        {group.bolum && (
                          <span className="text-[11px] text-text-tertiary font-mono">
                            Bolum {group.bolum}
                          </span>
                        )}
                      </div>
                      <p className="text-xs text-text-secondary line-clamp-1 group-hover:text-text-primary">
                        {firstVideo?.title || `${drama.name} ${group.display_label}`}
                      </p>
                      <div className="flex items-center gap-2 text-[10px] text-text-tertiary mt-2">
                        <span>{videos.map(v => v.languages?.join(', ')).filter(Boolean).join(' / ')}</span>
                        <span>•</span>
                        <span className="capitalize">{firstVideo?.version || 'subtitled'}</span>
                      </div>
                    </div>
                  </Link>
                );
              })}
            </div>
          </section>
        )}

        {/* Catalog Collections List (Honest separation of Dubbed vs Subtitled cuts) */}
        <section aria-label="Catalog Collections">
          <div className="flex items-center gap-2 mb-4">
            <Layers size={18} className="text-amber-500" />
            <h2 className="text-xl font-bold font-display text-text-primary">
              Source Catalog Collections ({collections.length})
            </h2>
          </div>
          <p className="text-xs text-text-tertiary mb-6 max-w-2xl">
            Dubbed and subtitled editions represent distinct source broadcast collections and numbering cuts; they are retained individually to preserve authenticity.
          </p>

          <div className="space-y-3">
            {collections.map(col => {
              const isColPilot = col.id === siteConfig.pilotCollectionId;
              return (
                <div
                  key={col.id}
                  className={`p-4 rounded-lg border flex flex-col sm:flex-row sm:items-center justify-between gap-4 transition-colors ${
                    isColPilot
                      ? 'bg-amber-500/10 border-amber-500/30'
                      : 'bg-surface/30 border-surface-border'
                  }`}
                >
                  <div>
                    <div className="flex items-center gap-2">
                      <h3 className="text-sm font-semibold text-text-primary">
                        {col.source_heading}
                      </h3>
                      {isColPilot && (
                        <span className="px-2 py-0.5 rounded bg-amber-500 text-stone-950 font-bold text-[10px] uppercase">
                          Active Pilot Release
                        </span>
                      )}
                    </div>
                    <div className="flex flex-wrap items-center gap-2 text-xs text-text-tertiary mt-1">
                      <span>Collection ID: {col.id}</span>
                      <span>•</span>
                      <span>{col.video_records} video entries</span>
                      <span>•</span>
                      <span>{col.episode_group_ids.length} episode groups</span>
                      <span>•</span>
                      <span className="capitalize">{col.version} cut</span>
                    </div>
                  </div>

                  <Link
                    href={`/drama/${drama.id}/collection/${col.id}`}
                    className={`px-3 py-1.5 rounded text-xs font-medium self-start sm:self-auto border transition-colors ${
                      isColPilot
                        ? 'bg-amber-500 hover:bg-amber-600 text-stone-950 border-amber-500'
                        : 'bg-surface hover:bg-surface-hover text-text-secondary hover:text-text-primary border-surface-border'
                    }`}
                  >
                    View Collection Details &rarr;
                  </Link>
                </div>
              );
            })}
          </div>
        </section>

        {/* Related Dramas */}
        {relatedDramas.length > 0 && (
          <section aria-label="Related Dramas">
            <h2 className="text-xl font-bold font-display text-text-primary mb-6">
              Related Historical Dramas
            </h2>
            <div className="grid grid-cols-2 sm:grid-cols-4 gap-4">
              {relatedDramas.map(rd => (
                <DramaCard key={rd.id} drama={rd} />
              ))}
            </div>
          </section>
        )}
      </div>
    </div>
  );
}
