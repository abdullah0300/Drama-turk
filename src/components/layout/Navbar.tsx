'use client';

import React from 'react';
import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { Search, Bookmark, Compass, Tv } from 'lucide-react';
import { siteConfig } from '@/config/site';
import { useUserPreferences } from '@/context/UserPreferencesContext';

export function Navbar() {
  const pathname = usePathname();
  const { myList } = useUserPreferences();

  const isLinkActive = (path: string) => {
    if (path === '/' && pathname === '/') return true;
    if (path !== '/' && pathname.startsWith(path)) return true;
    return false;
  };

  return (
    <>
      <a href="#main-content" className="skip-to-content">
        Skip to main content
      </a>

      <header className="sticky top-0 z-40 w-full border-b border-surface-border bg-canvas/90 backdrop-blur-md">
        <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8 h-16 flex items-center justify-between">
          {/* Brand Wordmark */}
          <div className="flex items-center gap-8">
            <Link 
              href="/" 
              className="flex items-center gap-2 text-text-primary hover:text-amber-400 transition-colors focus:outline-none"
              aria-label={`${siteConfig.name} Home`}
            >
              <span className="font-display font-bold tracking-widest text-lg sm:text-xl text-amber-500">
                {siteConfig.wordmark}
              </span>
            </Link>

            {/* Desktop Navigation Links */}
            <nav className="hidden md:flex items-center gap-6 text-sm" aria-label="Main Navigation">
              <Link
                href="/browse"
                className={`transition-colors flex items-center gap-1.5 ${
                  isLinkActive('/browse')
                    ? 'text-amber-400 font-semibold'
                    : 'text-text-secondary hover:text-text-primary'
                }`}
              >
                <Compass size={16} />
                Browse Dramas
              </Link>

              <Link
                href="/drama/mehmed-fetihler-sultani"
                className={`transition-colors flex items-center gap-1.5 ${
                  pathname.includes('mehmed')
                    ? 'text-amber-400 font-semibold'
                    : 'text-text-secondary hover:text-text-primary'
                }`}
              >
                <Tv size={16} />
                Featured: Mehmed
              </Link>
            </nav>
          </div>

          {/* Right Action Icons */}
          <div className="flex items-center gap-3">
            {/* Search */}
            <Link
              href="/search"
              aria-label="Search Dramas"
              className={`p-2 rounded-lg border transition-colors flex items-center gap-2 text-sm ${
                isLinkActive('/search')
                  ? 'bg-amber-500/10 border-amber-500/40 text-amber-400'
                  : 'bg-surface/50 border-surface-border text-text-secondary hover:text-text-primary hover:bg-surface'
              }`}
            >
              <Search size={18} />
              <span className="hidden sm:inline text-xs text-text-tertiary">Search catalog...</span>
            </Link>

            {/* My List */}
            <Link
              href="/my-list"
              aria-label={`My List (${myList.length} items)`}
              className={`p-2 rounded-lg border transition-colors flex items-center gap-2 text-sm relative ${
                isLinkActive('/my-list')
                  ? 'bg-amber-500/10 border-amber-500/40 text-amber-400'
                  : 'bg-surface/50 border-surface-border text-text-secondary hover:text-text-primary hover:bg-surface'
              }`}
            >
              <Bookmark size={18} />
              <span className="hidden sm:inline text-xs">My List</span>
              {myList.length > 0 && (
                <span className="px-1.5 py-0.5 text-[10px] font-bold rounded-full bg-amber-500 text-stone-950 leading-none">
                  {myList.length}
                </span>
              )}
            </Link>
          </div>
        </div>
      </header>
    </>
  );
}
