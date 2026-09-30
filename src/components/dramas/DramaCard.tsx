'use client';

import React from 'react';
import Link from 'next/link';
import { Bookmark, Check, Play, Film } from 'lucide-react';
import { Drama } from '@/types/catalog';
import { useUserPreferences } from '@/context/UserPreferencesContext';

interface DramaCardProps {
  drama: Drama;
  priority?: boolean;
}

export function DramaCard({ drama, priority = false }: DramaCardProps) {
  const { isInMyList, addToMyList, removeFromMyList } = useUserPreferences();
  const saved = isInMyList(drama.id);

  const toggleList = (e: React.MouseEvent) => {
    e.preventDefault();
    e.stopPropagation();
    if (saved) {
      removeFromMyList(drama.id);
    } else {
      addToMyList({
        id: drama.id,
        type: 'drama',
        dramaId: drama.id,
        title: drama.name,
        thumbnailUrl: drama.poster_url,
        addedAt: Date.now(),
      });
    }
  };

  return (
    <div className="group relative flex flex-col bg-surface/40 hover:bg-surface/70 border border-surface-border hover:border-surface-border-strong rounded-lg overflow-hidden transition-all duration-200">
      {/* Poster Image Container */}
      <Link href={`/drama/${drama.id}`} className="relative aspect-[2/3] w-full bg-surface-hover overflow-hidden block">
        {drama.poster_url ? (
          <img
            src={drama.poster_url}
            alt={drama.name}
            loading={priority ? 'eager' : 'lazy'}
            className="w-full h-full object-cover transition-transform duration-300 group-hover:scale-105"
          />
        ) : (
          <div className="w-full h-full flex flex-col items-center justify-center p-4 text-center bg-surface-hover text-text-tertiary">
            <Film size={32} className="mb-2 opacity-50" />
            <span className="text-xs font-medium">{drama.name}</span>
          </div>
        )}

        {/* Status Badge */}
        <div className="absolute top-2 left-2 flex flex-col gap-1">
          {drama.isPilot ? (
            <span className="px-2 py-0.5 rounded bg-amber-500 text-stone-950 font-bold text-[10px] uppercase tracking-wider shadow">
              Playable Pilot
            </span>
          ) : (
            <span className="px-2 py-0.5 rounded bg-stone-900/80 backdrop-blur-sm text-text-tertiary border border-surface-border font-medium text-[10px]">
              Preview Catalog
            </span>
          )}
        </div>

        {/* Quick Add to List Button */}
        <button
          onClick={toggleList}
          aria-label={saved ? 'Remove from My List' : 'Save to My List'}
          className={`absolute top-2 right-2 p-1.5 rounded-full backdrop-blur-md transition-all ${
            saved 
              ? 'bg-amber-500 text-stone-950' 
              : 'bg-black/60 hover:bg-black/80 text-white/80 hover:text-white'
          }`}
        >
          {saved ? <Check size={14} /> : <Bookmark size={14} />}
        </button>

        {/* Hover Action Overlay */}
        <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-transparent to-transparent opacity-0 group-hover:opacity-100 transition-opacity flex items-end p-3">
          <span className="inline-flex items-center gap-1.5 text-xs font-semibold text-amber-400">
            <Play size={13} className="fill-amber-400" />
            {drama.isPilot ? 'Watch Season' : 'View Catalog Details'}
          </span>
        </div>
      </Link>

      {/* Drama Info */}
      <div className="p-3 flex-1 flex flex-col justify-between">
        <div>
          <Link href={`/drama/${drama.id}`} className="block">
            <h3 className="font-medium text-sm text-text-primary hover:text-amber-400 transition-colors line-clamp-1">
              {drama.name}
            </h3>
          </Link>
          <p className="text-xs text-text-tertiary mt-1">
            {drama.video_records} records · {drama.collection_ids.length} {drama.collection_ids.length === 1 ? 'collection' : 'collections'}
          </p>
        </div>

        {/* Genres / Tags */}
        <div className="mt-2.5 flex flex-wrap gap-1">
          {drama.genres?.slice(0, 2).map(genre => (
            <span
              key={genre}
              className="text-[10px] px-1.5 py-0.5 rounded bg-surface border border-surface-border text-text-secondary"
            >
              {genre}
            </span>
          ))}
          {drama.languages?.[0] && (
            <span className="text-[10px] px-1.5 py-0.5 rounded bg-surface border border-surface-border text-amber-400/80">
              {drama.languages[0]}
            </span>
          )}
        </div>
      </div>
    </div>
  );
}
