/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  images: {
    remotePatterns: [
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
