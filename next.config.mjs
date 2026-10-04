/** @type {import('next').NextConfig} */
const nextConfig = {
  // Isolate verification builds when a local development server is running.
  distDir: process.env.NEXT_BUILD_DIR || '.next',
  reactStrictMode: true,
  staticPageGenerationTimeout: 180,
  async redirects() {
    const base = '/drama/alparslan-buyuk-selcuklu/season-2';
    return [
      { source: `${base}/episode-10-b`, destination: `${base}/episode-10`, permanent: true },
      ...[58, 59, 60, 61].map(broadcast => ({
        source: `${base}/episode-${broadcast}`,
        destination: `${base}/episode-${broadcast - 27}`,
        permanent: true,
      })),
      { source: '/drama/alparslan-buyuk-selcuklu/watch/collection-37-episode-10',
        destination: `${base}/episode-10`, permanent: true },
    ];
  },
  images: {
    remotePatterns: [
      { protocol: 'https', hostname: 'cdn-i.pr.trt.com.tr' },
      {
        protocol: 'https',
        hostname: 'play.niazitv.pk',
      },
      {
        protocol: 'https',
        hostname: 'cdn4.niazitv.pk',
      },
      {
        protocol: 'https',
        hostname: 'video.twimg.com',
      },
    ],
  },
};

export default nextConfig;
