'use client';

import React, { useState, useEffect, useRef } from 'react';
import { Download, Check, X, Loader2, Trash2, HardDrive, ArrowUpRight, Clock3 } from 'lucide-react';
import Link from 'next/link';
import { Drama, CatalogCollection, EpisodeGroup, VideoRecord } from '@/types/catalog';
import { QualityOption } from '@/types/offline';
import { useOfflineDownloads } from '@/context/OfflineDownloadsContext';
import { fetchAvailableQualities } from '@/lib/offline/hls-downloader';
import { formatBytes } from '@/lib/offline/storage-manager';

interface DownloadButtonProps {
  drama: Drama;
  collection: CatalogCollection;
  episodeGroup: EpisodeGroup;
  currentVideo: VideoRecord;
  seasonName: string;
  routePath: string;
}

export function DownloadButton({
  drama,
  collection,
  episodeGroup,
  currentVideo,
  seasonName,
  routePath,
}: DownloadButtonProps) {
  const {
    startDownload,
    cancelDownload,
    deleteDownload,
    isEpisodeDownloaded,
    getEpisodeStatus,
    getEpisodeProgress,
    activeDownloads,
  } = useOfflineDownloads();

  const [isOpen, setIsOpen] = useState(false);
  const [qualities, setQualities] = useState<QualityOption[]>([]);
  const [loadingQualities, setLoadingQualities] = useState(false);
  const menuRef = useRef<HTMLDivElement>(null);

  const streamUrl = currentVideo.stream_urls?.[0];
  const isDownloaded = isEpisodeDownloaded(episodeGroup.id);
  const status = getEpisodeStatus(episodeGroup.id);
  const progress = getEpisodeProgress(episodeGroup.id) ?? activeDownloads[episodeGroup.id]?.percent;

  // Close quality menu when clicking outside
  useEffect(() => {
    function handleClickOutside(event: MouseEvent) {
      if (menuRef.current && !menuRef.current.contains(event.target as Node)) {
        setIsOpen(false);
      }
    }
    if (isOpen) {
      document.addEventListener('mousedown', handleClickOutside);
    }
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, [isOpen]);

  const handleOpenQualityPicker = async () => {
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
      } catch (e) {
        console.warn('Failed to fetch qualities:', e);
      } finally {
        setLoadingQualities(false);
      }
    }
  };

  const handleSelectQuality = (option: QualityOption) => {
    setIsOpen(false);
    if (!streamUrl) return;

    startDownload(
      {
        episodeGroupId: episodeGroup.id,
        dramaId: drama.id,
        dramaTitle: drama.name,
        seasonLabel: seasonName,
        displayLabel: episodeGroup.display_label,
        bolum: episodeGroup.bolum,
        episodeNumber: episodeGroup.episode_number,
        stillUrl: episodeGroup.still_url || currentVideo.thumbnail_urls?.[0],
        videoRecordId: currentVideo.id,
        manifestUrl: option.url,
        selectedQuality: option.label,
        selectedHeight: option.height,
        routePath,
      },
      option.url
    );
  };

  // 1. Queued State
  if (status === 'queued') {
    return (
      <div className="pill">
        <Clock3 className="i text-amber-400 animate-pulse" />
        <span>Queued</span>
        <button
          onClick={() => cancelDownload(episodeGroup.id)}
          title="Remove from queue"
          className="ml-1 p-0.5 hover:text-rose-400 text-zinc-400 transition-colors"
        >
          <X size={14} />
        </button>
      </div>
    );
  }

  // 2. Downloading State
  if (status === 'downloading') {
    return (
      <div className="pill on">
        <Loader2 className="i animate-spin" />
        <span>Downloading {progress !== undefined ? `${progress}%` : '...'}</span>
        <button
          onClick={() => cancelDownload(episodeGroup.id)}
          title="Cancel download"
          className="ml-1 p-0.5 opacity-70 hover:opacity-100 transition-opacity"
        >
          <X size={14} />
        </button>
      </div>
    );
  }

  // 3. Completed State
  if (isDownloaded) {
    return (
      <div className="relative inline-block" ref={menuRef}>
        <button
          onClick={() => setIsOpen(!isOpen)}
          className="pill on"
        >
          <Check className="i" />
          <span>Downloaded</span>
        </button>

        {isOpen && (
          <div className="absolute right-0 bottom-full mb-2 w-48 rounded-xl bg-zinc-900 border border-zinc-800 shadow-xl p-1.5 z-50">
            <Link
              href="/downloads"
              className="flex items-center justify-between w-full px-3 py-2 text-xs text-zinc-300 hover:text-white hover:bg-zinc-800/80 rounded-lg transition-colors"
            >
              <span className="flex items-center gap-2">
                <HardDrive className="w-3.5 h-3.5 text-amber-400" />
                View in Downloads
              </span>
              <ArrowUpRight className="w-3.5 h-3.5 opacity-60" />
            </Link>
            <button
              onClick={() => {
                deleteDownload(episodeGroup.id);
                setIsOpen(false);
              }}
              className="flex items-center gap-2 w-full px-3 py-2 text-xs text-rose-400 hover:bg-rose-500/10 rounded-lg transition-colors mt-0.5"
            >
              <Trash2 className="w-3.5 h-3.5" />
              <span>Delete from device</span>
            </button>
          </div>
        )}
      </div>
    );
  }

  // 4. Ready to Download (Quality Picker)
  return (
    <div className="relative inline-block" ref={menuRef}>
      <button
        onClick={handleOpenQualityPicker}
        disabled={!streamUrl}
        className="pill"
      >
        <Download className="i" />
        <span>Download</span>
      </button>

      {isOpen && (
        <div className="absolute right-0 bottom-full mb-2 w-64 rounded-xl bg-zinc-900 border border-zinc-800 shadow-2xl p-2 z-50 animate-in fade-in zoom-in-95 duration-100">
          <div className="px-2.5 py-1.5 border-b border-zinc-800/80 mb-1">
            <span className="text-[11px] font-semibold text-zinc-400 uppercase tracking-wider">
              Choose Download Quality
            </span>
          </div>

          {loadingQualities ? (
            <div className="flex items-center justify-center py-4 text-xs text-zinc-400 gap-2">
              <Loader2 className="w-4 h-4 animate-spin text-amber-400" />
              <span>Checking stream qualities...</span>
            </div>
          ) : qualities.length > 0 ? (
            <div className="space-y-1">
              {qualities.map((q) => (
                <button
                  key={q.id}
                  onClick={() => handleSelectQuality(q)}
                  className="flex items-center justify-between w-full px-3 py-2 text-xs rounded-lg hover:bg-zinc-800/90 text-left transition-colors group"
                >
                  <div>
                    <span className="font-medium text-zinc-200 group-hover:text-amber-300 block">
                      {q.label}
                    </span>
                    {q.resolution && (
                      <span className="text-[10px] text-zinc-500 block">
                        {q.resolution}
                      </span>
                    )}
                  </div>
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
              onClick={() =>
                handleSelectQuality({
                  id: 'default',
                  label: 'Standard Quality',
                  url: streamUrl || '',
                })
              }
              className="flex items-center justify-between w-full px-3 py-2 text-xs rounded-lg hover:bg-zinc-800/90 text-zinc-200 hover:text-amber-300 text-left transition-colors"
            >
              <span>Standard Quality</span>
              <span className="text-[10px] text-zinc-400 font-mono">Ready</span>
            </button>
          )}

          <div className="mt-2 pt-1.5 border-t border-zinc-800/60 px-2 flex items-center justify-between text-[10px] text-zinc-500">
            <span>Saves offline in browser</span>
            <span>No internet needed</span>
          </div>
        </div>
      )}
    </div>
  );
}
