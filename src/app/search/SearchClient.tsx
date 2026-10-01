'use client';

import React, { useState, useTransition, useMemo } from 'react';
import Link from 'next/link';
import { Search, X, Film, Sparkles, Play } from 'lucide-react';
import { Drama, isDramaPlayable } from '@/types/catalog';

interface SearchClientProps {
  allDramas: Drama[];
  initialQuery?: string;
}

const POPULAR_SUGGESTIONS = [
  'Mehmed',
  'Alparslan',
  'Ertugrul',
  'Kurulus Osman',
  'Barbaroslar',
  'Salahuddin Ayyubi',
  'The Pit (Cukur)',
  'Teskilat',
];

export function SearchClient({ allDramas, initialQuery = '' }: SearchClientProps) {
  const [query, setQuery] = useState(initialQuery);
  const [isPending, startTransition] = useTransition();

  // Accent & case normalization
  const normalize = (str: string) =>
    str.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, '');

  const filteredDramas = useMemo(() => {
    const q = normalize(query.trim());
    if (!q) return allDramas;

    return allDramas.filter(drama => {
      if (normalize(drama.name).includes(q)) return true;
      if (drama.source_names?.some(sn => normalize(sn).includes(q))) return true;
      if (drama.id.includes(q)) return true;
      return false;
    });
  }, [allDramas, query]);

  const handleSuggestionClick = (suggestion: string) => {
    setQuery(suggestion);
  };

  const handleClear = () => {
    setQuery('');
  };

  return (
    <div className="space-y-8">
      {/* Search Input Box */}
      <div className="relative max-w-2xl">
        <Search className="absolute left-4 top-1/2 -translate-y-1/2 text-text-tertiary" size={20} />
        <input
          type="search"
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          placeholder="Search dramas by title, historical alias, or keywords..."
          autoFocus
          className="w-full pl-12 pr-10 py-3.5 bg-surface border border-surface-border hover:border-surface-border-strong focus:border-amber-500 rounded-xl text-base text-text-primary placeholder:text-text-tertiary shadow-sm focus:outline-none transition-colors"
        />
        {query && (
          <button
            onClick={handleClear}
            aria-label="Clear search"
            className="absolute right-3.5 top-1/2 -translate-y-1/2 p-1 rounded-full text-text-tertiary hover:text-text-primary hover:bg-surface-hover transition-colors"
          >
            <X size={16} />
          </button>
        )}
      </div>

      {/* Suggestion Chips */}
      <div>
        <div className="flex items-center gap-1.5 text-xs text-text-tertiary mb-2 font-medium">
          <Sparkles size={13} className="text-amber-500" />
          Quick Searches:
        </div>
        <div className="flex flex-wrap gap-2">
          {POPULAR_SUGGESTIONS.map((sug) => (
            <button
              key={sug}
              onClick={() => handleSuggestionClick(sug)}
              className={`px-3 py-1.5 rounded-full text-xs transition-colors border ${
                query.toLowerCase() === sug.toLowerCase()
                  ? 'bg-amber-500 text-stone-950 font-semibold border-amber-500'
                  : 'bg-surface/60 hover:bg-surface border-surface-border text-text-secondary hover:text-text-primary'
              }`}
            >
              {sug}
            </button>
          ))}
        </div>
      </div>

      {/* Search Results */}
      <div>
        <div className="flex items-center justify-between text-xs text-text-tertiary mb-4">
          <span>
            {query.trim()
              ? `Found ${filteredDramas.length} result${filteredDramas.length === 1 ? '' : 's'} for "${query}"`
              : `Browse all ${allDramas.length} series in catalog`}
          </span>
        </div>

        {filteredDramas.length > 0 ? (
          <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
            {filteredDramas.map((drama) => (
              <Link
                key={drama.id}
                href={`/drama/${drama.id}`}
                className="group flex gap-4 p-3 bg-surface/40 hover:bg-surface border border-surface-border hover:border-amber-500/40 rounded-lg transition-all"
              >
                {/* Thumbnail */}
                <div className="relative w-20 h-28 flex-shrink-0 bg-surface-hover rounded overflow-hidden">
                  {drama.poster_url ? (
                    <img
                      src={drama.poster_url}
                      alt={drama.name}
                      className="w-full h-full object-cover group-hover:scale-105 transition-transform"
                    />
                  ) : (
                    <div className="w-full h-full flex items-center justify-center text-text-tertiary">
                      <Film size={20} />
                    </div>
                  )}
                  {drama.isPilot && (
                    <span className="absolute top-1 left-1 px-1 text-[8px] font-bold rounded bg-amber-500 text-stone-950 uppercase">
                      Pilot
                    </span>
                  )}
                </div>

                {/* Info */}
                <div className="flex flex-col justify-between flex-1 min-w-0">
                  <div>
                    <h3 className="text-sm font-medium text-text-primary group-hover:text-amber-400 transition-colors line-clamp-2">
                      {drama.name}
                    </h3>
                    <p className="text-xs text-text-tertiary mt-1">
                      {drama.video_records} records · {drama.collection_ids.length} {drama.collection_ids.length === 1 ? 'season' : 'seasons'}
                    </p>
                  </div>

                  <div className="flex items-center gap-1.5 text-xs text-amber-500 font-medium mt-2">
                    <Play size={12} className="fill-amber-500" />
                    <span>{isDramaPlayable(drama) ? 'Watch now' : 'View Details'}</span>
                  </div>
                </div>
              </Link>
            ))}
          </div>
        ) : (
          <div className="text-center py-16 bg-surface/30 rounded-xl border border-surface-border p-8">
            <Film className="mx-auto w-12 h-12 text-text-muted mb-3" />
            <h3 className="text-lg font-medium text-text-primary mb-1">No matching titles</h3>
            <p className="text-sm text-text-secondary max-w-sm mx-auto mb-4">
              We couldn’t find any dramas matching &ldquo;{query}&rdquo;. Check spelling or try one of the popular search terms above.
            </p>
            <button
              onClick={handleClear}
              className="px-4 py-2 bg-surface-hover hover:bg-surface-active text-text-primary border border-surface-border rounded-lg text-sm transition-colors"
            >
              Reset Search
            </button>
          </div>
        )}
      </div>
    </div>
  );
}
