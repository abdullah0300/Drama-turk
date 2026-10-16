// Great Nation - Offline Video Streaming Service Worker (v2.3)
const CACHE_NAME = 'offline-media-v1';

self.addEventListener('install', (event) => {
  self.skipWaiting();
  event.waitUntil(
    caches.open(CACHE_NAME).then((cache) => {
      return cache.add('/downloads').catch(() => {});
    })
  );
});

self.addEventListener('activate', (event) => {
  event.waitUntil(
    (async () => {
      await self.clients.claim();
    })()
  );
});

self.addEventListener('fetch', (event) => {
  const url = new URL(event.request.url);

  // 1. Strictly intercept Video Chunks and HLS Manifests (.ts, .m3u8, .m4s)
  const isMediaRequest =
    url.pathname.endsWith('.m3u8') ||
    url.pathname.endsWith('.ts') ||
    url.pathname.endsWith('.m4s') ||
    url.pathname.includes('/stream') ||
    url.search.includes('.m3u8') ||
    url.search.includes('.ts') ||
    event.request.destination === 'video';

  if (isMediaRequest) {
    event.respondWith(
      (async () => {
        const cache = await caches.open(CACHE_NAME);
        const isOffline = !navigator.onLine;
        const isFromDownloadsPage =
          event.request.referrer && event.request.referrer.includes('/downloads');

        // A) If user is OFFLINE or playing inside the /downloads library:
        // Try CACHE FIRST to play the locally saved media.
        if (isOffline || isFromDownloadsPage) {
          // Exact URL match (preserves unique episode query tokens and segment paths)
          let cached = await cache.match(event.request);
          if (cached) return cached;

          cached = await cache.match(event.request.url);
          if (cached) return cached;

          if (isOffline) {
            return new Response('Offline and chunk not in cache', { status: 404 });
          }
        }

        // B) If user is ONLINE browsing dramas (e.g. S2 Ep 3):
        // Use NETWORK FIRST so new episodes stream live from the network without collision.
        try {
          return await fetch(event.request);
        } catch (fetchErr) {
          // If network fetch fails (e.g., sudden connection drop), fallback to exact cache match
          const cached = (await cache.match(event.request)) || (await cache.match(event.request.url));
          if (cached) return cached;
          return new Response('Media request failed', { status: 504 });
        }
      })()
    );
    return;
  }

  // 2. Offline Navigation Fallback: If offline and navigating anywhere, serve cached /downloads
  if (event.request.mode === 'navigate') {
    event.respondWith(
      (async () => {
        try {
          const networkResponse = await fetch(event.request);
          // When user views /downloads online, cache the page shell
          if (url.pathname === '/downloads') {
            const cache = await caches.open(CACHE_NAME);
            cache.put('/downloads', networkResponse.clone());
          }
          return networkResponse;
        } catch (err) {
          // If offline, serve cached /downloads page immediately
          const cache = await caches.open(CACHE_NAME);
          const cachedDownloads = await cache.match('/downloads');
          if (cachedDownloads) {
            return cachedDownloads;
          }
          throw err;
        }
      })()
    );
  }
});
