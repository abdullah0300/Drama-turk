// Great Nation - Offline Video Streaming Service Worker (v2.2)
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
        try {
          const cache = await caches.open(CACHE_NAME);

          // 1. Exact request match
          let cached = await cache.match(event.request);
          if (cached) return cached;

          // 2. Loose match ignoring search params
          cached = await cache.match(event.request, { ignoreSearch: true });
          if (cached) return cached;

          // 3. Exact URL string match
          cached = await cache.match(event.request.url);
          if (cached) return cached;

          // 4. URL stripped of query string
          const cleanUrl = event.request.url.split('?')[0];
          cached = await cache.match(cleanUrl);
          if (cached) return cached;

          // 5. Segment filename fallback (matches .../segment123.ts regardless of prefix)
          if (url.pathname.endsWith('.ts') || url.pathname.endsWith('.m4s')) {
            const segName = url.pathname.substring(url.pathname.lastIndexOf('/') + 1);
            const keys = await cache.keys();
            for (const key of keys) {
              if (key.url.endsWith('/' + segName) || key.url.includes(segName)) {
                const found = await cache.match(key);
                if (found) return found;
              }
            }
          }

          // If offline and not in cache: return clean offline status instead of unhandled rejection
          if (!navigator.onLine) {
            return new Response('Offline and chunk not in cache', { status: 404 });
          }

          // If online, fetch from network
          return await fetch(event.request);
        } catch (err) {
          return new Response('Media request failed', { status: 504 });
        }
      })()
    );
    return;
  }

  // 2. Offline Navigation Fallback: If offline and navigating anywhere, serve /downloads
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
