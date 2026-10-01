'use client';

import React from 'react';
import Link from 'next/link';
import { Play, Trash2, X } from 'lucide-react';
import { useUserPreferences } from '@/context/UserPreferencesContext';
import { Rail } from '@/components/sezon/Rail';

const formatTime = (secs: number) => {
  if (!secs || isNaN(secs)) return '0:00';
  const m = Math.floor(secs / 60);
  const s = Math.floor(secs % 60);
  return `${m}:${s < 10 ? '0' : ''}${s}`;
};

export function ContinueWatchingRow() {
  const { history, removeHistoryItem, clearHistory } = useUserPreferences();

  if (!history || history.length === 0) return null;

  const items = history.slice(0, 8);

  return (
    <Rail
      id="continue"
      className="cw"
      title="Continue Watching"
      sub="Saved privately on this device"
      aside={
        <button className="cw-head-r" onClick={clearHistory} style={{ display: 'inline-flex', alignItems: 'center', gap: 6 }}>
          <Trash2 size={13} /> Clear history
        </button>
      }
    >
      {items.map((item) => {
        const pct = item.duration > 0 ? Math.min(1, item.currentTime / item.duration) : 0;
        const watchUrl = `/drama/${item.dramaId}/watch/${item.episodeGroupId}`;
        return (
          <div className="cw-card cw-sm" key={item.videoId}>
            {item.thumbnailUrl ? <img src={item.thumbnailUrl} alt={item.episodeTitle} /> : null}
            <span className="shade" />
            <span className="cw-when">{item.dramaTitle}</span>
            <button
              className="cw-x"
              onClick={() => removeHistoryItem(item.videoId)}
              aria-label={`Remove ${item.displayLabel} from Continue Watching`}
            >
              <X className="i" />
            </button>
            <Link href={watchUrl} className="cw-body" aria-label={`Resume ${item.dramaTitle} ${item.displayLabel}`}>
              <span className="cw-txt">
                <b>{item.displayLabel}</b>
                <span>
                  {formatTime(item.currentTime)} / {formatTime(item.duration)} · <em>{Math.round(pct * 100)}% watched</em>
                </span>
              </span>
              <span className="ring">
                <svg className="r" viewBox="0 0 44 44">
                  <circle className="bg" cx="22" cy="22" r="19" />
                  <circle className="fg" cx="22" cy="22" r="19" style={{ ['--off' as string]: (119.4 * (1 - pct)).toFixed(1), strokeDashoffset: 119.4 * (1 - pct) }} />
                </svg>
                <Play className="i f" />
              </span>
            </Link>
            <span className="cw-line" style={{ ['--p' as string]: `${pct * 100}%` }}><i style={{ transform: 'none' }} /></span>
          </div>
        );
      })}
    </Rail>
  );
}
