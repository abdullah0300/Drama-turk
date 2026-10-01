'use client';

import React, { useEffect, useRef, useState } from 'react';
import Link from 'next/link';
import { usePathname, useRouter } from 'next/navigation';
import { Search, Bookmark, Bell } from 'lucide-react';
import { siteConfig } from '@/config/site';
import { useUserPreferences } from '@/context/UserPreferencesContext';

export interface NavDrama { id: string; name: string; genre: string; poster?: string; isPilot: boolean }
export interface NavNotification { id: string; title: string; label: string; thumb?: string; href: string }

export function Navbar({ dramas = [], notifications = [] }: { dramas?: NavDrama[]; notifications?: NavNotification[] }) {
  const [bellOpen, setBellOpen] = useState(false);
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
    setBellOpen(false);
    setQuery('');
  }, [pathname]);

  useEffect(() => {
    document.body.classList.toggle('lock', searchOpen);
    const onKey = (e: KeyboardEvent) => {
      if (e.key === 'Escape') { setSearchOpen(false); setBellOpen(false); setQuery(''); }
    };
    window.addEventListener('keydown', onKey);
    return () => { window.removeEventListener('keydown', onKey); document.body.classList.remove('lock'); };
  }, [searchOpen]);

  const q = query.trim().toLocaleLowerCase();
  const results = dramas.filter((d) => !q || `${d.name} ${d.genre}`.toLocaleLowerCase().includes(q));

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
          <button
            className="icon-btn"
            aria-label="Notifications"
            aria-expanded={bellOpen}
            style={{ position: 'relative' }}
            onClick={() => setBellOpen(!bellOpen)}
          >
            <Bell className="i" />
            {notifications.length > 0 && <span className="dot-n" />}
          </button>
          <div className={`notif${bellOpen ? ' open' : ''}`}>
            <h4>New for you</h4>
            {notifications.map((n) => (
              <Link key={n.id} href={n.href} className="n-item">
                {n.thumb ? <img src={n.thumb} alt="" /> : <div style={{ width: 96, aspectRatio: '16/9', background: 'var(--bg3)', borderRadius: 6 }} />}
                <span><b>{n.title}</b><span>{n.label} is available</span></span>
              </Link>
            ))}
          </div>
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

      <div className={`sresults${searchOpen ? ' open' : ''}`} aria-hidden={!searchOpen}>
        <h3>{q ? `Results for “${query.trim()}”` : 'Browse all dramas'}</h3>
        <div className="sgrid">
          {results.map((d) => (
            <Link key={d.id} href={`/drama/${d.id}`} className="card card-p" style={{ width: 'auto' }}>
              <div className="media">
                {d.poster ? <img src={d.poster} alt={d.name} loading="lazy" /> : <div className="thumb-fallback" />}
                <span className="shade" />
                <span className="c-title">{d.name}</span>
              </div>
              <div className="c-info"><b>{d.genre || 'Drama'}</b><span>{d.isPilot ? 'Playable' : 'Preview'}</span></div>
            </Link>
          ))}
          {results.length === 0 && <div className="dw-empty" style={{ gridColumn: '1/-1' }}>No dramas match “{query.trim()}”. Press Enter to search all records.</div>}
        </div>
      </div>
    </>
  );
}
