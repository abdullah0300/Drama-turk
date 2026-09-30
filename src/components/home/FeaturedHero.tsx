import React from 'react';
import Link from 'next/link';
import Image from 'next/image';
import { Play, Info, ShieldCheck, CheckCircle2 } from 'lucide-react';
import { Drama, CatalogCollection, EpisodeGroup } from '@/types/catalog';
import { siteConfig } from '@/config/site';

interface FeaturedHeroProps {
  drama: Drama;
  collection?: CatalogCollection;
  firstEpisodeGroup?: EpisodeGroup;
}

export function FeaturedHero({ drama, collection, firstEpisodeGroup }: FeaturedHeroProps) {
  const watchUrl = firstEpisodeGroup 
    ? `/drama/${drama.id}/watch/${firstEpisodeGroup.id}`
    : `/drama/${drama.id}`;

  return (
    <section className="relative w-full border-b border-surface-border bg-gradient-to-b from-canvas-elevated via-canvas-subtle to-canvas overflow-hidden">
      {/* Background Graphic / Artwork with purposeful cinematic gradient */}
      <div className="absolute inset-0 z-0 opacity-25 md:opacity-30">
        {drama.backdrop_url ? (
          <img
            src={drama.backdrop_url}
            alt={drama.name}
            className="w-full h-full object-cover object-center filter blur-[2px] scale-105"
          />
        ) : (
          <div className="w-full h-full bg-gradient-to-r from-amber-950/20 to-stone-900" />
        )}
        <div className="absolute inset-0 bg-gradient-to-t from-canvas via-canvas/80 to-transparent" />
        <div className="absolute inset-0 bg-gradient-to-r from-canvas via-canvas/70 to-transparent" />
      </div>

      <div className="relative z-10 max-w-page mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12 md:py-16">
        <div className="max-w-2xl">
          {/* Subtle ad-free promise badge & Pilot tag */}
          <div className="flex flex-wrap items-center gap-2 mb-3">
            <span className="inline-flex items-center gap-1.5 px-2.5 py-1 rounded bg-amber-500/15 border border-amber-500/30 text-amber-400 text-xs font-semibold tracking-wide uppercase">
              <CheckCircle2 size={13} className="text-amber-400" />
              Pilot Feature · Playable Release
            </span>
            <span className="inline-flex items-center gap-1 px-2 py-0.5 rounded bg-surface/80 border border-surface-border text-text-tertiary text-xs">
              <ShieldCheck size={13} className="text-amber-500/80" />
              {siteConfig.supportingCopy}
            </span>
          </div>

          {/* Drama Title */}
          <h1 className="font-display text-3xl sm:text-4xl md:text-5xl lg:text-6xl font-bold tracking-tight text-text-primary mb-3 text-balance">
            {drama.name}
          </h1>

          {/* Verified Collection & Language Metadata */}
          <div className="flex flex-wrap items-center gap-x-3 gap-y-1 text-xs sm:text-sm text-text-secondary mb-4 font-medium">
            {collection && (
              <span className="text-amber-400">
                Season {collection.reported_seasons.join(', ')} Subtitled
              </span>
            )}
            <span className="text-surface-border-strong">•</span>
            <span>Urdu &amp; English Subtitles</span>
            <span className="text-surface-border-strong">•</span>
            <span>36 Episodes (Full Pilot Season)</span>
          </div>

          {/* Synopsis */}
          <p className="text-sm sm:text-base text-text-secondary mb-6 leading-relaxed line-clamp-3 md:line-clamp-4 max-w-xl">
            {drama.synopsis || 'An epic historical narrative chronicling the vision, statecraft, and tactical campaigns of Sultan Mehmed II as he reshapes the destiny of empires.'}
          </p>

          {/* Action CTAs */}
          <div className="flex flex-wrap items-center gap-3">
            <Link
              href={watchUrl}
              className="inline-flex items-center gap-2 px-6 py-3 rounded-lg bg-amber-500 hover:bg-amber-600 text-stone-950 font-semibold text-sm transition-transform active:scale-95 shadow-md"
            >
              <Play size={18} className="fill-stone-950" />
              Start Watching
            </Link>

            <Link
              href={`/drama/${drama.id}`}
              className="inline-flex items-center gap-2 px-5 py-3 rounded-lg bg-surface/80 hover:bg-surface-hover border border-surface-border text-text-primary text-sm font-medium transition-colors"
            >
              <Info size={18} className="text-text-secondary" />
              View Drama Details
            </Link>
          </div>
        </div>
      </div>
    </section>
  );
}
