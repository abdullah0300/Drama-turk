import React from 'react';
import type { Metadata } from 'next';
import { MyListClient } from './MyListClient';
import { siteConfig } from '@/config/site';

export const metadata: Metadata = {
  title: 'My List & Watch History',
  description: 'Your saved dramas and resume positions stored privately on your device.',
  alternates: {
    canonical: `${siteConfig.domain}/my-list`,
  },
  // Exclude personal lists from search engines
  robots: {
    index: false,
    follow: true,
  },
};

export default function MyListPage() {
  return (
    <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12">
      <div className="mb-8">
        <h1 className="text-3xl sm:text-4xl font-bold font-display text-text-primary tracking-tight mb-2">
          My List &amp; Viewing History
        </h1>
        <p className="text-sm text-text-secondary max-w-xl">
          Quickly resume unfinished episodes or browse your personal saved titles.
        </p>
      </div>

      <MyListClient />
    </div>
  );
}
