'use client';

import React, { useTransition } from 'react';
import { useRouter, useSearchParams } from 'next/navigation';
import { DramaCard } from '@/components/dramas/DramaCard';
import { Drama } from '@/types/catalog';
import { Filter, X, ArrowUpDown, Search } from 'lucide-react';

interface BrowseClientProps {
  initialDramas: Drama[];
  currentQuery: string;
  currentLanguage: string;
  currentGenre: string;
  currentSort: string;
}

export function BrowseClient({
  initialDramas,
  currentQuery,
  currentLanguage,
  currentGenre,
  currentSort,
}: BrowseClientProps) {
  const router = useRouter();
  const searchParams = useSearchParams();
  const [isPending, startTransition] = useTransition();

  const updateParam = (key: string, value: string) => {
    const params = new URLSearchParams(searchParams.toString());
    if (!value || value === 'all' || value === 'default') {
      params.delete(key);
    } else {
      params.set(key, value);
    }
    startTransition(() => {
      router.push(`/browse?${params.toString()}`);
    });
  };

  const clearAllFilters = () => {
    startTransition(() => {
      router.push('/browse');
    });
  };

  const hasActiveFilters = currentQuery || currentLanguage !== 'all' || currentGenre !== 'all' || currentSort !== 'default';

  return (
    <div className="space-y-6">
      {/* Filter and Search Bar */}
      <div className="bg-surface/60 border border-surface-border rounded-xl p-4 sm:p-5 flex flex-col gap-4">
        {/* Top Controls: Search Input */}
        <div className="relative">
          <Search className="absolute left-3.5 top-1/2 -translate-y-1/2 text-text-tertiary" size={18} />
          <input
            type="search"
            defaultValue={currentQuery}
            placeholder="Search by title or alias (e.g., Mehmed, Alp Arslan, Ertugrul)..."
            onChange={(e) => updateParam('q', e.target.value)}
            className="w-full pl-10 pr-4 py-2.5 bg-canvas border border-surface-border rounded-lg text-sm text-text-primary placeholder:text-text-tertiary focus:outline-none focus:border-amber-500"
          />
        </div>

        {/* Filter Pills / Selects */}
        <div className="flex flex-wrap items-center gap-3 pt-2 border-t border-surface-border text-xs sm:text-sm">
          {/* Language filter */}
          <div className="flex items-center gap-1.5">
            <span className="text-text-tertiary">Language:</span>
            <select
              value={currentLanguage}
              onChange={(e) => updateParam('lang', e.target.value)}
              className="bg-surface border border-surface-border text-text-primary rounded-md px-2.5 py-1.5 focus:outline-none focus:border-amber-500 cursor-pointer"
            >
              <option value="all">All Languages</option>
              <option value="Urdu">Urdu</option>
              <option value="English">English</option>
            </select>
          </div>

          {/* Genre filter */}
          <div className="flex items-center gap-1.5">
            <span className="text-text-tertiary">Genre:</span>
            <select
              value={currentGenre}
              onChange={(e) => updateParam('genre', e.target.value)}
              className="bg-surface border border-surface-border text-text-primary rounded-md px-2.5 py-1.5 focus:outline-none focus:border-amber-500 cursor-pointer"
            >
              <option value="all">All Genres</option>
              <option value="Historical">Historical</option>
              <option value="Action">Action</option>
              <option value="Military">Military</option>
              <option value="Crime">Crime</option>
            </select>
          </div>

          {/* Sort dropdown */}
          <div className="flex items-center gap-1.5">
            <ArrowUpDown size={14} className="text-text-tertiary" />
            <span className="text-text-tertiary">Sort:</span>
            <select
              value={currentSort}
              onChange={(e) => updateParam('sort', e.target.value)}
              className="bg-surface border border-surface-border text-text-primary rounded-md px-2.5 py-1.5 focus:outline-none focus:border-amber-500 cursor-pointer"
            >
              <option value="default">Featured / Pilot First</option>
              <option value="az">A to Z</option>
              <option value="za">Z to A</option>
              <option value="records">Most Episodes</option>
            </select>
          </div>

          {/* Clear Filters Button */}
          {hasActiveFilters && (
            <button
              onClick={clearAllFilters}
              className="ml-auto inline-flex items-center gap-1 px-3 py-1.5 rounded-md bg-surface-hover hover:bg-surface-active text-amber-400 text-xs font-medium border border-surface-border transition-colors"
            >
              <X size={14} />
              Reset Filters
            </button>
          )}
        </div>
      </div>

      {/* Results Header */}
      <div className="flex items-center justify-between text-xs text-text-secondary">
        <span>Showing {initialDramas.length} series</span>
        {isPending && <span className="text-amber-400 animate-pulse">Updating...</span>}
      </div>

      {/* Results Grid */}
      {initialDramas.length > 0 ? (
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-4 sm:gap-6">
          {initialDramas.map((drama) => (
            <DramaCard key={drama.id} drama={drama} />
          ))}
        </div>
      ) : (
        <div className="text-center py-16 bg-surface/30 rounded-xl border border-surface-border p-8">
          <Filter className="mx-auto w-12 h-12 text-text-muted mb-3" />
          <h3 className="text-lg font-medium text-text-primary mb-1">No dramas found</h3>
          <p className="text-sm text-text-secondary max-w-sm mx-auto mb-4">
            No series matched your active filter combination. Try adjusting or clearing your filters.
          </p>
          <button
            onClick={clearAllFilters}
            className="px-4 py-2 bg-amber-500 hover:bg-amber-600 text-stone-950 rounded-lg text-sm font-medium transition-colors"
          >
            Clear All Filters
          </button>
        </div>
      )}
    </div>
  );
}
