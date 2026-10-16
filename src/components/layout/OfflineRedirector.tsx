'use client';

import React, { useEffect, useState } from 'react';
import { usePathname, useRouter } from 'next/navigation';
import { WifiOff, Wifi } from 'lucide-react';

export function OfflineRedirector() {
  const router = useRouter();
  const pathname = usePathname();
  const [isOffline, setIsOffline] = useState(false);
  const [showToast, setShowToast] = useState(false);
  const [toastMessage, setToastMessage] = useState('');

  useEffect(() => {
    if (typeof window === 'undefined') return;

    const checkInitialOnline = () => {
      if (!navigator.onLine) {
        setIsOffline(true);
        if (pathname !== '/downloads') {
          router.replace('/downloads');
          setToastMessage("You're offline — Showing your downloaded episodes");
          setShowToast(true);
        }
      }
    };

    checkInitialOnline();

    const handleOffline = () => {
      setIsOffline(true);
      setToastMessage("You're offline — Showing your downloaded episodes");
      setShowToast(true);
      if (pathname !== '/downloads') {
        router.replace('/downloads');
      }
    };

    const handleOnline = () => {
      setIsOffline(false);
      setToastMessage("You're back online!");
      setShowToast(true);
      setTimeout(() => setShowToast(false), 3500);
    };

    window.addEventListener('offline', handleOffline);
    window.addEventListener('online', handleOnline);

    return () => {
      window.removeEventListener('offline', handleOffline);
      window.removeEventListener('online', handleOnline);
    };
  }, [pathname, router]);

  if (!showToast) return null;

  return (
    <div className="fixed bottom-20 md:bottom-6 right-4 sm:right-6 z-50 animate-in fade-in slide-in-from-bottom-4 duration-300">
      <div className={`flex items-center gap-2.5 px-4 py-2.5 rounded-xl border shadow-2xl text-xs font-medium backdrop-blur-md ${
        isOffline 
          ? 'bg-zinc-900/95 border-amber-500/40 text-amber-300 shadow-amber-500/10' 
          : 'bg-zinc-900/95 border-emerald-500/40 text-emerald-300 shadow-emerald-500/10'
      }`}>
        {isOffline ? <WifiOff size={15} className="text-amber-400 animate-pulse" /> : <Wifi size={15} className="text-emerald-400" />}
        <span>{toastMessage}</span>
        {isOffline && (
          <button
            onClick={() => setShowToast(false)}
            className="ml-2 text-zinc-500 hover:text-zinc-300 text-[11px] underline"
          >
            Dismiss
          </button>
        )}
      </div>
    </div>
  );
}
