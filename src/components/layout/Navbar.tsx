'use client';

import React, { useEffect, useRef, useState } from 'react';
import Link from 'next/link';
import { usePathname, useRouter } from 'next/navigation';
import { Search, Bookmark } from 'lucide-react';
import { siteConfig } from '@/config/site';
import { useUserPreferences } from '@/context/UserPreferencesContext';

export function Navbar() {
  const pathname = usePathname();
  const router = useRouter();
  const { myList } = useUserPreferences();
  const [solid, setSolid] = useState(false);
  const [searchOpen, setSearchOpen] = useState(false);
  const [query, setQuery] = useState('');
  const inputRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    const onScroll = () => setSolid(window.scrollY > 40);
    onScroll();
    window.addEventListener('scroll', onScroll, { passive: true });
    return () => window.removeEventListener('scroll', onScroll);
  }, []);

  useEffect(() => {
    setSearchOpen(false);
    setQuery('');
  }, [pathname]);

  const isActive = (path: string) =>
    path === '/' ? pathname === '/' : pathname.startsWith(path);

  const submit = (e: React.FormEvent) => {
    e.preventDefault();
    const q = query.trim();
    router.push(q ? `/search?q=${encodeURIComponent(q)}` : '/search');
  };

  return (
    <>
      <a href="#main-content" className="skip-to-content">
        Skip to main content
      </a>

      <header className={`nav${solid || pathname.includes('/watch') ? ' solid' : ''}`} id="nav">
        <Link className="logo" href="/" aria-label={`${siteConfig.name} Home`}>
          {siteConfig.wordmark}<b></b>
        </Link>

        <nav className="links" aria-label="Main Navigation">
          <Link href="/" className={isActive('/') ? 'on' : ''}>Home</Link>
          <Link href="/browse" className={isActive('/browse') ? 'on' : ''}>Browse Dramas</Link>
          <Link
            href="/drama/mehmed-fetihler-sultani"
            className={pathname.includes('mehmed') ? 'on' : ''}
          >
            Featured
          </Link>
          <Link href="/my-list" className={isActive('/my-list') ? 'on' : ''}>
            My List{myList.length > 0 ? ` (${myList.length})` : ''}
          </Link>
        </nav>

        <div className="nav-end">
          <form className={`search${searchOpen ? ' open' : ''}`} onSubmit={submit} role="search">
            <button
              type="button"
              className="icon-btn"
              aria-label="Search Dramas"
              onClick={() => {
                if (searchOpen && query.trim()) {
                  router.push(`/search?q=${encodeURIComponent(query.trim())}`);
                  return;
                }
                setSearchOpen(!searchOpen);
                if (!searchOpen) setTimeout(() => inputRef.current?.focus(), 50);
              }}
            >
              <Search className="i" />
            </button>
            <input
              ref={inputRef}
              value={query}
              onChange={(e) => setQuery(e.target.value)}
              placeholder="Titles, genres…"
              aria-label="Search dramas"
              tabIndex={searchOpen ? 0 : -1}
            />
          </form>
          <Link
            href="/my-list"
            className="icon-btn"
            aria-label={`My List (${myList.length} items)`}
            style={{ position: 'relative' }}
          >
            <Bookmark className="i" />
            {myList.length > 0 && <span className="dot-n" />}
          </Link>
        </div>
      </header>
    </>
  );
}
