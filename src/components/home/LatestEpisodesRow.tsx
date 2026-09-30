import React from 'react';
import Link from 'next/link';
import { Play, Sparkles } from 'lucide-react';
import { EpisodeGroup, VideoRecord, CatalogCollection, Drama } from '@/types/catalog';

interface PlayableEpisodeItem {
  group: EpisodeGroup;
  video: VideoRecord;
  collection: CatalogCollection;
  drama: Drama;
}

interface LatestEpisodesRowProps {
  episodes: PlayableEpisodeItem[];
}

export function LatestEpisodesRow({ episodes }: LatestEpisodesRowProps) {
  if (!episodes || episodes.length === 0) return null;

  return (
    <section className="py-10 border-b border-surface-border bg-canvas-subtle/50" aria-label="Latest Available Episodes">
      <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex flex-col sm:flex-row sm:items-end justify-between mb-6">
          <div>
            <div className="inline-flex items-center gap-1.5 text-xs text-amber-500 font-semibold uppercase tracking-wider mb-1">
              <Sparkles size={13} />
              Verified Playable
            </div>
            <h2 className="text-xl sm:text-2xl font-bold font-display text-text-primary">
              Latest Available Pilot Episodes
            </h2>
            <p className="text-xs text-text-tertiary mt-1">
              Full subtitled season releases with verified dual-language audio &amp; subtitle renditions.
            </p>
          </div>

          <Link
            href="/drama/mehmed-fetihler-sultani"
            className="text-xs text-amber-400 hover:text-amber-300 font-medium transition-colors mt-2 sm:mt-0 flex items-center gap-1"
          >
            View All 36 Episodes &rarr;
          </Link>
        </div>

        <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-4">
          {episodes.map(({ group, video, drama }) => {
            const watchUrl = `/drama/${drama.id}/watch/${group.id}`;
            const thumbnail = video.thumbnail_urls?.[0];

            return (
              <div
                key={group.id}
                className="group relative bg-surface border border-surface-border hover:border-surface-border-strong rounded-lg overflow-hidden flex flex-col justify-between transition-all duration-200"
              >
                <Link href={watchUrl} className="relative aspect-video w-full bg-surface-hover block overflow-hidden">
                  {thumbnail ? (
                    <img
                      src={thumbnail}
                      alt={group.display_label}
                      className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-200"
                    />
                  ) : (
                    <div className="w-full h-full flex items-center justify-center bg-surface-hover text-text-tertiary">
                      <Play size={20} className="opacity-40" />
                    </div>
                  )}

                  {/* Play badge on hover */}
                  <div className="absolute inset-0 bg-black/40 opacity-0 group-hover:opacity-100 flex items-center justify-center transition-opacity">
                    <div className="w-8 h-8 rounded-full bg-amber-500 text-stone-950 flex items-center justify-center">
                      <Play size={14} className="fill-stone-950 translate-x-0.5" />
                    </div>
                  </div>

                  <span className="absolute bottom-1 right-1 px-1.5 py-0.5 rounded bg-black/80 text-[10px] font-mono text-white/90">
                    S2
                  </span>
                </Link>

                <div className="p-2.5">
                  <span className="text-[10px] text-amber-400 font-semibold block truncate">
                    {drama.name}
                  </span>
                  <Link href={watchUrl} className="block mt-0.5">
                    <h3 className="text-xs font-medium text-text-primary hover:text-amber-400 transition-colors truncate">
                      {group.display_label}
                    </h3>
                  </Link>
                  <div className="flex items-center gap-1.5 text-[10px] text-text-tertiary mt-1">
                    <span>{video.languages?.[0] || 'Subtitled'}</span>
                    <span>•</span>
                    <span>{video.version}</span>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </section>
  );
}
