'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { 
  Download, 
  Loader2, 
  Check, 
  X, 
  ChevronDown, 
  ChevronUp, 
  Clock3, 
  ArrowRight 
} from 'lucide-react';
import { useOfflineDownloads } from '@/context/OfflineDownloadsContext';
import { formatBytes } from '@/lib/offline/storage-manager';

export function DownloadStatusBar() {
  const { 
    currentDownloadingItem, 
    queuedItems, 
    activeDownloads, 
    cancelDownload 
  } = useOfflineDownloads();

  const [minimized, setMinimized] = useState(false);
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
      const timer = setTimeout(() => setCompletedNotice(null), 4000);
      return () => clearTimeout(timer);
    }
    prevDownloadingRef.current = currentDownloadingItem;
  }, [currentDownloadingItem, queuedItems.length]);

  // Don't render anything if nothing is downloading or queued and no notice
  if (!currentDownloadingItem && queuedItems.length === 0 && !completedNotice) {
    return null;
  }

  // 1. Completed Notice
  if (completedNotice && !currentDownloadingItem) {
    return (
      <div className="fixed bottom-20 md:bottom-6 right-4 sm:right-6 z-50 animate-in fade-in slide-in-from-bottom-4 duration-300">
        <div className="flex items-center gap-2.5 px-4 py-3 rounded-2xl bg-zinc-900/95 backdrop-blur-md border border-emerald-500/40 text-emerald-300 shadow-2xl text-xs font-medium">
          <div className="w-5 h-5 rounded-full bg-emerald-500/20 flex items-center justify-center text-emerald-400">
            <Check size={13} className="stroke-[2.5]" />
          </div>
          <span><strong>{completedNotice}</strong> saved offline!</span>
          <Link
            href="/downloads"
            className="ml-2 text-amber-400 hover:text-amber-300 underline font-semibold flex items-center gap-1"
          >
            <span>View</span>
            <ArrowRight size={12} />
          </Link>
        </div>
      </div>
    );
  }

  if (!currentDownloadingItem) return null;

  return (
    <div className="fixed bottom-20 md:bottom-6 right-4 sm:right-6 z-50 w-80 sm:w-96 animate-in fade-in slide-in-from-bottom-4 duration-300">
      <div className="rounded-2xl bg-zinc-950/95 backdrop-blur-xl border border-amber-500/40 shadow-2xl overflow-hidden text-left">
        {/* Header Bar */}
        <div className="p-3 sm:p-3.5 pb-2.5 flex items-center justify-between gap-3 border-b border-zinc-800/80">
          <div className="flex items-center gap-2.5 min-w-0">
            <div className="w-7 h-7 rounded-lg bg-amber-500/15 border border-amber-500/30 text-amber-400 flex items-center justify-center flex-shrink-0">
              <Loader2 size={15} className="animate-spin" />
            </div>
            <div className="min-w-0">
              <span className="text-[10px] font-semibold text-amber-400 uppercase tracking-wider block truncate">
                {currentDownloadingItem.dramaTitle}
              </span>
              <h4 className="text-xs font-bold text-white truncate">
                {currentDownloadingItem.displayLabel}
              </h4>
            </div>
          </div>

          <div className="flex items-center gap-1.5 flex-shrink-0">
            {queuedItems.length > 0 && (
              <span className="px-2 py-0.5 rounded-full bg-zinc-800/90 border border-zinc-700 text-[10px] font-medium text-amber-300 flex items-center gap-1">
                <Clock3 size={10} />
                +{queuedItems.length} queued
              </span>
            )}
            <button
              onClick={() => setMinimized(!minimized)}
              title={minimized ? 'Expand' : 'Minimize'}
              className="p-1 rounded-lg hover:bg-zinc-800 text-zinc-400 hover:text-white transition-colors"
            >
              {minimized ? <ChevronUp size={15} /> : <ChevronDown size={15} />}
            </button>
          </div>
        </div>

        {/* Expandable Progress & Queue Details */}
        {!minimized && (
          <div className="p-3 sm:p-3.5 pt-2.5 space-y-2.5">
            {/* Progress Details */}
            <div className="flex items-center justify-between text-[11px]">
              <span className="text-zinc-400">
                {activeProgress ? formatBytes(activeProgress.bytesDownloaded) : 'Starting download...'}
              </span>
              <span className="font-bold text-amber-400 font-mono">
                {percent}%
              </span>
            </div>

            {/* Progress Bar */}
            <div className="w-full h-1.5 rounded-full bg-zinc-800 overflow-hidden">
              <div
                className="h-full bg-amber-400 rounded-full transition-all duration-200"
                style={{ width: `${percent}%` }}
              />
            </div>

            {/* Next in Queue peek */}
            {queuedItems.length > 0 && (
              <div className="pt-1.5 border-t border-zinc-800/60 text-[11px] text-zinc-400 flex items-center justify-between">
                <span className="truncate">
                  Up next: <strong className="text-zinc-300">{queuedItems[0].displayLabel}</strong>
                </span>
                <span className="text-[10px] text-zinc-500 font-mono">Queued</span>
              </div>
            )}

            {/* Actions Bar */}
            <div className="pt-1 flex items-center justify-between text-xs">
              <Link
                href="/downloads"
                className="text-amber-400 hover:text-amber-300 font-medium inline-flex items-center gap-1 transition-colors"
              >
                <span>View Downloads Library</span>
                <ArrowRight size={12} />
              </Link>
              <button
                onClick={() => cancelDownload(currentDownloadingItem.episodeGroupId)}
                className="text-rose-400 hover:text-rose-300 text-[11px] font-medium transition-colors hover:underline"
              >
                Cancel
              </button>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
