'use client';

import React from 'react';
import Link from 'next/link';
import { Play, Bookmark, Check } from 'lucide-react';
import { Drama } from '@/types/catalog';
import { legacyEpisodePath } from '@/lib/routes';
import { useUserPreferences } from '@/context/UserPreferencesContext';
import { SubscribeNotificationCard } from '@/components/notifications/SubscribeNotificationCard';

interface DramaActionsProps {
  drama: Drama;
  /** Clean URL of the first episode of the first season */
  startHref?: string;
  isPlayable: boolean;
  seasonName?: string;
}

export function DramaActions({ drama, startHref, isPlayable, seasonName }: DramaActionsProps) {
  const { isInMyList, addToMyList, removeFromMyList, history } = useUserPreferences();
  const saved = isInMyList(drama.id);

  // Check if user has an in-progress episode for this drama
  const dramaHistory = history.find(h => h.dramaId === drama.id && !h.completed);
  const resumeUrl = dramaHistory
    ? dramaHistory.url ?? legacyEpisodePath(drama.id, dramaHistory.episodeGroupId)
    : startHref ?? null;

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
      {isPlayable && resumeUrl ? (
        <Link href={resumeUrl} className="btn btn-play">
          <Play className="i f" />
          {dramaHistory ? `Resume (${dramaHistory.displayLabel})` : `Start watching${seasonName ? ` ${seasonName}` : ''}`}
        </Link>
      ) : isPlayable ? (
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

      <SubscribeNotificationCard dramaId={drama.id} dramaName={drama.name} variant="compact" />
    </div>
  );
}
