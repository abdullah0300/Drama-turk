'use client';

import React from 'react';
import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { Home, Compass, Search, Bookmark } from 'lucide-react';
import { useUserPreferences } from '@/context/UserPreferencesContext';

export function MobileNav() {
  const pathname = usePathname();
  const { myList } = useUserPreferences();

  // Hide mobile nav in fullscreen or watch pages if preferred
  const isWatchPage = pathname.includes('/watch');

  return (
    <nav 
      aria-label="Mobile Bottom Navigation"
      className={`md:hidden fixed bottom-0 inset-x-0 z-40 bg-canvas/95 backdrop-blur-md border-t border-surface-border safe-bottom ${
        isWatchPage ? 'hidden' : 'block'
      }`}
    >
      <div className="grid grid-cols-4 h-16 items-center">
        {/* Home */}
        <Link
          href="/"
          className={`flex flex-col items-center justify-center py-2 transition-colors ${
            pathname === '/' ? 'text-amber-400 font-medium' : 'text-text-secondary hover:text-text-primary'
          }`}
        >
          <Home size={20} />
          <span className="text-[11px] mt-1">Home</span>
        </Link>

        {/* Browse */}
        <Link
          href="/browse"
          className={`flex flex-col items-center justify-center py-2 transition-colors ${
            pathname.startsWith('/browse') ? 'text-amber-400 font-medium' : 'text-text-secondary hover:text-text-primary'
          }`}
        >
          <Compass size={20} />
          <span className="text-[11px] mt-1">Browse</span>
        </Link>

        {/* Search */}
        <Link
          href="/search"
          className={`flex flex-col items-center justify-center py-2 transition-colors ${
            pathname.startsWith('/search') ? 'text-amber-400 font-medium' : 'text-text-secondary hover:text-text-primary'
          }`}
        >
          <Search size={20} />
          <span className="text-[11px] mt-1">Search</span>
        </Link>

        {/* My List */}
        <Link
          href="/my-list"
          className={`flex flex-col items-center justify-center py-2 transition-colors relative ${
            pathname.startsWith('/my-list') ? 'text-amber-400 font-medium' : 'text-text-secondary hover:text-text-primary'
          }`}
        >
          <div className="relative">
            <Bookmark size={20} />
            {myList.length > 0 && (
              <span className="absolute -top-1 -right-2 px-1 text-[9px] font-bold rounded-full bg-amber-500 text-stone-950">
                {myList.length}
              </span>
            )}
          </div>
          <span className="text-[11px] mt-1">My List</span>
        </Link>
      </div>
    </nav>
  );
}
