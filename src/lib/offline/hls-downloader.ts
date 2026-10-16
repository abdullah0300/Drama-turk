import { QualityOption, OfflineEpisodeMetadata } from '@/types/offline';
import { OFFLINE_CACHE_NAME, saveOfflineEpisode } from './storage-manager';

export interface DownloadProgress {
  downloadedChunks: number;
  totalChunks: number;
  percent: number;
  bytesDownloaded: number;
}

/**
 * Parses a master M3U8 playlist to extract available quality renditions (1080p, 720p, etc.)
 */
export async function fetchAvailableQualities(masterPlaylistUrl: string): Promise<QualityOption[]> {
  try {
    const res = await fetch(masterPlaylistUrl);
    if (!res.ok) throw new Error(`HTTP ${res.status} fetching playlist`);
    const text = await res.text();

    const qualities: QualityOption[] = [];
    const lines = text.split('\n');

    let currentBandwidth: number | undefined;
    let currentResolution: string | undefined;
    let currentHeight: number | undefined;

    for (let i = 0; i < lines.length; i++) {
      const line = lines[i].trim();

      if (line.startsWith('#EXT-X-STREAM-INF:')) {
        const bwMatch = line.match(/BANDWIDTH=(\d+)/);
        if (bwMatch) currentBandwidth = parseInt(bwMatch[1], 10);

        const resMatch = line.match(/RESOLUTION=(\d+)x(\d+)/);
        if (resMatch) {
          currentResolution = `${resMatch[1]}x${resMatch[2]}`;
          currentHeight = parseInt(resMatch[2], 10);
        }
      } else if (line && !line.startsWith('#')) {
        const streamUrl = new URL(line, masterPlaylistUrl).href;
        const height = currentHeight || 720;
        const label = height >= 1080 ? '1080p (Full HD)' : height >= 720 ? '720p (HD)' : height >= 480 ? '480p (SD)' : `${height}p`;

        qualities.push({
          id: `${height}p`,
          label,
          resolution: currentResolution,
          height,
          bandwidth: currentBandwidth,
          url: streamUrl,
          estimatedSizeBytes: currentBandwidth ? Math.round((currentBandwidth * 2700) / 8) : undefined,
        });

        currentBandwidth = undefined;
        currentResolution = undefined;
        currentHeight = undefined;
      }
    }

    if (qualities.length === 0) {
      qualities.push({
        id: 'default',
        label: 'Default Quality',
        url: masterPlaylistUrl,
      });
    } else {
      qualities.sort((a, b) => (b.height || 0) - (a.height || 0));
    }

    return qualities;
  } catch (err) {
    console.warn('Could not inspect master playlist variants:', err);
    return [
      {
        id: 'default',
        label: 'Standard Quality',
        url: masterPlaylistUrl,
      },
    ];
  }
}

/**
 * Fetch a video chunk with automatic micro-retries for intermittent network hiccups
 */
async function fetchChunkWithRetry(url: string, signal?: AbortSignal, maxRetries = 2): Promise<Blob> {
  let attempt = 0;
  while (attempt <= maxRetries) {
    try {
      const res = await fetch(url, { signal });
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      return await res.blob();
    } catch (err: any) {
      if (signal?.aborted || attempt === maxRetries) throw err;
      attempt++;
      await new Promise((r) => setTimeout(r, 200 * attempt));
    }
  }
  throw new Error(`Failed to fetch ${url}`);
}

/**
 * High-speed parallel HLS segment downloader with pipelined CacheStorage writes
 */
export async function downloadHlsStream(
  mediaPlaylistUrl: string,
  metadata: OfflineEpisodeMetadata,
  options: {
    signal?: AbortSignal;
    onProgress?: (progress: DownloadProgress) => void;
  }
): Promise<void> {
  const { signal, onProgress } = options;

  if (typeof window === 'undefined' || !('caches' in window)) {
    throw new Error('Cache Storage API not available in this browser');
  }

  // 1. Fetch Media Playlist
  const playlistRes = await fetch(mediaPlaylistUrl, { signal });
  if (!playlistRes.ok) throw new Error(`Failed to fetch media playlist: HTTP ${playlistRes.status}`);
  const playlistText = await playlistRes.text();

  // 2. Parse Segment URLs and rewrite playlist to use absolute URLs
  const lines = playlistText.split('\n');
  const segmentUrls: string[] = [];

  const rewrittenLines = lines.map((line) => {
    const trimmed = line.trim();
    if (trimmed && !trimmed.startsWith('#')) {
      const fullUrl = new URL(trimmed, mediaPlaylistUrl).href;
      segmentUrls.push(fullUrl);
      return fullUrl; // Ensure segment path is absolute in cached playlist
    }
    return line;
  });

  if (segmentUrls.length === 0) {
    throw new Error('No playable video segments found in this playlist');
  }

  const absolutePlaylistText = rewrittenLines.join('\n');
  const cache = await window.caches.open(OFFLINE_CACHE_NAME);

  // Cache the absolute playlist so offline player resolves exact cached segment URLs
  await cache.put(
    mediaPlaylistUrl,
    new Response(absolutePlaylistText, {
      headers: { 'Content-Type': 'application/vnd.apple.mpegurl' },
    })
  );

  if (metadata.manifestUrl && metadata.manifestUrl !== mediaPlaylistUrl) {
    await cache.put(
      metadata.manifestUrl,
      new Response(absolutePlaylistText, {
        headers: { 'Content-Type': 'application/vnd.apple.mpegurl' },
      })
    );
  }

  // Update initial metadata
  metadata.totalChunks = segmentUrls.length;
  metadata.status = 'downloading';
  await saveOfflineEpisode(metadata);

  let downloadedChunks = 0;
  let totalSizeBytes = 0;

  // Adaptive concurrency: 4 on mobile devices to preserve RAM/battery, 6 on desktop to saturate connection
  const isMobile = typeof navigator !== 'undefined' && /Mobi|Android|iPhone/i.test(navigator.userAgent);
  const CONCURRENCY = isMobile ? 4 : 6;

  let currentIndex = 0;

  // Background CacheStorage write queue (non-blocking pipelining)
  const activeWrites: Set<Promise<void>> = new Set();

  function pipelineCacheWrite(chunkUrl: string, blob: Blob) {
    const writePromise = cache
      .put(
        chunkUrl,
        new Response(blob, {
          headers: {
            'Content-Type': 'video/MP2T',
            'Content-Length': blob.size.toString(),
          },
        })
      )
      .then(() => {
        activeWrites.delete(writePromise);
      })
      .catch((err) => {
        activeWrites.delete(writePromise);
        console.warn('Cache write warning:', err);
      });

    activeWrites.add(writePromise);
  }

  // Throttled progress notification
  let lastProgressTime = 0;
  function notifyProgress(force = false) {
    const now = Date.now();
    if (force || now - lastProgressTime > 150) {
      lastProgressTime = now;
      const percent = Math.round((downloadedChunks / segmentUrls.length) * 100);
      onProgress?.({
        downloadedChunks,
        totalChunks: segmentUrls.length,
        percent,
        bytesDownloaded: totalSizeBytes,
      });
    }
  }

  // 3. Parallel Network Workers
  async function worker() {
    while (currentIndex < segmentUrls.length) {
      if (signal?.aborted) {
        throw new Error('Download aborted by user');
      }

      const index = currentIndex++;
      const chunkUrl = segmentUrls[index];

      // Check if already in cache (instant resume support)
      const cached = await cache.match(chunkUrl);
      if (cached) {
        const blob = await cached.blob();
        totalSizeBytes += blob.size;
        downloadedChunks++;
      } else {
        const blob = await fetchChunkWithRetry(chunkUrl, signal);
        totalSizeBytes += blob.size;
        downloadedChunks++;

        // Pipeline write to disk asynchronously without blocking worker from fetching the next chunk!
        pipelineCacheWrite(chunkUrl, blob);
      }

      notifyProgress(downloadedChunks === segmentUrls.length);

      // Periodically update IndexedDB every 25 chunks or at completion
      if (downloadedChunks % 25 === 0 || downloadedChunks === segmentUrls.length) {
        metadata.downloadedChunks = downloadedChunks;
        metadata.totalSizeBytes = totalSizeBytes;
        await saveOfflineEpisode(metadata);
      }
    }
  }

  const workers = Array.from(
    { length: Math.min(CONCURRENCY, segmentUrls.length) },
    () => worker()
  );

  await Promise.all(workers);

  // 4. Ensure all background disk writes finish before marking complete
  if (activeWrites.size > 0) {
    await Promise.all(Array.from(activeWrites));
  }

  // Final progress notification
  notifyProgress(true);

  // 5. Mark completed in database
  metadata.status = 'completed';
  metadata.downloadedChunks = downloadedChunks;
  metadata.totalSizeBytes = totalSizeBytes;
  await saveOfflineEpisode(metadata);
}
