'use client';

import React from 'react';
import Link from 'next/link';
import { Check, Play, Plus } from 'lucide-react';
import { Drama, isDramaPlayable } from '@/types/catalog';
import { useUserPreferences } from '@/context/UserPreferencesContext';

interface DramaCardProps {
  drama: Drama;
  priority?: boolean;
  /** true (default): fills its grid cell. false: fixed rail width. */
  fluid?: boolean;
}

export function DramaCard({ drama, priority = false, fluid = true }: DramaCardProps) {
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

  const collections = drama.collection_ids.length;
  const playable = isDramaPlayable(drama);

  return (
    <Link
      href={`/drama/${drama.id}`}
      className="card card-p"
      style={fluid ? { width: 'auto' } : undefined}
    >
      <div className="media">
        {drama.poster_url ? (
          <img src={drama.poster_url} alt={drama.name} loading={priority ? 'eager' : 'lazy'} />
        ) : (
          <div className="thumb-fallback" />
        )}
        <span className="shade" />
        <span className={`badge${playable ? '' : ' dark'}`}>
          {drama.isPilot ? 'Featured' : playable ? 'Watch now' : 'Preview Catalog'}
        </span>
        <button
          type="button"
          onClick={toggleList}
          aria-label={saved ? 'Remove from My List' : 'Save to My List'}
          className="icon-btn"
          style={{
            position: 'absolute', top: 6, right: 6, zIndex: 2, width: 34, height: 34,
            background: saved ? 'var(--gold)' : 'rgba(0,0,0,.6)',
            color: saved ? 'var(--on-gold)' : '#fff',
            backdropFilter: 'blur(6px)',
          }}
        >
          {saved ? <Check className="i" style={{ width: 16, height: 16 }} /> : <Plus className="i" style={{ width: 16, height: 16 }} />}
        </button>
        <span className="c-play"><Play className="i f" /></span>
        <span className="c-title">{drama.name}</span>
      </div>
      <div className="c-info">
        <b>{drama.genres?.[0] || (playable ? 'Watch now' : 'Catalog')}</b>
        <span>{collections} {collections === 1 ? 'season' : 'seasons'} · {drama.video_records} records</span>
      </div>
    </Link>
  );
}
