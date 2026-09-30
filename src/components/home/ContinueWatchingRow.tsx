'use client';

import React from 'react';
import Link from 'next/link';
import { Play, X, Clock, Trash2 } from 'lucide-react';
import { useUserPreferences } from '@/context/UserPreferencesContext';

export function ContinueWatchingRow() {
  const { history, removeHistoryItem, clearHistory } = useUserPreferences();

  // If no history, do not render this section
  if (!history || history.length === 0) {
    return null;
  }

  const formatTime = (secs: number) => {
    if (!secs || isNaN(secs)) return '00:00';
    const m = Math.floor(secs / 60);
    const s = Math.floor(secs % 60);
    return `${m}:${s < 10 ? '0' : ''}${s}`;
  };

  return (
    <section className="py-8 border-b border-surface-border" aria-label="Continue Watching">
      <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center justify-between mb-4">
          <div>
            <h2 className="text-xl font-bold font-display text-text-primary">
              Continue Watching
            </h2>
            <p className="text-xs text-text-tertiary">
              Saved privately on this device
            </p>
          </div>

          <button
            onClick={clearHistory}
            className="text-xs text-text-tertiary hover:text-text-secondary flex items-center gap-1 transition-colors"
          >
            <Trash2 size={13} />
            Clear History
          </button>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          {history.slice(0, 4).map(item => {
            const percent = item.duration > 0 ? Math.min(100, Math.round((item.currentTime / item.duration) * 100)) : 0;
            const watchUrl = `/drama/${item.dramaId}/watch/${item.episodeGroupId}`;

            return (
              <div
                key={item.videoId}
                className="group relative bg-surface border border-surface-border hover:border-surface-border-strong rounded-lg overflow-hidden flex flex-col justify-between"
              >
                {/* Thumbnail & Progress */}
                <Link href={watchUrl} className="relative aspect-video w-full bg-surface-hover block overflow-hidden">
                  {item.thumbnailUrl ? (
                    <img
                      src={item.thumbnailUrl}
                      alt={item.episodeTitle}
                      className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-200"
                    />
                  ) : (
                    <div className="w-full h-full flex items-center justify-center bg-surface-hover text-text-tertiary">
                      <Play size={24} className="opacity-40" />
                    </div>
                  )}

                  {/* Play Overlay */}
                  <div className="absolute inset-0 bg-black/40 group-hover:bg-black/20 flex items-center justify-center transition-colors">
                    <div className="w-10 h-10 rounded-full bg-amber-500/90 flex items-center justify-center text-stone-950 group-hover:scale-110 transition-transform shadow-md">
                      <Play size={18} className="fill-stone-950 translate-x-0.5" />
                    </div>
                  </div>

                  {/* Remove Button */}
                  <button
                    onClick={(e) => {
                      e.preventDefault();
                      e.stopPropagation();
                      removeHistoryItem(item.videoId);
                    }}
                    aria-label="Remove from history"
                    className="absolute top-2 right-2 p-1 rounded-full bg-black/60 hover:bg-black/90 text-text-secondary hover:text-white transition-colors"
                  >
                    <X size={14} />
                  </button>

                  {/* Progress Bar */}
                  <div className="absolute bottom-0 inset-x-0 h-1.5 bg-black/60">
                    <div
                      className="h-full bg-amber-500"
                      style={{ width: `${percent}%` }}
                    />
                  </div>
                </Link>

                {/* Details */}
                <div className="p-3">
                  <span className="text-[10px] font-semibold text-amber-500 uppercase tracking-wider block mb-1">
                    {item.dramaTitle}
                  </span>
                  <Link href={watchUrl} className="block">
                    <h3 className="text-sm font-medium text-text-primary hover:text-amber-400 transition-colors line-clamp-1">
                      {item.displayLabel}
                    </h3>
                  </Link>
                  <div className="flex items-center justify-between text-[11px] text-text-tertiary mt-2">
                    <span className="flex items-center gap-1">
                      <Clock size={12} />
                      {formatTime(item.currentTime)} / {formatTime(item.duration)}
                    </span>
                    <span>{percent}% watched</span>
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
