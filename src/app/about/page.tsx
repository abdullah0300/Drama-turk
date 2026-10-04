import React from 'react';
import type { Metadata } from 'next';
import { ShieldCheck, Play, Sparkles, Database } from 'lucide-react';
import { siteConfig } from '@/config/site';
import Link from 'next/link';
import { getPublicDramas } from '@/lib/public-catalog-cache';
import { isDramaPlayable } from '@/types/catalog';

export const metadata: Metadata = {
  title: 'About Great Nation',
  description: 'Learn how Great Nation organizes Turkish and historical dramas, subtitle renditions, Urdu dubbed editions and sourced episode guides.',
  alternates: {
    canonical: `${siteConfig.domain}/about`,
  },
  openGraph: { title: 'About Great Nation', description: 'Our viewing catalog, episode guides and approach to source accuracy.', url: `${siteConfig.domain}/about` },
};

export default async function AboutPage() {
  const dramas = (await getPublicDramas()).filter(d => (d.status === undefined || d.status === 'published') && isDramaPlayable(d));
  return (
    <div className="max-w-reading mx-auto px-4 sm:px-6 py-12 sm:py-16 space-y-10">
      <div>
        <div className="inline-flex items-center gap-1.5 px-3 py-1 rounded bg-amber-500/10 border border-amber-500/20 text-xs font-semibold text-amber-400 uppercase tracking-wider mb-3">
          <Sparkles size={14} />
          Our catalog and episode guides
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
            &ldquo;{siteConfig.brandPromise}&rdquo; We provide an ad-free player without pre-roll or mid-roll advertisements or pop-ups. Choose an available episode and a listed viewing rendition to start watching.
          </p>
        </section>

        <section className="space-y-3">
          <h2 className="text-lg font-bold text-text-primary font-display flex items-center gap-2">
            <Play className="text-amber-500" size={18} />
            Our Viewing Catalog
          </h2>
          <p>
            Our current public catalog contains {dramas.length} {dramas.length === 1 ? 'drama' : 'dramas'}:
          </p>
          <ul className="list-disc pl-5 space-y-1">
            {dramas.map(d => <li key={d.id}><Link href={`/drama/${d.id}`}>{d.name}</Link></li>)}
          </ul>
          <p>Each season guide lists the episodes currently available in that viewing edition. Urdu and English subtitle renditions are choices for the same episode. Dubbed editions have separate chapter lists and may divide the story differently. Counts describe available pages, not a promise that a whole season is complete.</p>
          <p>
            We check media availability and test selected episodes in a browser. A reachable stream does not confirm every subtitle translation or uninterrupted playback of the entire episode. Unavailable sources and unresolved episode identities are excluded from public watch lists while they are reviewed.
          </p>
        </section>

        <section className="space-y-3">
          <h2 className="text-lg font-bold text-text-primary font-display flex items-center gap-2">
            <Database className="text-amber-500" size={18} />
            Data Integrity &amp; Provenance
          </h2>
          <p>
            Episode guides distinguish a season or edition&apos;s episode label from the original broadcast&apos;s Bölüm number where that relationship is established. Numbering gaps mean those chapters are not currently in the available list; navigation follows the next available episode.
          </p>
          <p>We use official broadcaster and production sources for series information and attributed episode previews. Historical dramas are dramatizations, not documentary evidence. Older imported records are retained for review and are not included in the current public viewing catalog.</p>
        </section>
      </div>
    </div>
  );
}
