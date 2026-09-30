import React from 'react';
import Link from 'next/link';
import { Film, Home, Compass } from 'lucide-react';

export default function NotFound() {
  return (
    <div className="min-h-[70vh] flex items-center justify-center px-4 sm:px-6">
      <div className="max-w-md w-full text-center space-y-6 bg-surface/40 border border-surface-border p-8 rounded-2xl">
        <div className="w-16 h-16 rounded-full bg-amber-500/10 text-amber-500 flex items-center justify-center mx-auto border border-amber-500/20">
          <Film size={32} />
        </div>
        <div>
          <span className="text-xs font-mono font-bold text-amber-500 uppercase tracking-widest block mb-2">
            Error 404
          </span>
          <h1 className="text-2xl sm:text-3xl font-bold font-display text-text-primary">
            Record Not Found
          </h1>
          <p className="text-sm text-text-secondary mt-2 leading-relaxed">
            The drama, collection, or episode you requested does not exist in our catalog or has been relocated.
          </p>
        </div>

        <div className="flex flex-wrap items-center justify-center gap-3 pt-2">
          <Link
            href="/"
            className="inline-flex items-center gap-2 px-5 py-2.5 rounded-lg bg-amber-500 hover:bg-amber-600 text-stone-950 text-sm font-semibold transition-colors"
          >
            <Home size={16} />
            Return Home
          </Link>
          <Link
            href="/browse"
            className="inline-flex items-center gap-2 px-5 py-2.5 rounded-lg bg-surface hover:bg-surface-hover border border-surface-border text-text-primary text-sm font-medium transition-colors"
          >
            <Compass size={16} />
            Browse Catalog
          </Link>
        </div>
      </div>
    </div>
  );
}
