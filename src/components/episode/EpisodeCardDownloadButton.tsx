'use client';

import React, { useState, useRef, useEffect } from 'react';
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
  } = useOfflineDownloads();

  const [isOpen, setIsOpen] = useState(false);
  const [qualities, setQualities] = useState<QualityOption[]>([]);
  const [loadingQualities, setLoadingQualities] = useState(false);
  const popoverRef = useRef<HTMLDivElement>(null);

  const isDownloaded = isEpisodeDownloaded(episodeGroupId);
  const status = getEpisodeStatus(episodeGroupId);
  const progress = getEpisodeProgress(episodeGroupId) ?? activeDownloads[episodeGroupId]?.percent;

  useEffect(() => {
    function handleClickOutside(event: MouseEvent) {
      if (popoverRef.current && !popoverRef.current.contains(event.target as Node)) {
        setIsOpen(false);
      }
    }
    if (isOpen) {
      document.addEventListener('mousedown', handleClickOutside);
    }
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, [isOpen]);

  const handleOpenPicker = async (e: React.MouseEvent) => {
    e.preventDefault();
    e.stopPropagation();

    if (isOpen) {
      setIsOpen(false);
      return;
    }

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

  // 1. Queued
  if (status === 'queued') {
    return (
      <div
        className="relative z-20 inline-flex items-center gap-1.5 px-2 py-1 rounded-full bg-black/85 backdrop-blur-md border border-amber-500/30 text-[11px] font-semibold text-zinc-300 shadow-md"
        onClick={(e) => {
          e.preventDefault();
          e.stopPropagation();
        }}
      >
        <Clock3 className="w-3 h-3 text-amber-400" />
        <span>Queued</span>
        <button
          onClick={(e) => {
            e.preventDefault();
            e.stopPropagation();
            cancelDownload(episodeGroupId);
          }}
          title="Remove from queue"
          className="p-0.5 rounded-full hover:bg-amber-500/20 text-zinc-400 hover:text-white"
        >
          <X size={11} />
        </button>
      </div>
    );
  }

  // 2. Downloading
  if (status === 'downloading') {
    return (
      <div
        className="relative z-20 inline-flex items-center gap-1.5 px-2 py-1 rounded-full bg-black/85 backdrop-blur-md border border-amber-500/50 text-[11px] font-semibold text-amber-300 shadow-md"
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
          className="p-0.5 rounded-full hover:bg-amber-500/20 text-amber-400"
        >
          <X size={11} />
        </button>
      </div>
    );
  }

  // 2. Downloaded
  if (isDownloaded) {
    return (
      <div
        className="relative z-20 inline-flex items-center gap-1 px-2 py-1 rounded-full bg-emerald-950/80 backdrop-blur-md border border-emerald-500/50 text-[11px] font-semibold text-emerald-400 shadow-md"
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

  // 3. Ready to download (Download arrow button)
  return (
    <div className="relative z-20 inline-block" ref={popoverRef}>
      <button
        onClick={handleOpenPicker}
        disabled={!streamUrl}
        title="Download for offline viewing"
        aria-label={`Download ${displayLabel}`}
        className="w-7 h-7 sm:w-8 sm:h-8 rounded-full bg-zinc-900/90 backdrop-blur-md border border-zinc-700/80 hover:border-amber-400/80 hover:bg-amber-500 hover:text-zinc-950 text-zinc-300 flex items-center justify-center transition-all shadow-md group disabled:opacity-30"
      >
        <Download size={14} className="group-hover:translate-y-0.5 transition-transform" />
      </button>

      {isOpen && (
        <div
          className="absolute right-0 bottom-full mb-2 w-56 rounded-xl bg-zinc-900/95 backdrop-blur-md border border-zinc-700 shadow-2xl p-2 z-50 text-left animate-in fade-in zoom-in-95 duration-100"
          onClick={(e) => {
            e.preventDefault();
            e.stopPropagation();
          }}
        >
          <div className="px-2 py-1 border-b border-zinc-800 mb-1">
            <span className="text-[10px] font-semibold text-zinc-400 uppercase tracking-wider">
              Download Quality
            </span>
          </div>

          {loadingQualities ? (
            <div className="flex items-center justify-center py-3 text-xs text-zinc-400 gap-1.5">
              <Loader2 className="w-3.5 h-3.5 animate-spin text-amber-400" />
              <span>Checking...</span>
            </div>
          ) : qualities.length > 0 ? (
            <div className="space-y-1">
              {qualities.map((q) => (
                <button
                  key={q.id}
                  onClick={(e) => handleSelectQuality(e, q)}
                  className="flex items-center justify-between w-full px-2.5 py-1.5 text-xs rounded-lg hover:bg-zinc-800 text-left transition-colors group"
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
              className="flex items-center justify-between w-full px-2.5 py-1.5 text-xs rounded-lg hover:bg-zinc-800 text-zinc-200 hover:text-amber-300 text-left transition-colors"
            >
              <span>Standard Quality</span>
              <span className="text-[10px] text-zinc-400 font-mono">Ready</span>
            </button>
          )}
        </div>
      )}
    </div>
  );
}
