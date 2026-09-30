import React from 'react';
import type { Metadata } from 'next';
import Link from 'next/link';
import { notFound } from 'next/navigation';
import { catalogRepository } from '@/lib/repository/catalog-repository';
import { Play, ChevronRight, Film, Video, Info } from 'lucide-react';
import { siteConfig } from '@/config/site';

interface CollectionPageProps {
  params: {
    dramaId: string;
    collectionId: string;
  };
}

export async function generateMetadata({ params }: CollectionPageProps): Promise<Metadata> {
  catalogRepository.ensureLoaded();
  const drama = catalogRepository.getDrama(params.dramaId);
  const collection = catalogRepository.getCollection(params.collectionId);
  if (!drama || !collection) return { title: 'Collection Not Found' };

  return {
    title: `${collection.source_heading} | ${drama.name}`,
    description: `Browse episode listings and catalog details for ${collection.source_heading}.`,
    alternates: {
      canonical: `${siteConfig.domain}/drama/${drama.id}/collection/${collection.id}`,
    },
  };
}

export default async function CollectionPage({ params }: CollectionPageProps) {
  catalogRepository.ensureLoaded();
  const drama = catalogRepository.getDrama(params.dramaId);
  const collection = catalogRepository.getCollection(params.collectionId);

  if (!drama || !collection) notFound();

  const isPilot = collection.id === siteConfig.pilotCollectionId;
  const episodeGroups = catalogRepository.getCollectionEpisodeGroups(collection.id);
  const firstPlayable = episodeGroups.length > 0 ? episodeGroups[0] : null;

  // Check for combined seasons label (e.g. Kosem Sultan Seasons 1 & 2)
  const isCombinedSeason = collection.reported_seasons && collection.reported_seasons.length > 1;

  // Separate Extras / Behind the scenes if any
  const extras: any[] = [];
  if (collection.extra_video_ids && collection.extra_video_ids.length > 0) {
    collection.extra_video_ids.forEach(vid => {
      const v = catalogRepository.getVideo(vid);
      if (v) extras.push(v);
    });
  }

  return (
    <div className="min-h-screen pb-16">
      {/* Breadcrumb Navigation */}
      <div className="border-b border-surface-border bg-canvas-subtle/40">
        <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8 py-3 text-xs text-text-tertiary flex items-center gap-1.5">
          <Link href="/" className="hover:text-text-primary transition-colors">Home</Link>
          <ChevronRight size={12} />
          <Link href={`/drama/${drama.id}`} className="hover:text-text-primary transition-colors truncate">{drama.name}</Link>
          <ChevronRight size={12} />
          <span className="text-text-secondary truncate">{collection.source_heading}</span>
        </div>
      </div>

      {/* Collection Header */}
      <div className="border-b border-surface-border bg-gradient-to-b from-canvas-elevated to-canvas py-8 sm:py-12">
        <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8">
          <div className="max-w-3xl">
            <span className="text-xs font-semibold uppercase tracking-wider text-amber-500 mb-2 block">
              {drama.name} · Collection Archive
            </span>
            <h1 className="text-2xl sm:text-3xl md:text-4xl font-bold font-display text-text-primary tracking-tight mb-3">
              {collection.source_heading}
            </h1>

            {/* Combined season honest banner */}
            {isCombinedSeason && (
              <div className="inline-flex items-center gap-2 px-3 py-1.5 rounded-lg bg-surface border border-surface-border text-xs text-text-secondary mb-4">
                <Info size={14} className="text-amber-500" />
                <span>Seasons {collection.reported_seasons.join(' & ')} — combined collection. Boundaries preserved as provided in source records.</span>
              </div>
            )}

            <div className="flex flex-wrap items-center gap-3 text-xs text-text-tertiary mb-6">
              <span className="px-2 py-0.5 rounded bg-surface border border-surface-border text-text-secondary">
                {collection.video_records} Video Records
              </span>
              <span className="px-2 py-0.5 rounded bg-surface border border-surface-border text-text-secondary">
                {episodeGroups.length} Episode Groups
              </span>
              <span className="px-2 py-0.5 rounded bg-surface border border-surface-border text-amber-400 capitalize">
                {collection.version || 'Preserved'} Edition
              </span>
              {isPilot && (
                <span className="px-2 py-0.5 rounded bg-amber-500 text-stone-950 font-bold uppercase text-[10px]">
                  Playable Pilot
                </span>
              )}
            </div>

            {/* Pilot CTA */}
            {isPilot && firstPlayable && (
              <Link
                href={`/drama/${drama.id}/watch/${firstPlayable.id}`}
                className="inline-flex items-center gap-2 px-6 py-3 rounded-lg bg-amber-500 hover:bg-amber-600 text-stone-950 font-semibold text-sm transition-transform active:scale-95 shadow"
              >
                <Play size={18} className="fill-stone-950" />
                Start Watching Episode 1
              </Link>
            )}
          </div>
        </div>
      </div>

      {/* Episode Browser */}
      <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8 py-10">
        <h2 className="text-xl font-bold font-display text-text-primary mb-6">
          Episodes ({episodeGroups.length})
        </h2>

        {episodeGroups.length > 0 ? (
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4">
            {episodeGroups.map((group) => {
              const videos = catalogRepository.getVideosForGroup(group.id);
              const firstVideo = videos[0];
              const thumbnail = firstVideo?.thumbnail_urls?.[0];
              const isPlayable = isPilot;
              const cardUrl = isPlayable ? `/drama/${drama.id}/watch/${group.id}` : undefined;

              const CardContent = (
                <div className={`h-full bg-surface/40 border border-surface-border rounded-lg overflow-hidden flex flex-col justify-between transition-all ${
                  isPlayable ? 'group hover:border-amber-500/50 hover:bg-surface cursor-pointer' : 'opacity-85'
                }`}>
                  <div className="relative aspect-video w-full bg-surface-hover block overflow-hidden">
                    {thumbnail ? (
                      <img
                        src={thumbnail}
                        alt={group.display_label}
                        className="w-full h-full object-cover group-hover:scale-105 transition-transform"
                      />
                    ) : (
                      <div className="w-full h-full flex items-center justify-center bg-surface-hover text-text-tertiary">
                        <Film size={24} className="opacity-40" />
                      </div>
                    )}

                    {isPlayable ? (
                      <div className="absolute inset-0 bg-black/40 group-hover:bg-black/20 flex items-center justify-center transition-colors">
                        <div className="w-9 h-9 rounded-full bg-amber-500 text-stone-950 flex items-center justify-center group-hover:scale-110 transition-transform">
                          <Play size={16} className="fill-stone-950 translate-x-0.5" />
                        </div>
                      </div>
                    ) : (
                      <div className="absolute inset-0 bg-black/50 flex items-center justify-center p-3 text-center">
                        <span className="text-[11px] text-white/80 bg-black/70 px-2.5 py-1 rounded border border-white/10">
                          Preview Record
                        </span>
                      </div>
                    )}
                  </div>

                  <div className="p-3">
                    <div className="flex items-center justify-between text-xs font-semibold text-text-primary mb-1">
                      <span className="group-hover:text-amber-400 transition-colors">{group.display_label}</span>
                      {group.bolum && (
                        <span className="text-[11px] text-text-tertiary font-mono">
                          Bolum {group.bolum}
                        </span>
                      )}
                    </div>
                    <p className="text-xs text-text-secondary line-clamp-1 mb-2">
                      {firstVideo?.title || group.display_label}
                    </p>
                    <div className="flex items-center gap-2 text-[10px] text-text-tertiary">
                      <span>{videos.length} rendition{videos.length === 1 ? '' : 's'}</span>
                      <span>•</span>
                      <span>{videos.map(v => v.languages?.join(', ')).filter(Boolean).join('/') || 'Subtitled'}</span>
                    </div>
                  </div>
                </div>
              );

              return isPlayable && cardUrl ? (
                <Link key={group.id} href={cardUrl}>
                  {CardContent}
                </Link>
              ) : (
                <div key={group.id}>{CardContent}</div>
              );
            })}
          </div>
        ) : (
          <div className="text-center py-12 text-text-tertiary text-sm">
            No episode groups indexed in this collection.
          </div>
        )}

        {/* Extras Section */}
        {extras.length > 0 && (
          <section className="mt-12 pt-8 border-t border-surface-border" aria-label="Extras">
            <div className="flex items-center gap-2 mb-4">
              <Video size={18} className="text-amber-500" />
              <h3 className="text-lg font-bold font-display text-text-primary">
                Extras &amp; Behind the Scenes ({extras.length})
              </h3>
            </div>
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
              {extras.map((extra) => (
                <div key={extra.id} className="p-3 bg-surface border border-surface-border rounded-lg">
                  <h4 className="text-xs font-medium text-text-primary mb-1">{extra.heading || extra.title}</h4>
                  <p className="text-[11px] text-text-tertiary">ID: {extra.id}</p>
                </div>
              ))}
            </div>
          </section>
        )}
      </div>
    </div>
  );
}
