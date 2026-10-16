'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { 
  HardDrive, 
  Trash2, 
  Play, 
  Download, 
  Check, 
  Loader2, 
  AlertCircle,
  WifiOff,
  X,
  ArrowLeft,
  ShieldCheck,
  Clock3,
  ChevronLeft,
  ChevronRight
} from 'lucide-react';
import { useOfflineDownloads } from '@/context/OfflineDownloadsContext';
import { formatBytes } from '@/lib/offline/storage-manager';
import { OfflineEpisodeMetadata } from '@/types/offline';
import { CustomVideoPlayer } from '@/components/player/CustomVideoPlayer';
import { VideoRecord, EpisodeGroup } from '@/types/catalog';

export function DownloadsClient() {
  const { 
    downloads, 
    activeDownloads, 
    queuedItems,
    storageInfo, 
    deleteDownload, 
    cancelDownload, 
    clearAll 
  } = useOfflineDownloads();

  const [confirmClearAll, setConfirmClearAll] = useState(false);
  const [playingEpisode, setPlayingEpisode] = useState<OfflineEpisodeMetadata | null>(null);

  const totalDownloadsSize = downloads.reduce((acc, d) => acc + (d.totalSizeBytes || 0), 0);

  // Synthesize catalog entities required by CustomVideoPlayer
  const activeVideoRecord: VideoRecord | null = playingEpisode
    ? {
        id: playingEpisode.videoRecordId,
        record_id: playingEpisode.videoRecordId,
        drama: playingEpisode.dramaTitle,
        drama_id: playingEpisode.dramaId,
        catalog_id: '',
        collection_id: '',
        content_type: 'episode',
        heading: playingEpisode.displayLabel,
        title: playingEpisode.displayLabel,
        display_label: playingEpisode.displayLabel,
        season: null,
        episode: playingEpisode.episodeNumber,
        bolum: playingEpisode.bolum,
        part: null,
        languages: ['Urdu', 'English'],
        version: 'subtitled',
        stream_urls: [playingEpisode.manifestUrl],
        stream_present: true,
        thumbnail_urls: playingEpisode.stillUrl ? [playingEpisode.stillUrl] : [],
        playback_verified: true,
      }
    : null;

  const activeEpisodeGroup: EpisodeGroup | null = playingEpisode
    ? {
        id: playingEpisode.episodeGroupId,
        collection_id: '',
        drama_id: playingEpisode.dramaId,
        display_label: playingEpisode.displayLabel,
        episode_number: playingEpisode.episodeNumber,
        bolum: playingEpisode.bolum,
        part: null,
        video_ids: [playingEpisode.videoRecordId],
        numbering_basis: 'official',
        reported_season: null,
        still_url: playingEpisode.stillUrl,
      }
    : null;

  const completedDownloads = downloads.filter((d) => d.status === 'completed');
  const currentIdx = playingEpisode ? completedDownloads.findIndex((d) => d.episodeGroupId === playingEpisode.episodeGroupId) : -1;
  const nextDownloadedEpisode = currentIdx >= 0 && currentIdx < completedDownloads.length - 1 ? completedDownloads[currentIdx + 1] : null;
  const prevDownloadedEpisode = currentIdx > 0 ? completedDownloads[currentIdx - 1] : null;

  const nextEpisodeGroup: EpisodeGroup | null = nextDownloadedEpisode ? {
    id: nextDownloadedEpisode.episodeGroupId,
    collection_id: '',
    drama_id: nextDownloadedEpisode.dramaId,
    display_label: nextDownloadedEpisode.displayLabel,
    episode_number: nextDownloadedEpisode.episodeNumber,
    bolum: nextDownloadedEpisode.bolum,
    part: null,
    video_ids: [nextDownloadedEpisode.videoRecordId],
    numbering_basis: 'official',
    reported_season: null,
    still_url: nextDownloadedEpisode.stillUrl,
  } : null;

  const handleNavigateNext = () => {
    if (nextDownloadedEpisode) {
      setPlayingEpisode(nextDownloadedEpisode);
      window.scrollTo({ top: 0, behavior: 'smooth' });
    }
  };

  const handleNavigatePrev = () => {
    if (prevDownloadedEpisode) {
      setPlayingEpisode(prevDownloadedEpisode);
      window.scrollTo({ top: 0, behavior: 'smooth' });
    }
  };

  return (
    <div className="space-y-8">
      {/* Active Offline Video Player (Cinema View matching actual watch page) */}
      {playingEpisode && activeVideoRecord && activeEpisodeGroup && (
        <div className="bg-zinc-950 border border-zinc-800 rounded-2xl overflow-hidden shadow-2xl p-4 sm:p-6 mb-8 animate-in fade-in zoom-in-95 duration-200">
          {/* Top Header */}
          <div className="flex items-center justify-between gap-4 mb-4 pb-3 border-b border-zinc-800/80">
            <button
              onClick={() => setPlayingEpisode(null)}
              className="flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-zinc-800 hover:bg-zinc-700 text-xs font-semibold text-zinc-200 transition-colors"
            >
              <ArrowLeft size={14} />
              <span>Back to Downloads Library</span>
            </button>

            <div className="flex items-center gap-2">
              <span className="px-2.5 py-1 rounded-full bg-emerald-500/10 border border-emerald-500/30 text-emerald-400 text-xs font-medium flex items-center gap-1.5">
                <WifiOff size={12} />
                <span>Offline Playback (Saved Locally)</span>
              </span>
            </div>
          </div>

          {/* 2-Column Cinema Layout */}
          <div className="grid grid-cols-1 lg:grid-cols-[1fr_340px] gap-6 items-start">
            {/* Left: Player + Metadata */}
            <div className="space-y-4 min-w-0">
              <div className="rounded-xl overflow-hidden bg-black shadow-inner">
                <CustomVideoPlayer
                  currentVideo={activeVideoRecord}
                  episodeGroup={activeEpisodeGroup}
                  dramaId={playingEpisode.dramaId}
                  collectionId=""
                  dramaTitle={playingEpisode.dramaTitle}
                  allRenditions={[activeVideoRecord]}
                  nextEpisodeGroup={nextEpisodeGroup || undefined}
                  onNavigateNext={handleNavigateNext}
                />
              </div>

              {/* Breadcrumbs */}
              <div className="flex items-center gap-1.5 text-xs text-zinc-400 pt-1">
                <span>Downloads</span>
                <span>/</span>
                <span className="text-zinc-300">{playingEpisode.dramaTitle}</span>
                <span>/</span>
                <span className="text-amber-400 font-medium">{playingEpisode.displayLabel}</span>
              </div>

              {/* Title & Actions */}
              <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 pt-1">
                <div>
                  <span className="text-xs font-semibold text-amber-400 uppercase tracking-wider block">
                    {playingEpisode.dramaTitle} · {playingEpisode.seasonLabel}
                  </span>
                  <h1 className="text-xl sm:text-2xl font-bold text-white mt-0.5">
                    {playingEpisode.displayLabel}
                  </h1>
                </div>

                <div className="flex items-center gap-2 flex-wrap">
                  <button
                    onClick={handleNavigatePrev}
                    disabled={!prevDownloadedEpisode}
                    className="flex items-center gap-1 px-3 py-1.5 rounded-lg border border-zinc-700/80 bg-zinc-800/80 hover:bg-zinc-700 text-xs font-medium text-zinc-200 disabled:opacity-40 disabled:pointer-events-none transition-colors"
                  >
                    <ChevronLeft size={14} />
                    <span>Previous</span>
                  </button>
                  <button
                    onClick={handleNavigateNext}
                    disabled={!nextDownloadedEpisode}
                    className="flex items-center gap-1 px-3 py-1.5 rounded-lg border border-zinc-700/80 bg-zinc-800/80 hover:bg-zinc-700 text-xs font-medium text-zinc-200 disabled:opacity-40 disabled:pointer-events-none transition-colors"
                  >
                    <span>Next</span>
                    <ChevronRight size={14} />
                  </button>
                </div>
              </div>

              {/* Metadata Details Bar */}
              <div className="flex items-center gap-3 text-xs text-zinc-400 border-t border-zinc-800/80 pt-3">
                {playingEpisode.bolum && (
                  <span className="px-2 py-0.5 rounded bg-zinc-900 border border-zinc-800 text-amber-400 font-medium text-[11px]">
                    Bölüm {playingEpisode.bolum}
                  </span>
                )}
                <span className="flex items-center gap-1 text-emerald-400">
                  <ShieldCheck size={13} />
                  Verified Offline Stream
                </span>
                <span>·</span>
                <span>Quality: <b className="text-zinc-200 font-medium">{playingEpisode.selectedQuality || 'HD'}</b></span>
                <span>·</span>
                <span>Size: <b className="text-zinc-200 font-medium">{formatBytes(playingEpisode.totalSizeBytes || 0)}</b></span>
              </div>
            </div>

            {/* Right: Offline Playlist Sidebar */}
            <div className="space-y-4">
              {/* Up Next Card */}
              {nextDownloadedEpisode && (
                <div
                  onClick={() => {
                    setPlayingEpisode(nextDownloadedEpisode);
                    window.scrollTo({ top: 0, behavior: 'smooth' });
                  }}
                  className="cursor-pointer bg-zinc-900 border border-zinc-800 hover:border-amber-500/50 rounded-xl overflow-hidden transition-all group p-3 shadow-md"
                >
                  <div className="flex items-center gap-3">
                    <div className="relative w-24 aspect-video rounded-lg overflow-hidden bg-zinc-800 shrink-0">
                      {nextDownloadedEpisode.stillUrl ? (
                        <img src={nextDownloadedEpisode.stillUrl} alt="" className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300" />
                      ) : (
                        <div className="w-full h-full flex items-center justify-center text-zinc-600"><Play size={20} /></div>
                      )}
                      <div className="absolute inset-0 bg-black/40 flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity">
                        <Play size={16} className="fill-white text-white ml-0.5" />
                      </div>
                    </div>
                    <div className="min-w-0 flex-1">
                      <span className="text-[10px] font-bold text-amber-400 uppercase tracking-wider block">Up Next (Offline)</span>
                      <b className="text-xs text-white line-clamp-1 block mt-0.5">{nextDownloadedEpisode.displayLabel}</b>
                      <span className="text-[11px] text-zinc-400 block mt-0.5">{nextDownloadedEpisode.bolum ? `Bolum ${nextDownloadedEpisode.bolum}` : nextDownloadedEpisode.seasonLabel}</span>
                    </div>
                  </div>
                </div>
              )}

              {/* Playlist List */}
              <div className="bg-zinc-900/90 border border-zinc-800 rounded-xl overflow-hidden flex flex-col shadow-lg">
                <div className="p-3 border-b border-zinc-800 flex items-center justify-between">
                  <div>
                    <b className="text-xs font-bold text-white uppercase tracking-wider block">Offline Playlist</b>
                    <span className="text-[11px] text-zinc-400">{completedDownloads.length} downloaded {completedDownloads.length === 1 ? 'episode' : 'episodes'} ready</span>
                  </div>
                  <span className="px-2 py-0.5 rounded-full bg-emerald-500/10 text-emerald-400 border border-emerald-500/20 text-[10px] font-semibold flex items-center gap-1">
                    <WifiOff size={10} />
                    Ready
                  </span>
                </div>
                <div className="max-h-[360px] overflow-y-auto p-2 space-y-1 divide-y divide-zinc-800/40">
                  {completedDownloads.map((ep, idx) => {
                    const isCurrent = ep.episodeGroupId === playingEpisode.episodeGroupId;
                    return (
                      <div
                        key={ep.episodeGroupId}
                        onClick={() => {
                          setPlayingEpisode(ep);
                          window.scrollTo({ top: 0, behavior: 'smooth' });
                        }}
                        className={`flex items-center gap-2.5 p-2 rounded-lg cursor-pointer transition-all ${
                          isCurrent ? 'bg-amber-500/15 border border-amber-500/40 text-amber-300' : 'hover:bg-zinc-800/70 text-zinc-200'
                        }`}
                      >
                        <span className="w-4 text-center text-xs font-mono text-zinc-500">{idx + 1}</span>
                        <div className="relative w-16 aspect-video rounded overflow-hidden bg-zinc-800 shrink-0">
                          {ep.stillUrl ? (
                            <img src={ep.stillUrl} alt="" className="w-full h-full object-cover" />
                          ) : (
                            <div className="w-full h-full flex items-center justify-center text-zinc-600"><Play size={12} /></div>
                          )}
                        </div>
                        <div className="min-w-0 flex-1 text-left">
                          <b className="text-xs truncate block font-medium">{ep.displayLabel}</b>
                          <span className="text-[10px] text-zinc-400 block">{isCurrent ? 'Now playing' : ep.dramaTitle}</span>
                        </div>
                        {isCurrent && (
                          <span className="w-2 h-2 rounded-full bg-amber-400 animate-pulse shrink-0" />
                        )}
                      </div>
                    );
                  })}
                </div>
              </div>
            </div>
          </div>
        </div>
      )}

      {/* Storage Information Bar */}
      <div className="bg-surface/50 border border-surface-border rounded-xl p-4 sm:p-5 flex flex-col md:flex-row items-start md:items-center justify-between gap-4">
        <div className="flex items-center gap-3">
          <div className="p-2.5 rounded-lg bg-amber-500/10 border border-amber-500/20 text-amber-400">
            <HardDrive size={22} />
          </div>
          <div>
            <div className="flex items-center gap-2">
              <h2 className="text-sm font-semibold text-text-primary">
                Device Offline Storage
              </h2>
              <span className="text-[10px] font-medium px-2 py-0.5 rounded-full bg-emerald-500/10 text-emerald-400 border border-emerald-500/20 flex items-center gap-1">
                <WifiOff size={10} />
                Offline Ready
              </span>
            </div>
            <p className="text-xs text-text-secondary mt-0.5">
              {downloads.length} {downloads.length === 1 ? 'episode' : 'episodes'} saved ({formatBytes(totalDownloadsSize)})
              {storageInfo?.quotaBytes ? ` · ${formatBytes(storageInfo.quotaBytes - storageInfo.usedBytes)} available on your device` : ''}
            </p>
          </div>
        </div>

        {/* Clear All Button */}
        {downloads.length > 0 && (
          <div className="flex items-center gap-2 self-stretch md:self-auto justify-end">
            {confirmClearAll ? (
              <div className="flex items-center gap-2 bg-rose-950/40 border border-rose-500/30 p-1.5 rounded-lg">
                <span className="text-xs text-rose-300 px-2">Delete all episodes?</span>
                <button
                  onClick={() => {
                    clearAll();
                    setConfirmClearAll(false);
                    setPlayingEpisode(null);
                  }}
                  className="px-2.5 py-1 text-xs bg-rose-600 hover:bg-rose-500 text-white rounded font-medium transition-colors"
                >
                  Yes, Delete All
                </button>
                <button
                  onClick={() => setConfirmClearAll(false)}
                  className="px-2 py-1 text-xs text-zinc-400 hover:text-white transition-colors"
                >
                  Cancel
                </button>
              </div>
            ) : (
              <button
                onClick={() => setConfirmClearAll(true)}
                className="flex items-center gap-1.5 px-3 py-1.5 rounded-lg border border-zinc-700/60 bg-zinc-800/60 hover:bg-rose-500/10 hover:border-rose-500/30 hover:text-rose-400 text-xs text-zinc-300 transition-colors"
              >
                <Trash2 size={14} />
                <span>Clear All Downloads</span>
              </button>
            )}
          </div>
        )}
      </div>

      {/* Storage Progress Bar */}
      {storageInfo && storageInfo.quotaBytes > 0 && (
        <div className="bg-surface/30 border border-surface-border rounded-lg p-3">
          <div className="flex justify-between text-[11px] text-text-secondary mb-1.5">
            <span>Storage</span>
            <span>{storageInfo.percentUsed.toFixed(1)}% of storage quota used</span>
          </div>
          <div className="w-full h-1.5 rounded-full bg-zinc-800 overflow-hidden">
            <div
              className="h-full bg-amber-500 rounded-full transition-all duration-300"
              style={{ width: `${Math.min(100, Math.max(1, storageInfo.percentUsed))}%` }}
            />
          </div>
        </div>
      )}

      {/* Downloads List */}
      {downloads.length === 0 ? (
        <div className="text-center py-16 px-4 border border-dashed border-surface-border rounded-2xl bg-surface/20">
          <div className="w-14 h-14 mx-auto mb-4 rounded-full bg-amber-500/10 border border-amber-500/20 flex items-center justify-center text-amber-400">
            <Download size={26} />
          </div>
          <h3 className="text-lg font-semibold text-text-primary mb-1">
            No offline episodes saved yet
          </h3>
          <p className="text-sm text-text-secondary max-w-sm mx-auto mb-6">
            Whenever you are on an episode watch page, click the <span className="text-amber-400 font-medium">Download</span> button to save it for offline watching without internet.
          </p>
          <Link
            href="/"
            className="inline-flex items-center gap-2 px-4 py-2 rounded-lg bg-amber-500 hover:bg-amber-400 text-zinc-950 font-semibold text-sm transition-colors"
          >
            Browse Dramas
          </Link>
        </div>
      ) : (
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4 sm:gap-6">
          {downloads.map((item) => {
            const active = activeDownloads[item.episodeGroupId];
            const isQueued = item.status === 'queued' || item.status === 'pending' || queuedItems.some((q) => q.episodeGroupId === item.episodeGroupId);
            const isDownloading = (item.status === 'downloading' || !!active) && !isQueued;
            const progress = active?.percent ?? (item.totalChunks > 0 ? Math.round((item.downloadedChunks / item.totalChunks) * 100) : 0);
            const isCurrentlyPlaying = playingEpisode?.episodeGroupId === item.episodeGroupId;

            const queueIndex = queuedItems.findIndex((q) => q.episodeGroupId === item.episodeGroupId);
            const queueLabel = queueIndex >= 0 ? `Queued (#${queueIndex + 1})` : 'Queued in line...';

            return (
              <div
                key={item.episodeGroupId}
                className={`group relative bg-surface border rounded-xl overflow-hidden shadow-lg transition-all flex flex-col ${
                  isCurrentlyPlaying ? 'border-amber-500 shadow-amber-500/10' : 'border-surface-border hover:border-surface-border-strong'
                }`}
              >
                {/* Thumbnail Header */}
                <div 
                  className="relative aspect-video bg-zinc-900 overflow-hidden cursor-pointer"
                  onClick={() => {
                    if (!isDownloading && !isQueued && item.status === 'completed') {
                      setPlayingEpisode(item);
                      window.scrollTo({ top: 0, behavior: 'smooth' });
                    }
                  }}
                >
                  {item.stillUrl ? (
                    <img
                      src={item.stillUrl}
                      alt={item.displayLabel}
                      className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
                    />
                  ) : (
                    <div className="w-full h-full flex items-center justify-center bg-zinc-900 text-zinc-600">
                      <Play size={32} />
                    </div>
                  )}

                  {/* Gradient Overlay */}
                  <div className="absolute inset-0 bg-gradient-to-t from-zinc-950/90 via-transparent to-black/30" />

                  {/* Badges */}
                  <div className="absolute top-2.5 left-2.5 flex items-center gap-1.5">
                    <span className="px-2 py-0.5 rounded bg-zinc-900/80 backdrop-blur-md text-[10px] font-semibold text-amber-300 border border-amber-500/30">
                      {item.selectedQuality || 'HD'}
                    </span>
                    {item.bolum && (
                      <span className="px-2 py-0.5 rounded bg-black/60 backdrop-blur-md text-[10px] text-zinc-300">
                        Bölüm {item.bolum}
                      </span>
                    )}
                  </div>

                  {/* Play Button Overlay (when ready) */}
                  {!isDownloading && !isQueued && item.status === 'completed' && (
                    <div className="absolute inset-0 flex items-center justify-center opacity-0 group-hover:opacity-100 bg-black/40 backdrop-blur-xs transition-opacity">
                      <div className="w-12 h-12 rounded-full bg-amber-500 text-zinc-950 flex items-center justify-center shadow-lg transform group-hover:scale-110 transition-transform">
                        <Play size={20} className="fill-current ml-0.5" />
                      </div>
                    </div>
                  )}

                  {/* Queued Badge Overlay */}
                  {isQueued && (
                    <div className="absolute inset-x-0 bottom-0 bg-black/85 backdrop-blur-xs p-2.5 flex items-center justify-between text-xs text-amber-300 font-medium border-t border-amber-500/20">
                      <span className="flex items-center gap-1.5 font-semibold">
                        <Clock3 size={13} className="text-amber-400 animate-pulse" />
                        {queueLabel}
                      </span>
                      <span className="text-[10px] px-2 py-0.5 rounded-full bg-amber-500/20 text-amber-300 border border-amber-500/30 font-bold uppercase tracking-wider">
                        Pending
                      </span>
                    </div>
                  )}

                  {/* Downloading Progress Bar Overlay */}
                  {isDownloading && (
                    <div className="absolute inset-x-0 bottom-0 bg-black/70 backdrop-blur-xs p-3">
                      <div className="flex items-center justify-between text-xs text-amber-300 mb-1.5 font-medium">
                        <span className="flex items-center gap-1.5">
                          <Loader2 size={12} className="animate-spin" />
                          Downloading...
                        </span>
                        <span>{progress}%</span>
                      </div>
                      <div className="w-full h-1.5 rounded-full bg-zinc-800 overflow-hidden">
                        <div
                          className="h-full bg-amber-400 rounded-full transition-all duration-200"
                          style={{ width: `${progress}%` }}
                        />
                      </div>
                    </div>
                  )}
                </div>

                {/* Content Body */}
                <div className="p-4 flex-1 flex flex-col justify-between">
                  <div>
                    <span className="text-[11px] font-medium text-amber-400/90 uppercase tracking-wider block mb-0.5">
                      {item.dramaTitle} · {item.seasonLabel}
                    </span>
                    <h3 className="text-sm font-semibold text-text-primary line-clamp-1 mb-1">
                      {item.displayLabel}
                    </h3>
                    <div className="flex items-center gap-2 text-xs text-text-secondary">
                      <span>{formatBytes(item.totalSizeBytes || 0)}</span>
                      <span>·</span>
                      <span className="capitalize">{new Date(item.downloadedAt).toLocaleDateString()}</span>
                    </div>
                  </div>

                  {/* Action Buttons */}
                  <div className="mt-4 pt-3 border-t border-surface-border flex items-center justify-between gap-2">
                    {isDownloading ? (
                      <button
                        onClick={() => cancelDownload(item.episodeGroupId)}
                        className="flex items-center gap-1 text-xs text-rose-400 hover:text-rose-300 py-1 transition-colors font-medium"
                      >
                        <X size={14} />
                        <span>Cancel Download</span>
                      </button>
                    ) : isQueued ? (
                      <div className="flex items-center justify-between w-full">
                        <span className="text-xs text-amber-400 font-semibold flex items-center gap-1.5">
                          <Clock3 size={13} className="animate-pulse" />
                          <span>{queueLabel}</span>
                        </span>
                        <button
                          onClick={() => cancelDownload(item.episodeGroupId)}
                          className="flex items-center gap-1 text-xs text-zinc-400 hover:text-rose-400 py-1 transition-colors font-medium"
                        >
                          <X size={13} />
                          <span>Remove</span>
                        </button>
                      </div>
                    ) : (
                      <button
                        onClick={() => {
                          setPlayingEpisode(item);
                          window.scrollTo({ top: 0, behavior: 'smooth' });
                        }}
                        className="inline-flex items-center gap-1.5 text-xs font-semibold text-amber-400 hover:text-amber-300 py-1 transition-colors"
                      >
                        <Play size={13} className="fill-current" />
                        <span>{isCurrentlyPlaying ? 'Now Playing' : 'Watch Offline'}</span>
                      </button>
                    )}

                    {!isQueued && (
                      <button
                        onClick={() => {
                          deleteDownload(item.episodeGroupId);
                          if (playingEpisode?.episodeGroupId === item.episodeGroupId) {
                            setPlayingEpisode(null);
                          }
                        }}
                        title="Delete from device"
                        className="p-1.5 rounded-lg text-zinc-500 hover:text-rose-400 hover:bg-rose-500/10 transition-colors"
                      >
                        <Trash2 size={14} />
                      </button>
                    )}
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      )}
    </div>
  );
}
