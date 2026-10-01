import React, { Suspense } from 'react';
import type { Metadata } from 'next';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { BrowseClient } from './BrowseClient';
import { siteConfig } from '@/config/site';

interface BrowsePageProps {
  searchParams: {
    q?: string;
    lang?: string;
    genre?: string;
    sort?: 'az' | 'za' | 'records' | 'default';
  };
}

export async function generateMetadata({ searchParams }: BrowsePageProps): Promise<Metadata> {
  const hasFilters = Boolean(searchParams.q || searchParams.lang || searchParams.genre || searchParams.sort);

  return {
    title: 'Browse Dramas',
    description: 'Explore our catalog of historical and cultural dramas with ad-free viewing.',
    alternates: {
      canonical: `${siteConfig.domain}/browse`,
    },
    // Staging environment strictly noindex
    robots: { index: false, follow: false },
  };
}

export default async function BrowsePage({ searchParams }: BrowsePageProps) {
  const query = searchParams.q || '';
  const language = searchParams.lang || 'all';
  const genre = searchParams.genre || 'all';
  const sort = searchParams.sort || 'default';

  const dramas = await supabaseCatalog.search({
    query,
    language,
    genre,
    sort: sort === 'default' ? undefined : sort,
  });

  return (
    <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12">
      <div className="mb-8">
        <h1 className="text-3xl sm:text-4xl font-bold font-display text-text-primary tracking-tight mb-2">
          Browse Catalog
        </h1>
        <p className="text-sm text-text-secondary max-w-2xl leading-relaxed">
          Filter through our preserved series directory by language, audio/subtitle rendition, and verified genre.
        </p>
      </div>

      <Suspense fallback={<div className="py-20 text-center text-text-tertiary">Loading catalog...</div>}>
        <BrowseClient
          initialDramas={dramas}
          currentQuery={query}
          currentLanguage={language}
          currentGenre={genre}
          currentSort={sort}
        />
      </Suspense>
    </div>
  );
}
