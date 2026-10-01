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
    <div className="actions">
      {isPilot && resumeUrl ? (
        <Link href={resumeUrl} className="btn btn-play">
          <Play className="i f" />
          {dramaHistory ? `Resume (${dramaHistory.displayLabel})` : 'Start watching Season 2'}
        </Link>
      ) : isPilot ? (
        <span className="btn btn-ghost" aria-disabled="true">Episodes loading</span>
      ) : (
        <span className="btn btn-ghost" aria-disabled="true">Preview catalog · not published for streaming</span>
      )}

      <button
        onClick={toggleList}
        className="btn btn-round"
        aria-label={saved ? 'Remove from My List' : 'Add to My List'}
        title={saved ? 'In My List' : 'Add to My List'}
      >
        {saved ? <Check className="i" /> : <Bookmark className="i" />}
      </button>
    </div>
  );
}
