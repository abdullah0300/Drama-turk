'use client';

import React, { useState, useRef, useEffect } from 'react';
import { createPortal } from 'react-dom';
import { Download, Check, X, Loader2, Clock3 } from 'lucide-react';
import { useOfflineDownloads } from '@/context/OfflineDownloadsContext';
import { fetchAvailableQualities } from '@/lib/offline/hls-downloader';
import { QualityOption } from '@/types/offline';
import { formatBytes } from '@/lib/offline/storage-manager';

interface EpisodeCardDownloadButtonProps {
  episodeGroupId: string;
  dramaId: string;
  dramaTitle: string;
  seasonLabel: string;
  displayLabel: string;
  bolum: number | null;
  episodeNumber: number | null;
  stillUrl?: string;
  videoRecordId?: string;
  streamUrl?: string;
  routePath: string;
}

export function EpisodeCardDownloadButton({
  episodeGroupId,
  dramaId,
  dramaTitle,
  seasonLabel,
  displayLabel,
  bolum,
  episodeNumber,
  stillUrl,
  videoRecordId,
  streamUrl,
  routePath,
}: EpisodeCardDownloadButtonProps) {
  const {
    startDownload,
    cancelDownload,
    isEpisodeDownloaded,
    getEpisodeStatus,
    getEpisodeProgress,
    activeDownloads,
    queuedItems,
  } = useOfflineDownloads();

  const [isOpen, setIsOpen] = useState(false);
  const [mounted, setMounted] = useState(false);
  const [menuPos, setMenuPos] = useState({ top: 0, left: 0 });
  const [qualities, setQualities] = useState<QualityOption[]>([]);
  const [loadingQualities, setLoadingQualities] = useState(false);
  
  const buttonRef = useRef<HTMLButtonElement>(null);
  const popoverRef = useRef<HTMLDivElement>(null);

  const isDownloaded = isEpisodeDownloaded(episodeGroupId);
  const status = getEpisodeStatus(episodeGroupId);
  const isQueued = status === 'queued' || queuedItems.some((q) => q.episodeGroupId === episodeGroupId);
  const isDownloading = status === 'downloading' || !!activeDownloads[episodeGroupId];
  const progress = getEpisodeProgress(episodeGroupId) ?? activeDownloads[episodeGroupId]?.percent;

  useEffect(() => {
    setMounted(true);
  }, []);

  useEffect(() => {
    function handleClickOutside(event: MouseEvent) {
      if (
        popoverRef.current &&
        !popoverRef.current.contains(event.target as Node) &&
        buttonRef.current &&
        !buttonRef.current.contains(event.target as Node)
      ) {
        setIsOpen(false);
      }
    }
    if (isOpen) {
      document.addEventListener('mousedown', handleClickOutside);
    }
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, [isOpen]);

  const updateMenuPosition = () => {
    if (buttonRef.current) {
      const rect = buttonRef.current.getBoundingClientRect();
      const popWidth = 230;
      let left = rect.right - popWidth;
      if (left < 10) left = 10;
      if (left + popWidth > window.innerWidth - 10) {
        left = window.innerWidth - popWidth - 10;
      }

      const popHeight = 180;
      let top = rect.bottom + 6;
      if (top + popHeight > window.innerHeight - 10) {
        top = Math.max(10, rect.top - popHeight - 6);
      }

      setMenuPos({ top, left });
    }
  };

  const handleOpenPicker = async (e: React.MouseEvent) => {
    e.preventDefault();
    e.stopPropagation();

    if (isOpen) {
      setIsOpen(false);
      return;
    }

    updateMenuPosition();
    setIsOpen(true);

    if (qualities.length === 0 && streamUrl) {
      setLoadingQualities(true);
      try {
        const fetched = await fetchAvailableQualities(streamUrl);
        setQualities(fetched);
      } catch (err) {
        console.warn('Could not fetch qualities:', err);
      } finally {
        setLoadingQualities(false);
      }
    }
  };

  const handleSelectQuality = (e: React.MouseEvent, q: QualityOption) => {
    e.preventDefault();
    e.stopPropagation();
    setIsOpen(false);
    if (!streamUrl) return;

    startDownload(
      {
        episodeGroupId,
        dramaId,
        dramaTitle,
        seasonLabel,
        displayLabel,
        bolum,
        episodeNumber,
        stillUrl,
        videoRecordId: videoRecordId || '',
        manifestUrl: q.url,
        selectedQuality: q.label,
        selectedHeight: q.height,
        routePath,
      },
      q.url
    );
  };

  // 1. Queued State
  if (isQueued) {
    return (
      <div
        className="relative z-20 inline-flex items-center gap-1.5 px-2.5 py-1 rounded-full bg-black/85 backdrop-blur-md border border-amber-500/40 text-[11px] font-semibold text-amber-300 shadow-md"
        onClick={(e) => {
          e.preventDefault();
          e.stopPropagation();
        }}
      >
        <Clock3 className="w-3 h-3 text-amber-400 animate-pulse" />
        <span>Queued</span>
        <button
          onClick={(e) => {
            e.preventDefault();
            e.stopPropagation();
            cancelDownload(episodeGroupId);
          }}
          title="Remove from queue"
          className="p-0.5 rounded-full hover:bg-amber-500/20 text-zinc-400 hover:text-white ml-0.5 transition-colors"
        >
          <X size={11} />
        </button>
      </div>
    );
  }

  // 2. Downloading State
  if (isDownloading) {
    return (
      <div
        className="relative z-20 inline-flex items-center gap-1.5 px-2.5 py-1 rounded-full bg-black/85 backdrop-blur-md border border-amber-500/50 text-[11px] font-semibold text-amber-300 shadow-md"
        onClick={(e) => {
          e.preventDefault();
          e.stopPropagation();
        }}
      >
        <Loader2 className="w-3 h-3 animate-spin text-amber-400" />
        <span>{progress !== undefined ? `${progress}%` : '...'}</span>
        <button
          onClick={(e) => {
            e.preventDefault();
            e.stopPropagation();
            cancelDownload(episodeGroupId);
          }}
          title="Cancel download"
          className="p-0.5 rounded-full hover:bg-amber-500/20 text-amber-400 ml-0.5 transition-colors"
        >
          <X size={11} />
        </button>
      </div>
    );
  }

  // 3. Downloaded State
  if (isDownloaded) {
    return (
      <div
        className="relative z-20 inline-flex items-center gap-1 px-2.5 py-1 rounded-full bg-emerald-950/80 backdrop-blur-md border border-emerald-500/50 text-[11px] font-semibold text-emerald-400 shadow-md"
        title="Saved on device for offline watching"
        onClick={(e) => {
          e.preventDefault();
          e.stopPropagation();
        }}
      >
        <Check size={12} className="stroke-[2.5]" />
        <span>Saved</span>
      </div>
    );
  }

  // 4. Ready to download (Download arrow button)
  return (
    <div className="relative z-20 inline-block">
      <button
        ref={buttonRef}
        onClick={handleOpenPicker}
        disabled={!streamUrl}
        title="Download for offline viewing"
        aria-label={`Download ${displayLabel}`}
        className="w-7 h-7 sm:w-8 sm:h-8 rounded-full bg-zinc-900/90 backdrop-blur-md border border-zinc-700/80 hover:border-amber-400/80 hover:bg-amber-500 hover:text-zinc-950 text-zinc-300 flex items-center justify-center transition-all shadow-md group disabled:opacity-30"
      >
        <Download size={14} className="group-hover:translate-y-0.5 transition-transform" />
      </button>

      {/* Portal Dropdown (Bypasses overflow:hidden & transform clipping) */}
      {isOpen && mounted && typeof document !== 'undefined' && createPortal(
        <div
          ref={popoverRef}
          style={{
            position: 'fixed',
            top: `${menuPos.top}px`,
            left: `${menuPos.left}px`,
            zIndex: 99999,
          }}
          className="w-56 rounded-xl bg-zinc-950/95 backdrop-blur-xl border border-zinc-700/80 shadow-2xl p-2 text-left animate-in fade-in zoom-in-95 duration-100"
          onClick={(e) => {
            e.preventDefault();
            e.stopPropagation();
          }}
        >
          <div className="px-2 py-1 border-b border-zinc-800/80 mb-1">
            <span className="text-[10px] font-semibold text-zinc-400 uppercase tracking-wider">
              Download Quality
            </span>
          </div>

          {loadingQualities ? (
            <div className="flex items-center justify-center py-3 text-xs text-zinc-400 gap-1.5">
              <Loader2 className="w-3.5 h-3.5 animate-spin text-amber-400" />
              <span>Checking qualities...</span>
            </div>
          ) : qualities.length > 0 ? (
            <div className="space-y-1">
              {qualities.map((q) => (
                <button
                  key={q.id}
                  onClick={(e) => handleSelectQuality(e, q)}
                  className="flex items-center justify-between w-full px-2.5 py-1.5 text-xs rounded-lg hover:bg-zinc-800/90 text-left transition-colors group"
                >
                  <span className="font-medium text-zinc-200 group-hover:text-amber-300">
                    {q.label}
                  </span>
                  {q.estimatedSizeBytes ? (
                    <span className="text-[10px] text-zinc-400 font-mono">
                      ~{formatBytes(q.estimatedSizeBytes)}
                    </span>
                  ) : null}
                </button>
              ))}
            </div>
          ) : (
            <button
              onClick={(e) =>
                handleSelectQuality(e, {
                  id: 'default',
                  label: 'Standard Quality',
                  url: streamUrl || '',
                })
              }
              className="flex items-center justify-between w-full px-2.5 py-1.5 text-xs rounded-lg hover:bg-zinc-800/90 text-zinc-200 hover:text-amber-300 text-left transition-colors"
            >
              <span>Standard Quality</span>
              <span className="text-[10px] text-zinc-400 font-mono">Ready</span>
            </button>
          )}
        </div>,
        document.body
      )}
    </div>
  );
}
