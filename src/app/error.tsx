'use client';

import React, { useEffect } from 'react';
import Link from 'next/link';
import { AlertCircle, RotateCcw, Home } from 'lucide-react';

export default function GlobalError({
  error,
  reset,
}: {
  error: Error & { digest?: string };
  reset: () => void;
}) {
  useEffect(() => {
    console.error('Unhandled app error:', error);
  }, [error]);

  return (
    <div className="min-h-[70vh] flex items-center justify-center px-4 sm:px-6">
      <div className="max-w-md w-full text-center space-y-6 bg-surface/40 border border-surface-border p-8 rounded-2xl">
        <div className="w-16 h-16 rounded-full bg-red-500/10 text-red-400 flex items-center justify-center mx-auto border border-red-500/20">
          <AlertCircle size={32} />
        </div>
        <div>
          <span className="text-xs font-mono font-bold text-red-400 uppercase tracking-widest block mb-2">
            Playback Application Error
          </span>
          <h1 className="text-2xl sm:text-3xl font-bold font-display text-text-primary">
            Something went wrong
          </h1>
          <p className="text-sm text-text-secondary mt-2 leading-relaxed">
            An unexpected error occurred while rendering the page. You can attempt to retry the operation or return to the catalog home.
          </p>
        </div>

        <div className="flex flex-wrap items-center justify-center gap-3 pt-2">
          <button
            onClick={() => reset()}
            className="inline-flex items-center gap-2 px-5 py-2.5 rounded-lg bg-amber-500 hover:bg-amber-600 text-stone-950 text-sm font-semibold transition-colors"
          >
            <RotateCcw size={16} />
            Try Again
          </button>
          <Link
            href="/"
            className="inline-flex items-center gap-2 px-5 py-2.5 rounded-lg bg-surface hover:bg-surface-hover border border-surface-border text-text-primary text-sm font-medium transition-colors"
          >
            <Home size={16} />
            Return Home
          </Link>
        </div>
      </div>
    </div>
  );
}
