'use client';

import React from 'react';
import Link from 'next/link';
import { List, Play, Trash2, X } from 'lucide-react';
import { useUserPreferences } from '@/context/UserPreferencesContext';
import { Rail } from '@/components/sezon/Rail';
import { UserPlaybackProgress } from '@/types/catalog';

export interface StarterEpisode {
  dramaId: string;
  dramaTitle: string;
  groupId: string;
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
 * Continue Watching is always on the landing page. With history it leads with a large resume card;
 * without history it invites the viewer to start the pilot from its opening episodes.
 */
export function ContinueWatchingRow({ starters = [] }: { starters?: StarterEpisode[] }) {
  const { history, removeHistoryItem, clearHistory } = useUserPreferences();
  const items = (history || []).slice(0, 8);
  const hasHistory = items.length > 0;

  if (!hasHistory && starters.length === 0) return null;

  const left = items.reduce((a, h) => a + Math.max(0, h.duration - h.currentTime), 0);

  return (
    <Rail
      id="continue"
      className="cw"
      title="Continue Watching"
      sub={hasHistory ? `${items.length} in progress · saved privately on this device` : 'Nothing started yet'}
      aside={
        hasHistory ? (
          <span className="cw-head-r" style={{ display: 'inline-flex', alignItems: 'center', gap: 14 }}>
            <span><b>{Math.round(left / 60)}m</b> left across your episodes</span>
            <button onClick={clearHistory} style={{ display: 'inline-flex', alignItems: 'center', gap: 6 }}>
              <Trash2 size={13} /> Clear
            </button>
          </span>
        ) : null
      }
    >
      {hasHistory ? (
        <>
          {(() => {
            const first = items[0];
            const pct = pctOf(first);
            const url = `/drama/${first.dramaId}/watch/${first.episodeGroupId}`;
            return (
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
                    <span className="cw-line" style={{ ['--p' as string]: `${pct * 100}%` }}><i /></span>
                    <span>{formatTime(Math.max(0, first.duration - first.currentTime))} left</span>
                  </div>
                  <div className="cw-acts">
                    <Link href={url} className="btn btn-play"><Play className="i f" />Resume</Link>
                    <Link href={`/drama/${first.dramaId}/collection/${first.collectionId}`} className="btn btn-ghost"><List className="i" />Episodes</Link>
                  </div>
                </div>
              </div>
            );
          })()}
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
                <Link href={`/drama/${item.dramaId}/watch/${item.episodeGroupId}`} className="cw-body" aria-label={`Resume ${item.dramaTitle} ${item.displayLabel}`}>
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
        </>
      ) : (
        <>
          {(() => {
            const first = starters[0];
            return (
              <div className="cw-card cw-big" key={first.groupId}>
                {first.thumb ? <img src={first.thumb} alt="" /> : null}
                <span className="shade" />
                <div className="cw-big-in">
                  <div className="cw-kick"><span className="pulse" />Start where the story begins</div>
                  <h3>{first.dramaTitle}</h3>
                  <div className="sub">{first.label} · your progress is saved on this device</div>
                  <div className="cw-prog">
                    <span>0:00</span>
                    <span className="cw-line" style={{ ['--p' as string]: '0%' }}><i /></span>
                    <span>Not started</span>
                  </div>
                  <div className="cw-acts">
                    <Link href={`/drama/${first.dramaId}/watch/${first.groupId}`} className="btn btn-play"><Play className="i f" />Play {first.label}</Link>
                    <Link href={first.seasonHref} className="btn btn-ghost"><List className="i" />Episodes</Link>
                  </div>
                </div>
              </div>
            );
          })()}
          {starters.slice(1).map((s) => (
            <div className="cw-card cw-sm" key={s.groupId}>
              {s.thumb ? <img src={s.thumb} alt="" /> : null}
              <span className="shade" />
              <span className="cw-when">Up next</span>
              <Link href={`/drama/${s.dramaId}/watch/${s.groupId}`} className="cw-body" aria-label={`Play ${s.dramaTitle} ${s.label}`}>
                <span className="cw-txt">
                  <b>{s.label}</b>
                  <span>{s.dramaTitle} · <em>Not started</em></span>
                </span>
                <Ring pct={0} />
              </Link>
              <span className="cw-line" style={{ ['--p' as string]: '0%' }}><i /></span>
            </div>
          ))}
        </>
      )}
    </Rail>
  );
}
