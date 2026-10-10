'use client';

import React from 'react';
import Link from 'next/link';
import { List, Play, Trash2, X } from 'lucide-react';
import { useUserPreferences } from '@/context/UserPreferencesContext';
import { Rail } from '@/components/sezon/Rail';
import { UserPlaybackProgress } from '@/types/catalog';
import { legacyEpisodePath, seasonPathFromEpisodePath } from '@/lib/routes';

export interface StarterEpisode {
  dramaId: string;
  dramaTitle: string;
  groupId: string;
  href: string;
  label: string;
  thumb?: string;
  seasonHref: string;
}

const formatTime = (secs: number) => {
  if (!secs || isNaN(secs)) return '0:00';
  const m = Math.floor(secs / 60);
  const s = Math.floor(secs % 60);
  return `${m}:${s < 10 ? '0' : ''}${s}`;
};

const hrefOf = (item: UserPlaybackProgress) => item.url ?? legacyEpisodePath(item.dramaId, item.episodeGroupId);

const pctOf = (item: UserPlaybackProgress) =>
  item.duration > 0 ? Math.min(1, item.currentTime / item.duration) : 0;

function Ring({ pct }: { pct: number }) {
  return (
    <span className="ring">
      <svg className="r" viewBox="0 0 44 44">
        <circle className="bg" cx="22" cy="22" r="19" />
        <circle className="fg" cx="22" cy="22" r="19" style={{ ['--off' as string]: (119.4 * (1 - pct)).toFixed(1) }} />
      </svg>
      <Play className="i f" />
    </span>
  );
}

/**
 * Continue Watching appears on the landing page only when the viewer has active playback history.
 * If nothing has been watched yet, the section is completely hidden (industry standard).
 */
export function ContinueWatchingRow() {
  const { history, removeHistoryItem, clearHistory } = useUserPreferences();
  const items = (history || []).slice(0, 8);
  const hasHistory = items.length > 0;

  if (!hasHistory) return null;

  const left = items.reduce((a, h) => a + Math.max(0, h.duration - h.currentTime), 0);
  const first = items[0];
  const firstPct = pctOf(first);
  const firstUrl = hrefOf(first);

  return (
    <Rail
      id="continue"
      className="cw"
      title="Continue Watching"
      sub={`${items.length} in progress · saved privately on this device`}
      aside={
        <span className="cw-head-r" style={{ display: 'inline-flex', alignItems: 'center', gap: 14 }}>
          <span><b>{Math.round(left / 60)}m</b> left across your episodes</span>
          <button onClick={clearHistory} style={{ display: 'inline-flex', alignItems: 'center', gap: 6 }}>
            <Trash2 size={13} /> Clear
          </button>
        </span>
      }
    >
      <div className="cw-card cw-big" key={first.videoId}>
        {first.thumbnailUrl ? <img src={first.thumbnailUrl} alt={first.episodeTitle} /> : null}
        <span className="shade" />
        <button className="cw-x" onClick={() => removeHistoryItem(first.videoId)} aria-label={`Remove ${first.displayLabel} from Continue Watching`}>
          <X className="i" />
        </button>
        <div className="cw-big-in">
          <div className="cw-kick"><span className="pulse" />Pick up where you left off</div>
          <h3>{first.dramaTitle}</h3>
          <div className="sub">{first.displayLabel}{first.language ? ` · ${first.language}` : ''}</div>
          <div className="cw-prog">
            <span>{formatTime(first.currentTime)}</span>
            <span className="cw-line" style={{ ['--p' as string]: `${firstPct * 100}%` }}><i /></span>
            <span>{formatTime(Math.max(0, first.duration - first.currentTime))} left</span>
          </div>
          <div className="cw-acts">
            <Link href={firstUrl} className="btn btn-play"><Play className="i f" />Resume</Link>
            <Link href={first.url ? seasonPathFromEpisodePath(first.url) : `/drama/${first.dramaId}/collection/${first.collectionId}`} className="btn btn-ghost"><List className="i" />Episodes</Link>
          </div>
        </div>
      </div>
      {items.slice(1).map((item) => {
        const pct = pctOf(item);
        return (
          <div className="cw-card cw-sm" key={item.videoId}>
            {item.thumbnailUrl ? <img src={item.thumbnailUrl} alt={item.episodeTitle} /> : null}
            <span className="shade" />
            <span className="cw-when">{item.dramaTitle}</span>
            <button className="cw-x" onClick={() => removeHistoryItem(item.videoId)} aria-label={`Remove ${item.displayLabel} from Continue Watching`}>
              <X className="i" />
            </button>
            <Link href={hrefOf(item)} className="cw-body" aria-label={`Resume ${item.dramaTitle} ${item.displayLabel}`}>
              <span className="cw-txt">
                <b>{item.displayLabel}</b>
                <span>{formatTime(item.currentTime)} / {formatTime(item.duration)} · <em>{Math.round(pct * 100)}% watched</em></span>
              </span>
              <Ring pct={pct} />
            </Link>
            <span className="cw-line" style={{ ['--p' as string]: `${pct * 100}%` }}><i /></span>
          </div>
        );
      })}
    </Rail>
  );
}
