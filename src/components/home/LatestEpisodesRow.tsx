'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { Check, Play, Plus } from 'lucide-react';
import { useUserPreferences } from '@/context/UserPreferencesContext';
import { EpisodeGroup, VideoRecord, CatalogCollection, Drama } from '@/types/catalog';
import { Rail } from '@/components/sezon/Rail';

interface PlayableEpisodeItem {
  group: EpisodeGroup;
  video: VideoRecord;
  collection: CatalogCollection;
  drama: Drama;
  href: string;
}

export function LatestEpisodesRow({ episodes }: { episodes: PlayableEpisodeItem[] }) {
  const { isInMyList, addToMyList, removeFromMyList } = useUserPreferences();
  const [lang, setLang] = useState('All');
  if (!episodes || episodes.length === 0) return null;

  const langOf = (e: PlayableEpisodeItem) => e.video.languages?.[0] || 'Subtitled';
  const langs = ['All', ...Array.from(new Set(episodes.map(langOf)))];
  const shown = episodes.filter((e) => lang === 'All' || langOf(e) === lang);

  return (
    <Rail
      id="new"
      title="Recent Episodes by Drama"
      sub="Latest available episode picks, ordered by known source publication date"
      headClassName="ne-head"
      aside={
        langs.length > 2 ? (
          <div className="chips">
            {langs.map((k) => (
              <button key={k} className={`chip${k === lang ? ' on' : ''}`} onClick={() => setLang(k)}>
                {k}{k === 'All' ? '' : <i>{episodes.filter((e) => langOf(e) === k).length}</i>}
              </button>
            ))}
          </div>
        ) : null
      }
    >
      {shown.map(({ group, video, drama, collection, href }, i) => {
        const watchUrl = href;
        const thumb = video.thumbnail_urls?.[0];
        const num = group.episode_number ?? group.bolum ?? '';
        return (
          <div className="ne" key={group.id}>
            {thumb ? <img src={thumb} alt="" /> : <div className="thumb-fallback" />}
            <span className="shade" />
            <Link href={watchUrl} className="ne-hit" aria-label={`Watch ${group.display_label}`} />
            <div className="ne-top">
              <span className={`badge${i === 0 ? ' live' : ''}`}>Latest episode</span>
              <span className="ne-when">S{collection.reported_seasons?.[0] ?? 1}{collection.version === 'dubbed' ? ' · Dubbed' : ''}</span>
            </div>
            {num !== '' && <div className="ne-num"><small>E</small>{num}</div>}
            <div className="ne-bot">
              <h3>{drama.name}</h3>
              <div className="ne-sub">
                {group.display_label} · <em>{video.languages?.[0] || 'Subtitled'}</em>
              </div>
              {video.upload_date && <time className="ne-sub" dateTime={video.upload_date}>Source release: {video.upload_date.slice(0, 10)}</time>}
              <div className="ne-acts">
                <Link href={watchUrl} className="btn btn-play" style={{ position: 'relative', zIndex: 2 }}>
                  <Play className="i f" />Watch
                </Link>
                <button
                  className="btn btn-round btn-ghost"
                  style={{ position: 'relative', zIndex: 2 }}
                  aria-label={isInMyList(drama.id) ? 'Remove from My List' : 'Add to My List'}
                  onClick={() =>
                    isInMyList(drama.id)
                      ? removeFromMyList(drama.id)
                      : addToMyList({ id: drama.id, type: 'drama', dramaId: drama.id, title: drama.name, thumbnailUrl: drama.poster_url, addedAt: Date.now() })
                  }
                >
                  {isInMyList(drama.id) ? <Check className="i" /> : <Plus className="i" />}
                </button>
              </div>
            </div>
          </div>
        );
      })}
    </Rail>
  );
}
