import { OfflineEpisodeMetadata, StorageInfo } from '@/types/offline';

export const OFFLINE_CACHE_NAME = 'offline-media-v1';
const DB_NAME = 'greatnation_offline_db';
const DB_VERSION = 1;
const STORE_NAME = 'episodes';

function openDB(): Promise<IDBDatabase> {
  return new Promise((resolve, reject) => {
    if (typeof window === 'undefined' || !window.indexedDB) {
      reject(new Error('IndexedDB not supported in this environment'));
      return;
    }

    const request = window.indexedDB.open(DB_NAME, DB_VERSION);

    request.onupgradeneeded = (event) => {
      const db = (event.target as IDBOpenDBRequest).result;
      if (!db.objectStoreNames.contains(STORE_NAME)) {
        db.createObjectStore(STORE_NAME, { keyPath: 'episodeGroupId' });
      }
    };

    request.onsuccess = () => resolve(request.result);
    request.onerror = () => reject(request.error);
  });
}

/** Get all downloaded or downloading episodes from IndexedDB */
export async function getAllOfflineEpisodes(): Promise<OfflineEpisodeMetadata[]> {
  try {
    const db = await openDB();
    return new Promise((resolve, reject) => {
      const tx = db.transaction(STORE_NAME, 'readonly');
      const store = tx.objectStore(STORE_NAME);
      const request = store.getAll();

      request.onsuccess = () => {
        const results = (request.result || []) as OfflineEpisodeMetadata[];
        results.sort((a, b) => new Date(b.downloadedAt).getTime() - new Date(a.downloadedAt).getTime());
        resolve(results);
      };
      request.onerror = () => reject(request.error);
    });
  } catch (err) {
    console.warn('Failed to load offline episodes from IndexedDB:', err);
    return [];
  }
}

/** Get a single offline episode by its episodeGroupId */
export async function getOfflineEpisode(episodeGroupId: string): Promise<OfflineEpisodeMetadata | null> {
  try {
    const db = await openDB();
    return new Promise((resolve, reject) => {
      const tx = db.transaction(STORE_NAME, 'readonly');
      const store = tx.objectStore(STORE_NAME);
      const request = store.get(episodeGroupId);

      request.onsuccess = () => resolve(request.result || null);
      request.onerror = () => reject(request.error);
    });
  } catch (err) {
    console.warn(`Failed to get offline episode ${episodeGroupId}:`, err);
    return null;
  }
}

/** Save or update offline episode metadata */
export async function saveOfflineEpisode(metadata: OfflineEpisodeMetadata): Promise<void> {
  const db = await openDB();
  return new Promise((resolve, reject) => {
    const tx = db.transaction(STORE_NAME, 'readwrite');
    const store = tx.objectStore(STORE_NAME);
    const request = store.put(metadata);

    request.onsuccess = () => resolve();
    request.onerror = () => reject(request.error);
  });
}

/** Delete episode metadata and all its cached video chunks */
export async function deleteOfflineEpisode(episodeGroupId: string): Promise<void> {
  try {
    const episode = await getOfflineEpisode(episodeGroupId);

    // 1. Delete from IndexedDB
    const db = await openDB();
    await new Promise<void>((resolve, reject) => {
      const tx = db.transaction(STORE_NAME, 'readwrite');
      const store = tx.objectStore(STORE_NAME);
      const request = store.delete(episodeGroupId);
      request.onsuccess = () => resolve();
      request.onerror = () => reject(request.error);
    });

    // 2. Delete media chunks from Cache Storage
    if (typeof window !== 'undefined' && 'caches' in window && episode?.manifestUrl) {
      const cache = await window.caches.open(OFFLINE_CACHE_NAME);
      const keys = await cache.keys();
      
      // Match keys associated with this episode's manifest URL path
      const manifestBase = episode.manifestUrl.substring(0, episode.manifestUrl.lastIndexOf('/') + 1);
      
      for (const req of keys) {
        if (req.url.startsWith(manifestBase) || req.url === episode.manifestUrl) {
          await cache.delete(req);
        }
      }
    }
  } catch (err) {
    console.error(`Failed to delete offline episode ${episodeGroupId}:`, err);
    throw err;
  }
}

/** Clear all offline storage (Cache and IndexedDB) */
export async function clearAllOfflineData(): Promise<void> {
  try {
    // Clear Cache
    if (typeof window !== 'undefined' && 'caches' in window) {
      await window.caches.delete(OFFLINE_CACHE_NAME);
    }

    // Clear IndexedDB
    const db = await openDB();
    await new Promise<void>((resolve, reject) => {
      const tx = db.transaction(STORE_NAME, 'readwrite');
      const store = tx.objectStore(STORE_NAME);
      const request = store.clear();
      request.onsuccess = () => resolve();
      request.onerror = () => reject(request.error);
    });
  } catch (err) {
    console.error('Failed to clear offline data:', err);
    throw err;
  }
}

/** Get device storage usage and quota estimate */
export async function getStorageQuota(): Promise<StorageInfo> {
  if (typeof navigator !== 'undefined' && navigator.storage && navigator.storage.estimate) {
    try {
      const estimate = await navigator.storage.estimate();
      const usedBytes = estimate.usage || 0;
      const quotaBytes = estimate.quota || 0;
      const percentUsed = quotaBytes > 0 ? (usedBytes / quotaBytes) * 100 : 0;
      return { usedBytes, quotaBytes, percentUsed };
    } catch (e) {
      console.warn('Storage estimate error:', e);
    }
  }
  return { usedBytes: 0, quotaBytes: 0, percentUsed: 0 };
}

/** Request persistent storage so the browser doesn't evict offline videos */
export async function requestPersistentStorage(): Promise<boolean> {
  if (typeof navigator !== 'undefined' && navigator.storage && navigator.storage.persist) {
    try {
      return await navigator.storage.persist();
    } catch (e) {
      console.warn('Persistent storage request error:', e);
    }
  }
  return false;
}

/** Format bytes into human readable format (MB, GB) */
export function formatBytes(bytes: number, decimals = 1): string {
  if (bytes === 0) return '0 B';
  const k = 1024;
  const dm = decimals < 0 ? 0 : decimals;
  const sizes = ['B', 'KB', 'MB', 'GB', 'TB'];
  const i = Math.floor(Math.log(bytes) / Math.log(k));
  return parseFloat((bytes / Math.pow(k, i)).toFixed(dm)) + ' ' + sizes[i];
}
