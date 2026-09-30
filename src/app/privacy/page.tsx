import React from 'react';
import type { Metadata } from 'next';
import { Lock, HardDrive, ShieldCheck } from 'lucide-react';
import { siteConfig } from '@/config/site';

export const metadata: Metadata = {
  title: 'Privacy Policy & Local Storage',
  description: 'How we respect your privacy: zero advertising trackers and 100% on-device preferences.',
  alternates: {
    canonical: `${siteConfig.domain}/privacy`,
  },
};

export default function PrivacyPage() {
  return (
    <div className="max-w-reading mx-auto px-4 sm:px-6 py-12 sm:py-16 space-y-8">
      <div>
        <div className="inline-flex items-center gap-1.5 px-3 py-1 rounded bg-amber-500/10 border border-amber-500/20 text-xs font-semibold text-amber-400 uppercase tracking-wider mb-3">
          <ShieldCheck size={14} />
          Transparency &amp; Local Privacy
        </div>
        <h1 className="text-3xl sm:text-4xl font-bold font-display text-text-primary tracking-tight mb-4">
          Privacy Policy
        </h1>
        <p className="text-sm sm:text-base text-text-secondary leading-relaxed">
          This document describes precisely how {siteConfig.name} handles viewing data, client-side storage, and analytics.
        </p>
      </div>

      <div className="space-y-6 text-sm text-text-secondary leading-relaxed border-t border-surface-border pt-8">
        <section className="space-y-3">
          <h2 className="text-base font-bold text-text-primary flex items-center gap-2">
            <HardDrive size={18} className="text-amber-500" />
            1. Client-Side Device Storage (Local Storage)
          </h2>
          <p>
            When you bookmark dramas or stream episodes, the following records are stored strictly in your browser&apos;s <code className="text-amber-400 font-mono text-xs">localStorage</code>:
          </p>
          <ul className="list-disc pl-5 space-y-1.5 text-xs text-text-secondary">
            <li><strong>My List:</strong> The IDs and titles of series you choose to save.</li>
            <li><strong>Watch History:</strong> The episode ID and current playback timestamp (e.g. 14 minutes, 20 seconds) to enable the &ldquo;Resume Watching&rdquo; feature.</li>
            <li><strong>Player Preferences:</strong> Your volume setting, mute state, and preference for autoplaying the next episode.</li>
          </ul>
          <p>
            None of this data is transmitted to an external user account or remote database. You can purge all saved history and preferences at any time by clicking &ldquo;Clear History&rdquo; on the My List page or by clearing your browser cache.
          </p>
        </section>

        <section className="space-y-3">
          <h2 className="text-base font-bold text-text-primary flex items-center gap-2">
            <Lock size={18} className="text-amber-500" />
            2. Advertising &amp; Third-Party Trackers
          </h2>
          <p>
            In accordance with our core promise (&ldquo;{siteConfig.supportingCopy}&rdquo;), our platform runs <strong className="text-text-primary">zero third-party advertising SDKs</strong>, zero pop-up or pop-under redirect scripts, and zero advertising cookies.
          </p>
        </section>

        <section className="space-y-3">
          <h2 className="text-base font-bold text-text-primary flex items-center gap-2">
            <ShieldCheck size={18} className="text-amber-500" />
            3. Media Streams &amp; Upstream Hosts
          </h2>
          <p>
            Video streams are loaded via direct HLS (.m3u8) links from authorized content distribution networks. When fetching video segments, your browser makes direct network requests to the respective media host. We do not inspect or proxy your media traffic.
          </p>
        </section>
      </div>
    </div>
  );
}
