import Link from 'next/link';
import { Film } from 'lucide-react';
import type { Metadata } from 'next';
import { cache } from 'react';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { comingSoonDramaNames } from '@/lib/coming-soon-dramas';

export const getComingSoonDrama = cache(async (id: string) => {
  if (await supabaseCatalog.getDrama(id)) return undefined;
  return await supabaseCatalog.getHiddenDramaName(id) || comingSoonDramaNames[id];
});
export const comingSoonMetadata: Metadata = {
  title: 'Coming soon | Great Nation',
  description: 'We’re preparing this drama for release on Great Nation. Explore our available series while you wait.',
  robots: { index: false, follow: true },
};

export function ComingSoon({ name }: { name: string }) {
  return <section className="flex min-h-[70vh] items-center justify-center px-6 py-24">
    <div className="w-full max-w-lg rounded-2xl border border-surface-border bg-surface/40 p-8 text-center">
      <Film className="mx-auto mb-6 h-10 w-10 text-amber-500" aria-hidden="true" />
      <p className="mb-3 text-sm text-text-secondary">{name}</p>
      <h1 className="font-display text-3xl font-bold">Coming soon</h1>
      <p className="mt-4 leading-relaxed text-text-secondary">We’re preparing this drama for release on Great Nation. Explore our available series while you wait.</p>
      <Link href="/browse" className="mt-6 inline-flex rounded-lg bg-amber-500 px-5 py-3 text-sm font-semibold text-stone-950 hover:bg-amber-600">Browse available dramas</Link>
    </div>
  </section>;
}
