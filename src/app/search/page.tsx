import React, { Suspense } from 'react';
import type { Metadata } from 'next';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { SearchClient } from './SearchClient';
import { siteConfig } from '@/config/site';

export const metadata: Metadata = {
  title: 'Search Dramas & Episodes',
  description: 'Search across titles, aliases, and episode records on Great Nation.',
  alternates: {
    canonical: `${siteConfig.domain}/search`,
  },
  // Staging environment strictly noindex
  robots: {
    index: false,
    follow: false,
  },
};

interface SearchPageProps {
  searchParams: {
    q?: string;
  };
}

export default async function SearchPage({ searchParams }: SearchPageProps) {
  const allDramas = await supabaseCatalog.getAllDramas();
  const initialQuery = searchParams.q || '';

  return (
    <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12">
      <div className="mb-6">
        <h1 className="text-3xl sm:text-4xl font-bold font-display text-text-primary tracking-tight mb-2">
          Search Catalog
        </h1>
        <p className="text-sm text-text-secondary max-w-xl">
          Quickly find series by primary title or known historical aliases.
        </p>
      </div>

      <Suspense fallback={<div className="py-12 text-center text-text-tertiary">Loading search...</div>}>
        <SearchClient allDramas={allDramas} initialQuery={initialQuery} />
      </Suspense>
    </div>
  );
}
