import React from 'react';
import Link from 'next/link';
import { Play } from 'lucide-react';
import { EpisodeGroup, VideoRecord, CatalogCollection, Drama } from '@/types/catalog';
import { Rail } from '@/components/sezon/Rail';

interface PlayableEpisodeItem {
  group: EpisodeGroup;
  video: VideoRecord;
  collection: CatalogCollection;
  drama: Drama;
}

export function LatestEpisodesRow({ episodes }: { episodes: PlayableEpisodeItem[] }) {
  if (!episodes || episodes.length === 0) return null;

  return (
    <Rail
      id="new"
      title="Latest Episodes"
      sub="Verified playable · subtitled renditions"
      headClassName="ne-head"
    >
      {episodes.map(({ group, video, drama, collection }, i) => {
        const watchUrl = `/drama/${drama.id}/watch/${group.id}`;
        const thumb = video.thumbnail_urls?.[0];
        const num = group.episode_number ?? group.bolum ?? '';
        return (
          <div className="ne" key={group.id}>
            {thumb ? <img src={thumb} alt="" /> : <div className="thumb-fallback" />}
            <span className="shade" />
            <Link href={watchUrl} className="ne-hit" aria-label={`Watch ${group.display_label}`} />
            <div className="ne-top">
              <span className={`badge${i === 0 ? ' live' : ''}`}>{i === 0 ? 'Latest' : 'Episode'}</span>
              <span className="ne-when">S{collection.reported_seasons?.[0] ?? 2}</span>
            </div>
            {num !== '' && <div className="ne-num"><small>E</small>{num}</div>}
            <div className="ne-bot">
              <h3>{drama.name}</h3>
              <div className="ne-sub">
                {group.display_label} · <em>{video.languages?.[0] || 'Subtitled'}</em>
              </div>
              <div className="ne-acts">
                <Link href={watchUrl} className="btn btn-play" style={{ position: 'relative', zIndex: 2 }}>
                  <Play className="i f" />Watch
                </Link>
              </div>
            </div>
          </div>
        );
      })}
    </Rail>
  );
}
