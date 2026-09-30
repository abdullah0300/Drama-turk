'use client';

import React from 'react';
import Link from 'next/link';
import { Play, Bookmark, Check } from 'lucide-react';
import { Drama, EpisodeGroup } from '@/types/catalog';
import { useUserPreferences } from '@/context/UserPreferencesContext';

interface DramaActionsProps {
  drama: Drama;
  firstPlayableGroup?: EpisodeGroup;
  isPilot: boolean;
}

export function DramaActions({ drama, firstPlayableGroup, isPilot }: DramaActionsProps) {
  const { isInMyList, addToMyList, removeFromMyList, history } = useUserPreferences();
  const saved = isInMyList(drama.id);

  // Check if user has an in-progress episode for this drama
  const dramaHistory = history.find(h => h.dramaId === drama.id && !h.completed);
  const resumeUrl = dramaHistory
    ? `/drama/${drama.id}/watch/${dramaHistory.episodeGroupId}`
    : firstPlayableGroup
      ? `/drama/${drama.id}/watch/${firstPlayableGroup.id}`
      : null;

  const toggleList = () => {
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
    <div className="flex flex-wrap items-center gap-3 mt-6">
      {isPilot && resumeUrl ? (
        <Link
          href={resumeUrl}
          className="inline-flex items-center gap-2 px-6 py-3 rounded-lg bg-amber-500 hover:bg-amber-600 text-stone-950 font-semibold text-sm transition-transform active:scale-95 shadow-md"
        >
          <Play size={18} className="fill-stone-950" />
          {dramaHistory ? `Resume (${dramaHistory.displayLabel})` : 'Start Watching Season 2'}
        </Link>
      ) : isPilot ? (
        <button
          disabled
          className="inline-flex items-center gap-2 px-6 py-3 rounded-lg bg-surface text-text-muted text-sm font-medium cursor-not-allowed border border-surface-border"
        >
          Episodes Loading
        </button>
      ) : (
        <div className="px-4 py-2 rounded-lg bg-surface border border-surface-border text-xs text-text-tertiary">
          Preview Catalog: Episodes not published for stream in pilot release.
        </div>
      )}

      {/* Bookmark */}
      <button
        onClick={toggleList}
        className={`inline-flex items-center gap-2 px-4 py-3 rounded-lg border text-sm font-medium transition-colors ${
          saved
            ? 'bg-amber-500/10 border-amber-500/30 text-amber-400'
            : 'bg-surface/80 hover:bg-surface border-surface-border text-text-primary'
        }`}
      >
        {saved ? <Check size={16} /> : <Bookmark size={16} />}
        <span>{saved ? 'In My List' : 'Add to My List'}</span>
      </button>
    </div>
  );
}
