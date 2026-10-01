import React from 'react';
import Link from 'next/link';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { FeaturedHero } from '@/components/home/FeaturedHero';
import { ContinueWatchingRow } from '@/components/home/ContinueWatchingRow';
import { LatestEpisodesRow } from '@/components/home/LatestEpisodesRow';
import { DramaCard } from '@/components/dramas/DramaCard';
import { Compass, ShieldCheck } from 'lucide-react';
import { siteConfig } from '@/config/site';

export const revalidate = 3600; // 1 hour ISR

export default async function HomePage() {
  const pilotDrama = await supabaseCatalog.getPilotDrama();
  const pilotCollection = await supabaseCatalog.getPilotCollection();
  const pilotGroups = pilotCollection ? await supabaseCatalog.getCollectionEpisodeGroups(pilotCollection.id) : [];
  const firstGroup = pilotGroups.length > 0 ? pilotGroups[0] : undefined;

  const latestEpisodes = await supabaseCatalog.getLatestPlayableEpisodes(6);
  const allDramas = await supabaseCatalog.getAllDramas();

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

      {/* Featured Still Hero */}
      {pilotDrama && (
        <FeaturedHero
          drama={pilotDrama}
          collection={pilotCollection}
          firstEpisodeGroup={firstGroup}
        />
      )}

      {/* Continue Watching Section (Private local storage) */}
      <ContinueWatchingRow />

      {/* Latest Playable Episodes in Pilot Release */}
      <LatestEpisodesRow episodes={latestEpisodes} />

      {/* Browse Dramas Section */}
      <section className="py-12 px-4 sm:px-6 lg:px-8 max-w-page mx-auto w-full" aria-label="Browse Dramas">
        <div className="flex flex-col sm:flex-row sm:items-end justify-between mb-8 gap-4">
          <div>
            <div className="flex items-center gap-2 text-xs font-semibold uppercase tracking-wider text-amber-500 mb-1">
              <Compass size={14} />
              Full Catalog Directory
            </div>
            <h2 className="text-2xl sm:text-3xl font-bold font-display text-text-primary">
              Browse Dramas
            </h2>
            <p className="text-sm text-text-secondary mt-1">
              Explore 24 series, 63 collections, and over 2,900 preserved episodes across subtitled and dubbed broadcast collections.
            </p>
          </div>

          <Link
            href="/browse"
            className="text-sm font-medium text-amber-400 hover:text-amber-300 transition-colors flex items-center gap-1 self-start sm:self-auto"
          >
            Filter by language &amp; genre &rarr;
          </Link>
        </div>

        {/* Drama Grid */}
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-4 sm:gap-6">
          {allDramas.map((drama, idx) => (
            <DramaCard key={drama.id} drama={drama} priority={idx < 6} />
          ))}
        </div>
      </section>

      {/* Transparent Brand Reassurance Banner (Appears once, subtle, honest) */}
      <section className="py-12 border-t border-surface-border bg-canvas-subtle">
        <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <div className="inline-flex items-center justify-center w-12 h-12 rounded-full bg-amber-500/10 text-amber-400 mb-4 border border-amber-500/20">
            <ShieldCheck size={24} />
          </div>
          <h3 className="text-xl font-bold font-display text-text-primary mb-2">
            {siteConfig.brandPromise}
          </h3>
          <p className="text-sm text-text-secondary max-w-lg mx-auto leading-relaxed">
            Zero pre-roll ads, zero mid-roll interruptions, and zero pop-ups. We prioritize direct, distraction-free playback with authentic audio and subtitle renditions.
          </p>
        </div>
      </section>
    </div>
  );
}
