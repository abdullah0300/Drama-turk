import { LoaderCircle } from 'lucide-react';

export default function Loading() {
  return (
    <section className="mx-auto flex min-h-[60vh] max-w-6xl flex-col justify-center gap-8 px-6 py-24" aria-busy="true" aria-label="Loading page">
      <div role="status" className="flex items-center gap-3 text-amber-400">
        <LoaderCircle className="h-5 w-5 animate-spin motion-reduce:animate-none" aria-hidden="true" />
        <span className="text-sm font-medium">Loading page…</span>
      </div>
      <div aria-hidden="true" className="space-y-6 animate-pulse motion-reduce:animate-none">
        <div className="h-10 w-2/3 rounded-lg bg-white/10" />
        <div className="h-4 w-1/2 rounded bg-white/5" />
        <div className="grid grid-cols-2 gap-4 md:grid-cols-4">
          {[0, 1, 2, 3].map(i => <div key={i} className="aspect-[2/3] rounded-xl bg-white/5" />)}
        </div>
      </div>
    </section>
  );
}
