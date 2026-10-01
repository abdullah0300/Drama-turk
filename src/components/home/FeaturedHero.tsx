'use client';

import React, { useCallback, useEffect, useRef, useState } from 'react';
import Link from 'next/link';
import { Check, Info, Play, Plus } from 'lucide-react';
import { useUserPreferences } from '@/context/UserPreferencesContext';
import { legacyEpisodePath } from '@/lib/routes';

export interface HeroItem {
  id: string;
  title: string;
  kicker: string;
  genres: string[];
  meta: string;
  line: string;
  image?: string;
  thumb?: string;
  episodeCount: number;
  segLabel?: string;
  playHref: string;
  playLabel: string;
  infoHref: string;
  thumbnailForList?: string;
}

const HERO_MS = 8000;

export function FeaturedHero({ items }: { items: HeroItem[] }) {
  const { history, isInMyList, addToMyList, removeFromMyList } = useUserPreferences();
  const [idx, setIdx] = useState(0);
  const [shown, setShown] = useState(false);
  const [paused, setPaused] = useState(false);
  const timer = useRef<ReturnType<typeof setTimeout>>();
  const item = items[idx] ?? items[0];

  // retrigger enter animation whenever the featured item changes
  useEffect(() => {
    setShown(false);
    const r = requestAnimationFrame(() => requestAnimationFrame(() => setShown(true)));
    return () => cancelAnimationFrame(r);
  }, [idx]);

  const next = useCallback(() => setIdx((i) => (i + 1) % items.length), [items.length]);

  useEffect(() => {
    if (items.length < 2 || paused) return;
    if (typeof window !== 'undefined' && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    timer.current = setTimeout(next, HERO_MS);
    return () => clearTimeout(timer.current);
  }, [idx, paused, items.length, next]);

  if (!item) return null;

  const resume = history.find((h) => h.dramaId === item.id && !h.completed);
  const watched = new Set(history.filter((h) => h.dramaId === item.id).map((h) => h.episodeGroupId)).size;
  const saved = isInMyList(item.id);
  const playHref = resume ? resume.url ?? legacyEpisodePath(item.id, resume.episodeGroupId) : item.playHref;
  const playLabel = resume ? `Continue ${resume.displayLabel}` : item.playLabel;

  const toggleList = () => {
    if (saved) removeFromMyList(item.id);
    else
      addToMyList({
        id: item.id,
        type: 'drama',
        dramaId: item.id,
        title: item.title,
        thumbnailUrl: item.thumbnailForList,
        addedAt: Date.now(),
      });
  };

  return (
    <section
      className="hero kb"
      id="top"
      key={item.id}
      onMouseEnter={() => setPaused(true)}
      onMouseLeave={() => setPaused(false)}
    >
      <div className="hero-art">
        {item.image ? <img src={item.image} alt="" /> : <div className="art-fallback" />}
      </div>
      <div className="hero-shade" />

      <div className={`hero-content${shown ? ' in' : ''}`}>
        <div className="kicker rise" style={{ ['--d' as string]: '0s' }}>
          <span className="pulse" />
          {item.kicker}
        </div>
        <h1
          className="hero-title"
          style={{
            opacity: shown ? 1 : 0,
            transition: 'opacity .8s var(--ease)',
            ...(item.title.length > 14 ? { fontSize: 'clamp(40px,5.6vw,88px)' } : {}),
          }}
        >
          {item.title.split(' ').map((w, wi) => (
            <React.Fragment key={wi}>
              <span className="w">
                {Array.from(w).map((ch, k) => (
                  <span className="ch" key={k} style={{ ['--d' as string]: `${(wi * 6 + k) * 38}ms` }}>{ch}</span>
                ))}
              </span>{' '}
            </React.Fragment>
          ))}
        </h1>
        <div className="meta rise" style={{ ['--d' as string]: '.35s' }}>
          {item.genres.length > 0 && <span className="gold">{item.genres[0]}</span>}
          {item.genres.length > 0 && <span className="sep" />}
          <span>{item.meta}</span>
        </div>
        <p className="hero-line rise" style={{ ['--d' as string]: '.45s' }}>{item.line}</p>

        {item.episodeCount > 0 && (
          <div className="seg rise" style={{ ['--d' as string]: '.55s' }}>
            <div className="seg-label">
              <span><b>{item.episodeCount}</b> {item.segLabel ?? 'episodes'}</span>
              <span>{watched > 0 ? `${watched} started` : 'Ad-free'}</span>
            </div>
            <div className="seg-bar">
              {Array.from({ length: item.episodeCount }, (_, i) => (
                <i key={i} className={i < watched ? 'w8' : ''} style={{ ['--d' as string]: `${600 + i * 18}ms` }} />
              ))}
            </div>
          </div>
        )}

        <div className="actions rise" style={{ ['--d' as string]: '.65s' }}>
          <Link href={playHref} className="btn btn-play">
            <Play className="i f" />
            {playLabel}
          </Link>
          <Link href={item.infoHref} className="btn btn-ghost">
            <Info className="i" />
            More info
          </Link>
          <button
            className="btn btn-round"
            onClick={toggleList}
            aria-label={saved ? 'Remove from My List' : 'Add to My List'}
          >
            {saved ? <Check className="i" /> : <Plus className="i" />}
          </button>
        </div>
      </div>

      {items.length > 1 && (
        <>
          <div className="switch">
            {items.map((s, k) => (
              <button
                key={s.id}
                className={`sw${k === idx ? ' on' : ''}`}
                style={{ ['--dur' as string]: `${HERO_MS}ms` }}
                onClick={() => setIdx(k)}
                aria-label={s.title}
              >
                {s.thumb ? <img src={s.thumb} alt="" /> : <div style={{ aspectRatio: '16/9', background: 'var(--bg3)', borderRadius: 6 }} />}
                <span>{s.title}</span>
                <span className="bar"><i /></span>
              </button>
            ))}
          </div>
          <div className="dots">
            {items.map((s, k) => (
              <button key={s.id} className={k === idx ? 'on' : ''} onClick={() => setIdx(k)} aria-label={s.title} />
            ))}
          </div>
        </>
      )}
    </section>
  );
}
