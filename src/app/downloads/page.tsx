import React from 'react';
import type { Metadata } from 'next';
import { DownloadsClient } from './DownloadsClient';
import { siteConfig } from '@/config/site';

export const metadata: Metadata = {
  title: 'Offline Downloads',
  description: 'Manage episodes saved on your device for offline viewing without an internet connection.',
  alternates: {
    canonical: `${siteConfig.domain}/downloads`,
  },
  robots: {
    index: false,
    follow: true,
  },
};

export default function DownloadsPage() {
  return (
    <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12">
      <div className="mb-8">
        <h1 className="text-3xl sm:text-4xl font-bold font-display text-text-primary tracking-tight mb-2">
          Offline Downloads
        </h1>
        <p className="text-sm text-text-secondary max-w-xl">
          Watch saved episodes anytime without an internet connection.
        </p>
      </div>

      <DownloadsClient />
    </div>
  );
}
