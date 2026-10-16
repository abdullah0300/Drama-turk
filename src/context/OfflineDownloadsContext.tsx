'use client';

import React, { createContext, useContext, useEffect, useState, useRef, useCallback } from 'react';
import { OfflineEpisodeMetadata, StorageInfo, DownloadStatus } from '@/types/offline';
import {
  getAllOfflineEpisodes,
  saveOfflineEpisode,
  deleteOfflineEpisode,
  clearAllOfflineData,
  getStorageQuota,
  requestPersistentStorage,
} from '@/lib/offline/storage-manager';
import { downloadHlsStream, DownloadProgress } from '@/lib/offline/hls-downloader';

export interface ActiveDownloadState {
  percent: number;
  bytesDownloaded: number;
  totalChunks: number;
  downloadedChunks: number;
}

interface QueuedDownloadItem {
  meta: OfflineEpisodeMetadata;
  targetQualityUrl: string;
}

interface OfflineDownloadsContextType {
  downloads: OfflineEpisodeMetadata[];
  activeDownloads: Record<string, ActiveDownloadState>;
  currentDownloadingItem: OfflineEpisodeMetadata | null;
  queuedItems: OfflineEpisodeMetadata[];
  storageInfo: StorageInfo | null;
  startDownload: (
    metadata: Omit<OfflineEpisodeMetadata, 'downloadedChunks' | 'totalChunks' | 'totalSizeBytes' | 'status' | 'downloadedAt'>,
    targetQualityUrl: string
  ) => Promise<void>;
  cancelDownload: (episodeGroupId: string) => void;
  deleteDownload: (episodeGroupId: string) => Promise<void>;
  clearAll: () => Promise<void>;
  refreshStorage: () => Promise<void>;
  isEpisodeDownloaded: (episodeGroupId: string) => boolean;
  getEpisodeStatus: (episodeGroupId: string) => DownloadStatus | undefined;
  getEpisodeProgress: (episodeGroupId: string) => number | undefined;
}

const OfflineDownloadsContext = createContext<OfflineDownloadsContextType | undefined>(undefined);

export function OfflineDownloadsProvider({ children }: { children: React.ReactNode }) {
  const [downloads, setDownloads] = useState<OfflineEpisodeMetadata[]>([]);
  const [activeDownloads, setActiveDownloads] = useState<Record<string, ActiveDownloadState>>({});
  const [currentDownloadingId, setCurrentDownloadingId] = useState<string | null>(null);
  const [queuedItems, setQueuedItems] = useState<OfflineEpisodeMetadata[]>([]);
  const [storageInfo, setStorageInfo] = useState<StorageInfo | null>(null);

  // Queue references
  const queueRef = useRef<QueuedDownloadItem[]>([]);
  const isProcessingRef = useRef(false);
  const currentControllerRef = useRef<AbortController | null>(null);
  const hasCleanedUpRef = useRef(false);

  const syncQueuedState = useCallback((activeId: string | null) => {
    const queued = queueRef.current
      .filter((q) => q.meta.episodeGroupId !== activeId)
      .map((q) => q.meta);
    setQueuedItems(queued);
  }, []);

  const refreshDownloads = useCallback(async () => {
    try {
      const all = await getAllOfflineEpisodes();
      if (!hasCleanedUpRef.current) {
        hasCleanedUpRef.current = true;
        for (const ep of all) {
          if (ep.status === 'downloading' || ep.status === 'queued') {
            if (!queueRef.current.some((q) => q.meta.episodeGroupId === ep.episodeGroupId)) {
              ep.status = 'paused';
              await saveOfflineEpisode(ep);
            }
          }
        }
      }
      setDownloads(all);
    } catch (e) {
      console.warn('Failed to refresh offline downloads:', e);
    }
  }, []);

  const refreshStorage = useCallback(async () => {
    try {
      const info = await getStorageQuota();
      setStorageInfo(info);
    } catch (e) {
      console.warn('Failed to refresh storage info:', e);
    }
  }, []);

  // Initialization: Register Service Worker, request persistent storage, load downloads
  useEffect(() => {
    if (typeof window === 'undefined') return;

    if ('serviceWorker' in navigator) {
      navigator.serviceWorker
        .register('/sw.js')
        .then((reg) => {
          reg.update();
          caches.open('offline-media-v1').then((cache) => {
            fetch('/downloads')
              .then((res) => {
                if (res.ok) cache.put('/downloads', res);
              })
              .catch(() => {});
          });
        })
        .catch((err) => console.warn('Service Worker registration failed:', err));
    }

    requestPersistentStorage();
    refreshDownloads();
    refreshStorage();
  }, [refreshDownloads, refreshStorage]);

  // FIFO Queue Processor: Downloads 1 episode at maximum speed, auto-advances to next
  const processNextInQueue = useCallback(async () => {
    if (isProcessingRef.current) return;
    if (queueRef.current.length === 0) {
      setCurrentDownloadingId(null);
      return;
    }

    isProcessingRef.current = true;
    const item = queueRef.current[0];
    const episodeGroupId = item.meta.episodeGroupId;

    setCurrentDownloadingId(episodeGroupId);
    syncQueuedState(episodeGroupId);

    // Update status to downloading
    item.meta.status = 'downloading';
    await saveOfflineEpisode(item.meta);
    await refreshDownloads();

    const controller = new AbortController();
    currentControllerRef.current = controller;

    setActiveDownloads((prev) => ({
      ...prev,
      [episodeGroupId]: { percent: 0, bytesDownloaded: 0, totalChunks: 0, downloadedChunks: 0 },
    }));

    try {
      await downloadHlsStream(item.targetQualityUrl, item.meta, {
        signal: controller.signal,
        onProgress: (p: DownloadProgress) => {
          setActiveDownloads((prev) => ({
            ...prev,
            [episodeGroupId]: p,
          }));
        },
      });

      // Completed successfully
      queueRef.current = queueRef.current.filter(
        (q) => q.meta.episodeGroupId !== episodeGroupId
      );
      syncQueuedState(currentDownloadingId);
      await refreshDownloads();
      await refreshStorage();
    } catch (err: any) {
      if (err?.name === 'AbortError' || err?.message?.includes('aborted')) {
        console.log(`Download for ${episodeGroupId} cancelled.`);
      } else {
        console.error(`Download failed for ${episodeGroupId}:`, err);
        item.meta.status = 'failed';
        item.meta.error = err?.message || 'Download failed';
        await saveOfflineEpisode(item.meta);
        await refreshDownloads();
      }
      queueRef.current = queueRef.current.filter(
        (q) => q.meta.episodeGroupId !== episodeGroupId
      );
      syncQueuedState(currentDownloadingId);
    } finally {
      currentControllerRef.current = null;
      isProcessingRef.current = false;
      setActiveDownloads((prev) => {
        const next = { ...prev };
        delete next[episodeGroupId];
        return next;
      });

      // Automatically advance to the next queued episode!
      processNextInQueue();
    }
  }, [refreshDownloads, refreshStorage, syncQueuedState, currentDownloadingId]);

  const startDownload = async (
    meta: Omit<OfflineEpisodeMetadata, 'downloadedChunks' | 'totalChunks' | 'totalSizeBytes' | 'status' | 'downloadedAt'>,
    targetQualityUrl: string
  ) => {
    const episodeGroupId = meta.episodeGroupId;

    // Check if already in queue or currently downloading
    if (
      queueRef.current.some((q) => q.meta.episodeGroupId === episodeGroupId) ||
      currentDownloadingId === episodeGroupId
    ) {
      return;
    }

    const isFirst = queueRef.current.length === 0 && !isProcessingRef.current;
    const fullMetadata: OfflineEpisodeMetadata = {
      ...meta,
      manifestUrl: targetQualityUrl,
      downloadedChunks: 0,
      totalChunks: 0,
      totalSizeBytes: 0,
      status: isFirst ? 'downloading' : 'queued',
      downloadedAt: new Date().toISOString(),
    };

    queueRef.current.push({
      meta: fullMetadata,
      targetQualityUrl,
    });
    syncQueuedState(currentDownloadingId);

    await saveOfflineEpisode(fullMetadata);
    await refreshDownloads();

    processNextInQueue();
  };

  const cancelDownload = (episodeGroupId: string) => {
    // If currently downloading, abort the controller
    if (currentDownloadingId === episodeGroupId && currentControllerRef.current) {
      currentControllerRef.current.abort();
    } else {
      // Remove from queue
      queueRef.current = queueRef.current.filter(
        (q) => q.meta.episodeGroupId !== episodeGroupId
      );
      syncQueuedState(currentDownloadingId);
    }

    deleteOfflineEpisode(episodeGroupId).then(() => {
      refreshDownloads();
      refreshStorage();
    });
  };

  const deleteDownload = async (episodeGroupId: string) => {
    cancelDownload(episodeGroupId);
    await deleteOfflineEpisode(episodeGroupId);
    await refreshDownloads();
    await refreshStorage();
  };

  const clearAll = async () => {
    if (currentControllerRef.current) {
      currentControllerRef.current.abort();
    }
    queueRef.current = [];
    syncQueuedState(null);
    isProcessingRef.current = false;
    setCurrentDownloadingId(null);
    setActiveDownloads({});
    await clearAllOfflineData();
    await refreshDownloads();
    await refreshStorage();
  };

  const isEpisodeDownloaded = (episodeGroupId: string): boolean => {
    return downloads.some(
      (d) => d.episodeGroupId === episodeGroupId && d.status === 'completed'
    );
  };

  const getEpisodeStatus = (episodeGroupId: string): DownloadStatus | undefined => {
    if (currentDownloadingId === episodeGroupId) return 'downloading';
    if (queueRef.current.some((q) => q.meta.episodeGroupId === episodeGroupId)) return 'queued';
    const found = downloads.find((d) => d.episodeGroupId === episodeGroupId);
    return found?.status;
  };

  const getEpisodeProgress = (episodeGroupId: string): number | undefined => {
    return activeDownloads[episodeGroupId]?.percent;
  };

  // Find active and queued items for global UI widgets
  const currentDownloadingItem = currentDownloadingId
    ? downloads.find((d) => d.episodeGroupId === currentDownloadingId) ||
      queueRef.current[0]?.meta ||
      null
    : null;

  return (
    <OfflineDownloadsContext.Provider
      value={{
        downloads,
        activeDownloads,
        currentDownloadingItem,
        queuedItems,
        storageInfo,
        startDownload,
        cancelDownload,
        deleteDownload,
        clearAll,
        refreshStorage,
        isEpisodeDownloaded,
        getEpisodeStatus,
        getEpisodeProgress,
      }}
    >
      {children}
    </OfflineDownloadsContext.Provider>
  );
}

export function useOfflineDownloads() {
  const context = useContext(OfflineDownloadsContext);
  if (!context) {
    throw new Error('useOfflineDownloads must be used within an OfflineDownloadsProvider');
  }
  return context;
}
