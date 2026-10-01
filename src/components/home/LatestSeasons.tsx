'use client';

import React, { useEffect, useRef, useState } from 'react';
import Link from 'next/link';
import { Check, List, Play, Plus } from 'lucide-react';
import { useUserPreferences } from '@/context/UserPreferencesContext';

export interface SeasonCardItem {
  id: string;
  n: number;
  label: string;
  edition: string;
  episodes: number;
  playable: boolean;
  watchHref?: string;
}

export interface LatestSeasonItem {
  id: string;
  title: string;
  genre: string;
  image?: string;
  poster?: string;
  seasons: SeasonCardItem[];
}

const LS_MS = 7000;
const pad = (n: number) => String(n).padStart(2, '0');

export function LatestSeasons({ items }: { items: LatestSeasonItem[] }) {
  const { isInMyList, addToMyList, removeFromMyList } = useUserPreferences();
  const [idx, setIdx] = useState(0);
  const [sel, setSel] = useState<string>(items[0]?.seasons[0]?.id ?? '');
  const [paused, setPaused] = useState(false);
  const [tilt, setTilt] = useState({ rx: 0, ry: 0 });
  const [swap, setSwap] = useState(false);
  const [bg, setBg] = useState({ flip: 0, srcs: [items[0]?.image ?? '', ''] as [string, string] });
  const sectionRef = useRef<HTMLElement>(null);
  const stageRef = useRef<HTMLDivElement>(null);

  const show = items[idx];

  // reveal on scroll
  useEffect(() => {
    const el = sectionRef.current;
    if (!el || typeof IntersectionObserver === 'undefined') { el?.classList.add('in'); return; }
    const io = new IntersectionObserver((es) => {
      if (es[0].isIntersecting) { el.classList.add('in'); io.disconnect(); }
    }, { rootMargin: '0px 0px -8% 0px' });
    io.observe(el);
    return () => io.disconnect();
  }, []);

  // auto-advance
  useEffect(() => {
    if (items.length < 2 || paused) return;
    if (window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    const t = setTimeout(() => go(idx + 1), LS_MS);
    return () => clearTimeout(t);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [idx, sel, paused, items.length]);

  if (!show) return null;

  const go = (i: number) => {
    const n = (i + items.length) % items.length;
    setSwap(true);
    setBg((b) => {
      const flip = 1 - b.flip;
      const srcs: [string, string] = [...b.srcs] as [string, string];
      srcs[flip] = items[n].image ?? '';
      return { flip, srcs };
    });
    setIdx(n);
    setSel(items[n].seasons[0].id);
    setTimeout(() => setSwap(false), 260);
  };

  const pick = (id: string) => {
    if (id === sel) return;
    setSwap(true);
    setSel(id);
    setTimeout(() => setSwap(false), 260);
  };

  const cur = show.seasons.find((s) => s.id === sel) ?? show.seasons[0];
  const order = [cur, ...show.seasons.filter((s) => s.id !== cur.id)];
  const saved = isInMyList(show.id);
  const toggleList = () => {
    if (saved) removeFromMyList(show.id);
    else addToMyList({ id: show.id, type: 'drama', dramaId: show.id, title: show.title, thumbnailUrl: show.poster, addedAt: Date.now() });
  };

  const seasonHref = `/drama/${show.id}/collection/${cur.id}`;

  return (
    <section ref={sectionRef} className="row reveal ls" id="seasons">
      <div className="row-head"><h2>Latest Seasons</h2><small>Season collections you can open now</small></div>
      <div
        ref={stageRef}
        className={`ls-stage${paused ? ' paused' : ''}`}
        id="lsStage"
        onMouseEnter={() => setPaused(true)}
        onMouseLeave={() => { setPaused(false); setTilt({ rx: 0, ry: 0 }); }}
        onMouseMove={(e) => {
          const r = stageRef.current!.getBoundingClientRect();
          const x = (e.clientX - r.left) / r.width - 0.5;
          const y = (e.clientY - r.top) / r.height - 0.5;
          setTilt({ ry: x * 16, rx: -y * 10 });
        }}
      >
        <div className="ls-bg">
          {[0, 1].map((k) => (bg.srcs[k] ? <img key={k} src={bg.srcs[k]} alt="" className={bg.flip === k ? 'on' : ''} /> : null))}
        </div>
        <div className="ls-ghost" aria-hidden="true">{pad(cur.n)}</div>

        <div className="ls-grid">
          <div className={`ls-copy${swap ? ' swap' : ''}`}>
            <div className="ls-kick">
              <span className="pulse" />
              <span>{cur.playable ? 'Playable' : 'Preview'} · {cur.edition} edition</span>
            </div>
            <div className="ls-season">
              Season
              <span className="odo">
                <span className="odo-col" style={{ ['--n' as string]: cur.n % 10 }}>
                  {[0, 1, 2, 3, 4, 5, 6, 7, 8, 9].map((n) => <span key={n}>{n}</span>)}
                </span>
              </span>
            </div>
            <h3 className="ls-title go">{show.title}</h3>
            <div className="ls-meta">
              <span><b>{show.genre}</b></span>
              <span>{cur.label}</span>
              <span>{cur.episodes} episodes</span>
            </div>
            <div className="ls-prog">
              <div className="ls-bar"><i style={{ width: cur.playable ? '100%' : '30%' }} /></div>
              <small>
                <span>{cur.episodes} episodes indexed</span>
                <span>{cur.playable ? 'All episodes out' : 'Metadata only'}</span>
              </small>
            </div>
            <div className="actions">
              {cur.playable ? (
                <Link href={cur.watchHref ?? seasonHref} className="btn btn-play"><Play className="i f" />Watch S{cur.n}</Link>
              ) : null}
              <Link href={seasonHref} className="btn btn-ghost"><List className="i" />View season</Link>
              <button className="btn btn-round" onClick={toggleList} aria-label={saved ? 'Remove from My List' : 'Add to My List'}>
                {saved ? <Check className="i" /> : <Plus className="i" />}
              </button>
            </div>
          </div>

          <div className="ls-deck-wrap">
            <div className="ls-deck deal" key={show.id} style={{ ['--rx' as string]: `${tilt.rx}deg`, ['--ry' as string]: `${tilt.ry}deg` }}>
              {show.seasons.map((s) => {
                const k = order.findIndex((o) => o.id === s.id);
                return (
                  <div
                    key={s.id}
                    className="ls-card"
                    data-k={k}
                    style={{ ['--k' as string]: k, zIndex: 20 - k }}
                    role="button"
                    tabIndex={0}
                    aria-label={`${s.label}`}
                    onClick={() => pick(s.id)}
                    onKeyDown={(e) => { if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); pick(s.id); } }}
                  >
                    {show.poster || show.image ? <img src={show.poster || show.image} alt="" /> : <div className="thumb-fallback" style={{ position: 'absolute', inset: 0 }} />}
                    <span className="shade" />
                    {s.playable && <span className="badge">Playable</span>}
                    <div className="ls-cnum"><small>S</small>{s.n}</div>
                    <div className="ls-cfoot"><span>{s.episodes} episodes</span><span style={{ textTransform: 'capitalize' }}>{s.edition}</span></div>
                  </div>
                );
              })}
            </div>
            <div className="ls-hint"><i />Pick a season</div>
          </div>
        </div>

        <div className="ls-tabs">
          {items.map((s, k) => (
            <button key={s.id} className={`ls-tab${k === idx ? ' on' : ''}`} style={{ ['--dur' as string]: `${LS_MS}ms` }} onClick={() => go(k)}>
              {s.poster || s.image ? <img src={s.poster || s.image} alt="" /> : <div style={{ width: 40, height: 54, borderRadius: 6, background: 'var(--bg3)' }} />}
              <div><b>{s.title}</b><span>{s.seasons.length} {s.seasons.length === 1 ? 'season' : 'seasons'}</span></div>
              <i className="bar" key={k === idx ? `${idx}-${sel}` : 'x'} />
            </button>
          ))}
        </div>
      </div>
    </section>
  );
}
