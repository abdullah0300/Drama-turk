import React from 'react';
import Link from 'next/link';
import { siteConfig } from '@/config/site';

export function Footer() {
  return (
    <footer className="w-full border-t border-surface-border bg-canvas-subtle mt-auto py-12 px-4 sm:px-6 lg:px-8">
      <div className="max-w-page mx-auto">
        <div className="grid grid-cols-1 md:grid-cols-4 gap-8 mb-8">
          {/* Brand info */}
          <div className="md:col-span-2">
            <span className="font-display font-bold tracking-widest text-lg text-amber-500 mb-2 block">
              {siteConfig.wordmark}
            </span>
            <p className="text-sm text-text-secondary max-w-sm mb-4 leading-relaxed">
              {siteConfig.tagline} An uninterrupted, ad-free streaming experience crafted for historical and cultural drama enthusiasts.
            </p>
            <div className="inline-flex items-center gap-2 px-3 py-1 rounded bg-amber-500/10 border border-amber-500/20 text-xs text-amber-400">
              <span>{siteConfig.supportingCopy}</span>
            </div>
          </div>

          {/* Catalog Navigation */}
          <div>
            <h3 className="text-xs font-semibold uppercase tracking-wider text-text-tertiary mb-3">
              Explore
            </h3>
            <ul className="space-y-2 text-sm text-text-secondary">
              <li>
                <Link href="/browse" className="hover:text-amber-400 transition-colors">
                  Browse All Dramas
                </Link>
              </li>
              <li>
                <Link href="/drama/mehmed-fetihler-sultani" className="hover:text-amber-400 transition-colors">
                  Mehmed: Fetihler Sultani (Pilot)
                </Link>
              </li>
              <li>
                <Link href="/search" className="hover:text-amber-400 transition-colors">
                  Search &amp; Filters
                </Link>
              </li>
              <li>
                <Link href="/my-list" className="hover:text-amber-400 transition-colors">
                  My List &amp; History
                </Link>
              </li>
            </ul>
          </div>

          {/* Platform & Transparency */}
          <div>
            <h3 className="text-xs font-semibold uppercase tracking-wider text-text-tertiary mb-3">
              Information
            </h3>
            <ul className="space-y-2 text-sm text-text-secondary">
              <li>
                <Link href="/about" className="hover:text-amber-400 transition-colors">
                  About Platform
                </Link>
              </li>
              <li>
                <Link href="/privacy" className="hover:text-amber-400 transition-colors">
                  Privacy &amp; Local Storage
                </Link>
              </li>
              <li>
                <Link href="/contact" className="hover:text-amber-400 transition-colors">
                  Contact &amp; Diagnostics
                </Link>
              </li>
              <li>
                <Link href="/admin" className="text-text-muted hover:text-text-tertiary transition-colors">
                  Admin &amp; Queue
                </Link>
              </li>
            </ul>
          </div>
        </div>

        <div className="pt-8 border-t border-surface-border flex flex-col sm:flex-row items-center justify-between text-xs text-text-muted gap-4">
          <p>© {new Date().getFullYear()} {siteConfig.name}. Watch history, resume points, and personal preferences remain private on your device.</p>
          <div className="flex gap-4">
            <Link href="/privacy" className="hover:text-text-secondary">Privacy Policy</Link>
            <Link href="/contact" className="hover:text-text-secondary">Report Playback Problem</Link>
          </div>
        </div>
      </div>
    </footer>
  );
}
