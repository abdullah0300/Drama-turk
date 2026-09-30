import React from 'react';
import type { Metadata } from 'next';
import { ShieldCheck, Play, Sparkles, Database } from 'lucide-react';
import { siteConfig } from '@/config/site';

export const metadata: Metadata = {
  title: 'About Platform',
  description: 'Learn about our mission to provide an ad-free, uninterrupted drama viewing experience.',
  alternates: {
    canonical: `${siteConfig.domain}/about`,
  },
};

export default function AboutPage() {
  return (
    <div className="max-w-reading mx-auto px-4 sm:px-6 py-12 sm:py-16 space-y-10">
      <div>
        <div className="inline-flex items-center gap-1.5 px-3 py-1 rounded bg-amber-500/10 border border-amber-500/20 text-xs font-semibold text-amber-400 uppercase tracking-wider mb-3">
          <Sparkles size={14} />
          Editorial Craft &amp; Engineering
        </div>
        <h1 className="text-3xl sm:text-4xl font-bold font-display text-text-primary tracking-tight mb-4">
          About {siteConfig.name}
        </h1>
        <p className="text-base text-text-secondary leading-relaxed font-serif">
          Our core purpose is simple: an uninterrupted, ad-free streaming home for historical and cultural drama series.
        </p>
      </div>

      <div className="space-y-6 text-sm text-text-secondary leading-relaxed border-t border-surface-border pt-8">
        <section className="space-y-3">
          <h2 className="text-lg font-bold text-text-primary font-display flex items-center gap-2">
            <ShieldCheck className="text-amber-500" size={18} />
            Our Brand Promise
          </h2>
          <p>
            &ldquo;{siteConfig.brandPromise}&rdquo; Traditional drama streaming platforms are plagued by deceptive pre-roll advertisements, intrusive mid-rolls that destroy dramatic pacing, and unauthorized redirects. We reject this paradigm. On Drama Platform, viewers select an episode and immediately begin watching without commercial distractions.
          </p>
        </section>

        <section className="space-y-3">
          <h2 className="text-lg font-bold text-text-primary font-display flex items-center gap-2">
            <Play className="text-amber-500" size={18} />
            Verified Pilot Release
          </h2>
          <p>
            Rather than making unsupported claims of universal playback across thousands of unverified records, we launched with a rigorous pilot release: <strong className="text-text-primary">Mehmed: Fetihler Sultani Season 2</strong>, featuring 36 complete episodes with verified dual-language Urdu and English subtitles.
          </p>
          <p>
            The remaining 23 dramas are preserved in our catalog directory with genuine historical metadata and source records, but are honestly labeled as preview records until stream quality is individually validated.
          </p>
        </section>

        <section className="space-y-3">
          <h2 className="text-lg font-bold text-text-primary font-display flex items-center gap-2">
            <Database className="text-amber-500" size={18} />
            Data Integrity &amp; Provenance
          </h2>
          <p>
            Our catalog adapter preserves all source records without destructive assumptions. Distinct broadcast collections—such as Turkish audio with English subtitles versus Urdu dubbed cuts—are maintained separately because episode pacing and boundaries naturally vary between releases.
          </p>
        </section>
      </div>
    </div>
  );
}
