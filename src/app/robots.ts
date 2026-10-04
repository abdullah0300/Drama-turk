import { MetadataRoute } from 'next';
import { siteConfig, publicIndexingEnabled } from '@/config/site';

export default function robots(): MetadataRoute.Robots {
  const baseUrl = siteConfig.domain;

  return {
    rules: [
      {
        userAgent: '*',
        ...(publicIndexingEnabled ? { allow: '/', disallow: ['/admin', '/api/', '/preview'] } : { disallow: '/' }),
      },
    ],
    sitemap: [
      `${baseUrl}/sitemap.xml`,
      `${baseUrl}/video-sitemap.xml`,
    ],
  };
}
