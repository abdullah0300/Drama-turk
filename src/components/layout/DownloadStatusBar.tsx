'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { 
  Loader2, 
  Check, 
  X, 
  Clock3, 
  ArrowRight 
} from 'lucide-react';
import { useOfflineDownloads } from '@/context/OfflineDownloadsContext';

export function DownloadStatusBar() {
  const { 
    currentDownloadingItem, 
    queuedItems, 
    activeDownloads, 
    cancelDownload 
  } = useOfflineDownloads();

  const [completedNotice, setCompletedNotice] = useState<string | null>(null);

  const activeProgress = currentDownloadingItem 
    ? activeDownloads[currentDownloadingItem.episodeGroupId] 
    : null;

  const percent = activeProgress?.percent ?? 0;

  // When all downloads complete, show a brief success notice
  const prevDownloadingRef = React.useRef(currentDownloadingItem);
  useEffect(() => {
    if (prevDownloadingRef.current && !currentDownloadingItem && queuedItems.length === 0) {
      setCompletedNotice(prevDownloadingRef.current.displayLabel);
      const timer = setTimeout(() => setCompletedNotice(null), 3500);
      return () => clearTimeout(timer);
    }
    prevDownloadingRef.current = currentDownloadingItem;
  }, [currentDownloadingItem, queuedItems.length]);

  // Don't render anything if nothing is downloading or queued and no notice
  if (!currentDownloadingItem && queuedItems.length === 0 && !completedNotice) {
    return null;
  }

  // 1. Sleek Completed Notice Pill
  if (completedNotice && !currentDownloadingItem) {
    return (
      <div className="fixed bottom-4 sm:bottom-6 right-4 sm:right-6 z-50 animate-in fade-in slide-in-from-bottom-3 duration-300">
        <div className="flex items-center gap-2 px-3.5 py-2 rounded-full bg-zinc-950/95 backdrop-blur-xl border border-emerald-500/40 text-emerald-300 shadow-2xl text-xs font-medium">
          <div className="w-5 h-5 rounded-full bg-emerald-500/20 flex items-center justify-center text-emerald-400 shrink-0">
            <Check size={12} className="stroke-[2.5]" />
          </div>
          <span className="truncate max-w-[160px] sm:max-w-[220px]">
            <strong>{completedNotice}</strong> saved
          </span>
          <Link
            href="/downloads"
            className="ml-1 text-amber-400 hover:text-amber-300 font-semibold text-xs flex items-center gap-0.5"
          >
            <span>View</span>
            <ArrowRight size={11} />
          </Link>
        </div>
      </div>
    );
  }

  if (!currentDownloadingItem) return null;

  // 2. Sleek & Small Floating Bottom Bar
  return (
    <div className="fixed bottom-4 sm:bottom-6 right-4 sm:right-6 z-50 animate-in fade-in slide-in-from-bottom-3 duration-300 max-w-[94vw] sm:max-w-md">
      <div className="flex items-center gap-2.5 sm:gap-3 rounded-full bg-zinc-950/95 backdrop-blur-xl border border-zinc-800 hover:border-zinc-700 shadow-2xl px-3 sm:px-4 py-2 text-left transition-all">
        {/* Animated Icon */}
        <div className="w-6 h-6 rounded-full bg-amber-500/15 border border-amber-500/30 text-amber-400 flex items-center justify-center shrink-0">
          <Loader2 size={13} className="animate-spin" />
        </div>

        {/* Title */}
        <div className="min-w-0 max-w-[110px] sm:max-w-[160px]">
          <span className="text-[10px] text-zinc-400 truncate block leading-tight">
            {currentDownloadingItem.dramaTitle}
          </span>
          <strong className="text-xs text-white truncate block leading-tight font-semibold">
            {currentDownloadingItem.displayLabel}
          </strong>
        </div>

        {/* Progress Bar & Percent */}
        <div className="flex items-center gap-2 shrink-0">
          <div className="w-12 sm:w-16 h-1.5 rounded-full bg-zinc-800 overflow-hidden">
            <div
              className="h-full bg-amber-400 rounded-full transition-all duration-200"
              style={{ width: `${percent}%` }}
            />
          </div>
          <span className="text-xs font-mono font-bold text-amber-400 w-7 text-right">
            {percent}%
          </span>
        </div>

        {/* Queue Count Badge */}
        {queuedItems.length > 0 && (
          <span
            title={`${queuedItems.length} more in queue`}
            className="text-[10px] px-1.5 py-0.5 rounded-full bg-amber-500/15 border border-amber-500/30 text-amber-300 font-semibold shrink-0 flex items-center gap-1"
          >
            <Clock3 size={10} />
            +{queuedItems.length}
          </span>
        )}

        {/* View in Downloads Button */}
        <Link
          href="/downloads"
          title="Open Downloads"
          className="text-zinc-400 hover:text-amber-400 p-1 transition-colors shrink-0 ml-0.5"
        >
          <ArrowRight size={13} />
        </Link>

        {/* Cancel Button */}
        <button
          onClick={() => cancelDownload(currentDownloadingItem.episodeGroupId)}
          title="Cancel download"
          className="text-zinc-500 hover:text-rose-400 p-1 transition-colors shrink-0"
        >
          <X size={13} />
        </button>
      </div>
    </div>
  );
}
