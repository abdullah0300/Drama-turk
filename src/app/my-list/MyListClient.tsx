'use client';

import { legacyEpisodePath } from '@/lib/routes';

import React, { useState } from 'react';
import Link from 'next/link';
import { Bookmark, Clock, Trash2, X, Play, Settings, HardDrive, Check } from 'lucide-react';
import { useUserPreferences } from '@/context/UserPreferencesContext';

export function MyListClient() {
  const { 
    myList, 
    removeFromMyList, 
    history, 
    removeHistoryItem, 
    clearHistory, 
    preferences, 
    setAutoplayNext 
  } = useUserPreferences();

  const [activeTab, setActiveTab] = useState<'saved' | 'history'>('saved');

  const formatTime = (secs: number) => {
    if (!secs || isNaN(secs)) return '00:00';
    const m = Math.floor(secs / 60);
    const s = Math.floor(secs % 60);
    return `${m}:${s < 10 ? '0' : ''}${s}`;
  };

  return (
    <div className="space-y-8">
      {/* Device Storage Privacy Banner */}
      <div className="bg-surface/50 border border-surface-border rounded-xl p-4 sm:p-5 flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
        <div className="flex items-center gap-3">
          <div className="p-2.5 rounded-lg bg-amber-500/10 border border-amber-500/20 text-amber-400">
            <HardDrive size={20} />
          </div>
          <div>
            <h2 className="text-sm font-semibold text-text-primary">
              Private Device Storage
            </h2>
            <p className="text-xs text-text-secondary leading-relaxed">
              Your bookmarks, watch history, and playback preferences are saved securely on this browser. No account registration or external tracking required.
            </p>
          </div>
        </div>

        {/* Autoplay Preference Toggle */}
        <div className="flex items-center gap-3 bg-surface px-3 py-2 rounded-lg border border-surface-border self-stretch sm:self-auto justify-between sm:justify-start">
          <span className="text-xs text-text-secondary">Autoplay next episode:</span>
          <button
            onClick={() => setAutoplayNext(!preferences.autoplayNext)}
            aria-pressed={preferences.autoplayNext}
            className={`w-10 h-5 rounded-full p-0.5 transition-colors ${
              preferences.autoplayNext ? 'bg-amber-500' : 'bg-surface-border-strong'
            }`}
          >
            <div
              className={`w-4 h-4 rounded-full bg-white transition-transform ${
                preferences.autoplayNext ? 'translate-x-5' : 'translate-x-0'
              }`}
            />
          </button>
        </div>
      </div>

      {/* Tabs */}
      <div className="flex items-center justify-between border-b border-surface-border">
        <div className="flex gap-6">
          <button
            onClick={() => setActiveTab('saved')}
            className={`pb-3 text-sm font-medium transition-colors border-b-2 flex items-center gap-2 ${
              activeTab === 'saved'
                ? 'border-amber-500 text-amber-400'
                : 'border-transparent text-text-secondary hover:text-text-primary'
            }`}
          >
            <Bookmark size={16} />
            Saved Dramas ({myList.length})
          </button>

          <button
            onClick={() => setActiveTab('history')}
            className={`pb-3 text-sm font-medium transition-colors border-b-2 flex items-center gap-2 ${
              activeTab === 'history'
                ? 'border-amber-500 text-amber-400'
                : 'border-transparent text-text-secondary hover:text-text-primary'
            }`}
          >
            <Clock size={16} />
            Watch History ({history.length})
          </button>
        </div>

        {activeTab === 'history' && history.length > 0 && (
          <button
            onClick={clearHistory}
            className="text-xs text-text-tertiary hover:text-text-secondary flex items-center gap-1 transition-colors pb-3"
          >
            <Trash2 size={13} />
            Clear History
          </button>
        )}
      </div>

      {/* Tab 1: Saved Dramas */}
      {activeTab === 'saved' && (
        <div>
          {myList.length > 0 ? (
            <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-4">
              {myList.map(item => (
                <div
                  key={item.id}
                  className="group relative bg-surface border border-surface-border rounded-lg overflow-hidden flex flex-col justify-between"
                >
                  <Link href={`/drama/${item.dramaId}`} className="relative aspect-[2/3] w-full bg-surface-hover block overflow-hidden">
                    {item.thumbnailUrl ? (
                      <img
                        src={item.thumbnailUrl}
                        alt={item.title}
                        className="w-full h-full object-cover group-hover:scale-105 transition-transform"
                      />
                    ) : (
                      <div className="w-full h-full flex items-center justify-center text-text-tertiary">
                        <Bookmark size={24} className="opacity-40" />
                      </div>
                    )}

                    {/* Remove button */}
                    <button
                      onClick={(e) => {
                        e.preventDefault();
                        e.stopPropagation();
                        removeFromMyList(item.id);
                      }}
                      aria-label="Remove from My List"
                      className="absolute top-2 right-2 p-1.5 rounded-full bg-black/70 hover:bg-black text-white/80 hover:text-white transition-colors"
                    >
                      <X size={14} />
                    </button>
                  </Link>

                  <div className="p-3">
                    <Link href={`/drama/${item.dramaId}`}>
                      <h3 className="text-xs font-semibold text-text-primary hover:text-amber-400 transition-colors line-clamp-1">
                        {item.title}
                      </h3>
                    </Link>
                  </div>
                </div>
              ))}
            </div>
          ) : (
            <div className="text-center py-16 bg-surface/30 rounded-xl border border-surface-border p-8">
              <Bookmark className="mx-auto w-12 h-12 text-text-muted mb-3" />
              <h3 className="text-lg font-medium text-text-primary mb-1">Your list is empty</h3>
              <p className="text-sm text-text-secondary max-w-sm mx-auto mb-6">
                Explore our directory and bookmark series you want to watch later.
              </p>
              <Link
                href="/browse"
                className="px-5 py-2.5 bg-amber-500 hover:bg-amber-600 text-stone-950 rounded-lg text-sm font-semibold transition-colors"
              >
                Browse Dramas
              </Link>
            </div>
          )}
        </div>
      )}

      {/* Tab 2: Watch History */}
      {activeTab === 'history' && (
        <div>
          {history.length > 0 ? (
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
              {history.map(item => {
                const percent = item.duration > 0 ? Math.min(100, Math.round((item.currentTime / item.duration) * 100)) : 0;
                const watchUrl = item.url ?? legacyEpisodePath(item.dramaId, item.episodeGroupId);

                return (
                  <div
                    key={item.videoId}
                    className="group bg-surface border border-surface-border rounded-lg overflow-hidden flex flex-col justify-between"
                  >
                    <Link href={watchUrl} className="relative aspect-video w-full bg-surface-hover block overflow-hidden">
                      {item.thumbnailUrl ? (
                        <img
                          src={item.thumbnailUrl}
                          alt={item.episodeTitle}
                          className="w-full h-full object-cover group-hover:scale-105 transition-transform"
                        />
                      ) : (
                        <div className="w-full h-full flex items-center justify-center text-text-tertiary">
                          <Play size={24} className="opacity-40" />
                        </div>
                      )}

                      <div className="absolute inset-0 bg-black/40 group-hover:bg-black/20 flex items-center justify-center transition-colors">
                        <div className="w-9 h-9 rounded-full bg-amber-500 text-stone-950 flex items-center justify-center">
                          <Play size={16} className="fill-stone-950 translate-x-0.5" />
                        </div>
                      </div>

                      {/* Remove from history button */}
                      <button
                        onClick={(e) => {
                          e.preventDefault();
                          e.stopPropagation();
                          removeHistoryItem(item.videoId);
                        }}
                        aria-label="Remove from history"
                        className="absolute top-2 right-2 p-1.5 rounded-full bg-black/70 hover:bg-black text-white/80 hover:text-white transition-colors"
                      >
                        <X size={14} />
                      </button>

                      {/* Progress bar */}
                      <div className="absolute bottom-0 inset-x-0 h-1.5 bg-black/60">
                        <div className="h-full bg-amber-500" style={{ width: `${percent}%` }} />
                      </div>
                    </Link>

                    <div className="p-3">
                      <span className="text-[10px] font-semibold text-amber-500 uppercase tracking-wider block mb-1">
                        {item.dramaTitle}
                      </span>
                      <Link href={watchUrl}>
                        <h4 className="text-sm font-medium text-text-primary hover:text-amber-400 transition-colors line-clamp-1">
                          {item.displayLabel}
                        </h4>
                      </Link>
                      <div className="flex items-center justify-between text-xs text-text-tertiary mt-2">
                        <span>{formatTime(item.currentTime)} / {formatTime(item.duration)}</span>
                        <span>{item.completed ? 'Completed' : `${percent}%`}</span>
                      </div>
                    </div>
                  </div>
                );
              })}
            </div>
          ) : (
            <div className="text-center py-16 bg-surface/30 rounded-xl border border-surface-border p-8">
              <Clock className="mx-auto w-12 h-12 text-text-muted mb-3" />
              <h3 className="text-lg font-medium text-text-primary mb-1">No watch history yet</h3>
              <p className="text-sm text-text-secondary max-w-sm mx-auto mb-6">
                Episodes you watch will appear here with your exact resume timestamp saved.
              </p>
              <Link
                href="/drama/mehmed-fetihler-sultani"
                className="px-5 py-2.5 bg-amber-500 hover:bg-amber-600 text-stone-950 rounded-lg text-sm font-semibold transition-colors"
              >
                Watch Pilot Episode
              </Link>
            </div>
          )}
        </div>
      )}
    </div>
  );
}
