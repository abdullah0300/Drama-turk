'use client';

import React, { useEffect, useMemo, useRef, useState } from 'react';
import Link from 'next/link';
import { ArrowDown, Captions, Check, Film, Info, Mic, Play, Plus } from 'lucide-react';
import { useUserPreferences } from '@/context/UserPreferencesContext';

export interface SeasonEpisode {
  id: string;
  href: string;
  label: string;
  title: string;
  bolum: number | null;
  number: number;
  thumb?: string;
  playable: boolean;
  renditions: number;
  languages: string;
}

export interface OtherSeason {
  id: string;
  poster?: string;
  href: string;
  heading: string;
  seasonLabel: string;
  episodeCount: number;
  playable: boolean;
}

export interface SeasonExtra {
  id: string;
  title: string;
}

interface SeasonClientProps {
  dramaId: string;
  dramaName: string;
  dramaPoster?: string;
  heroImage?: string;
  /** This season's poster (or the drama poster when the season has none) */
  seasonPoster?: string;
  collectionId: string;
  collectionHeading: string;
  seasonNumber: number;
  seasonName: string;
  editions: { id: string; href: string; name: string; episodes: number; active: boolean }[];
  seasonNote?: string;
  edition: string;
  videoCount: number;
  published: boolean;
  isPilot: boolean;
  episodes: SeasonEpisode[];
  extras: SeasonExtra[];
  others: OtherSeason[];
  more: React.ReactNode;
  upcoming?: React.ReactNode;
}

type Filter = 'all' | 'unwatched' | 'watched' | 'preview';
const pad = (n: number) => String(n).padStart(2, '0');

export function SeasonClient(props: SeasonClientProps) {
  const {
    dramaId, dramaName, dramaPoster, heroImage, seasonPoster, collectionHeading, seasonNumber, seasonName, editions, seasonNote, edition,
    videoCount, published, isPilot, episodes, extras, others, more,
  } = props;
  const { history, isInMyList, addToMyList, removeFromMyList } = useUserPreferences();
  const [filter, setFilter] = useState<Filter>('all');
  const [desc, setDesc] = useState(false);
  const [arcIn, setArcIn] = useState(false);
  const [parallax, setParallax] = useState(0);
  const arcRef = useRef<HTMLDivElement>(null);
  const bodyRef = useRef<HTMLDivElement>(null);

  const saved = isInMyList(dramaId);

  const progressBy = useMemo(() => {
    const m = new Map<string, { pct: number; done: boolean }>();
    history.forEach((h) => {
      const pct = h.duration > 0 ? h.currentTime / h.duration : 0;
      m.set(h.episodeGroupId, { pct, done: h.completed || pct >= 0.9 });
    });
    return m;
  }, [history]);

  const playable = published ? episodes.filter((e) => e.playable) : [];
  const watchedCount = playable.filter((e) => progressBy.get(e.id)?.done).length;
  const progressPct = playable.length ? Math.round((watchedCount / playable.length) * 100) : 0;
  const nextEp = playable.find((e) => !progressBy.get(e.id)?.done) || playable[0];
  const started = watchedCount > 0 || playable.some((e) => (progressBy.get(e.id)?.pct ?? 0) > 0);
  const stateOf = (e: SeasonEpisode): 'w' | 'r' | 'u' =>
    !(published && e.playable) ? 'u' : progressBy.get(e.id)?.done ? 'w' : 'r';

  useEffect(() => {
    const el = arcRef.current;
    if (!el || typeof IntersectionObserver === 'undefined') {
      setArcIn(true);
      return;
    }
    const io = new IntersectionObserver((es) => {
      if (es[0].isIntersecting) {
        setArcIn(true);
        io.disconnect();
      }
    }, { rootMargin: '0px 0px -10% 0px' });
    io.observe(el);
    return () => io.disconnect();
  }, []);

  useEffect(() => {
    if (window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    const onScroll = () => setParallax(window.scrollY);
    window.addEventListener('scroll', onScroll, { passive: true });
    return () => window.removeEventListener('scroll', onScroll);
  }, []);

  const arcHeights = useMemo(() => {
    const n = episodes.length;
    return episodes.map((_, i) => {
      const e = i + 1;
      const k = e / n;
      let v = 0.34 + 0.18 * Math.sin(e * 0.85 + seasonNumber) + 0.12 * Math.sin(e * 2.1 + 1.3) + 0.36 * k * k;
      if (e === 1) v = Math.max(v, 0.62);
      if (e === n) v = 1;
      return Math.max(0.14, Math.min(1, v));
    });
  }, [episodes, seasonNumber]);

  const visible = useMemo(() => {
    let list = episodes.filter((e) => {
      const st = stateOf(e);
      return filter === 'all' || (filter === 'unwatched' && st === 'r') || (filter === 'watched' && st === 'w') || (filter === 'preview' && st === 'u');
    });
    if (desc) list = [...list].reverse();
    return list;
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [episodes, filter, desc, progressBy, published]);

  const toggleList = () => {
    if (saved) removeFromMyList(dramaId);
    else addToMyList({ id: dramaId, type: 'drama', dramaId, title: dramaName, thumbnailUrl: dramaPoster, addedAt: Date.now() });
  };

  const numStr = pad(seasonNumber);

  return (
    <div className="sv" id="seasonv">
      <div className="sv-hero">
        {heroImage ? (
          <img className="sv-bg" src={heroImage} alt="" style={{ transform: `translateY(${parallax * 0.25}px)` }} />
        ) : (
          <div className="art-fallback" style={{ zIndex: -2 }} />
        )}
        <div className="sv-shade" />
        {seasonPoster && (
          <div className="series-poster sv-poster" aria-hidden="true">
            <img src={seasonPoster} alt="" />
          </div>
        )}
        <div className="sv-num" aria-hidden="true" style={{ transform: `translateY(calc(-50% + ${parallax * 0.35}px))` }}>
          {numStr.split("").map((c, i) => <span key={i}>{c}</span>)}
        </div>

        <div className="sv-hero-in">
          <nav className="sv-crumb" aria-label="Breadcrumb">
            <Link href="/">Home</Link><i>/</i>
            <Link href={`/drama/${dramaId}`}>{dramaName}</Link><i>/</i>
            <span style={{ color: 'var(--text)' }}>{seasonName}</span>
          </nav>
          <div className="sv-kick">
            <span className={`badge${published ? ' live' : ' dark'}`}>
              {published ? 'Now streaming' : 'Preview Catalog'}
            </span>
            <span>{episodes.length} episodes · {edition}</span>
          </div>
          <h1 className="sv-h"><em>{dramaName}</em>{seasonName}</h1>
          {editions.length > 1 && (
            <div className="tabs sv-editions" role="tablist" aria-label="Version">
              {editions.map((e) => (
                <Link key={e.id} href={e.href} className={`tab${e.active ? ' on' : ''}`} role="tab" aria-selected={e.active} scroll={false}>
                  {e.name} · {e.episodes}
                </Link>
              ))}
            </div>
          )}
          <Link className="sv-series" href={`/drama/${dramaId}`}>Series overview →</Link>
          <p className="sv-line" style={{ fontSize: 14, color: 'var(--muted)' }}>{collectionHeading}</p>
          {seasonNote && <p className="sv-line" style={{ fontSize: 14, color: 'var(--muted)', display: 'flex', gap: 8, alignItems: 'flex-start' }}><Info size={15} style={{ flex: 'none', marginTop: 3, color: 'var(--gold)' }} />{seasonNote}</p>}

          {playable.length > 0 && (
            <div className="sv-prog">
              <small>
                <span>You&rsquo;ve watched <b>{watchedCount} of {playable.length}</b></span>
                <span>{progressPct}%</span>
              </small>
              <div><i style={{ width: arcIn ? `${progressPct}%` : 0 }} /></div>
            </div>
          )}

          <div className="actions">
            {published && nextEp ? (
              <Link href={nextEp.href} className="btn btn-play">
                <Play className="i f" />
                {started ? 'Continue' : 'Start watching'} {nextEp.label}
              </Link>
            ) : (
              <span className="btn btn-ghost" aria-disabled="true"><Film className="i" />Preview catalog only</span>
            )}
            <Link href={`/drama/${dramaId}`} className="btn btn-ghost"><Info className="i" />Series info</Link>
            <button className="btn btn-round" onClick={toggleList} aria-label={saved ? 'Remove from My List' : 'Add to My List'}>
              {saved ? <Check className="i" /> : <Plus className="i" />}
            </button>
          </div>
        </div>

        {others.length > 0 && (
          <div className="sv-switch">
            {others.slice(0, 4).map((o) => (
              <Link key={o.id} href={o.href} className="sv-pill">
                {o.poster || heroImage ? <img src={o.poster || heroImage} alt="" /> : null}
                <span>{o.seasonLabel}<small>{o.episodeCount} episodes</small></span>
              </Link>
            ))}
          </div>
        )}
      </div>

      <div className="sv-body" ref={bodyRef}>
        {props.upcoming}
        <div className="sv-stats">
          <div className="st"><small>Episodes</small><b>{episodes.length}</b><span>{playable.length ? `${playable.length} playable` : 'Preview records'}</span></div>
          <div className="st"><small>Video records</small><b>{videoCount}</b><span>Verified renditions kept separate</span></div>
          <div className="st"><small>Version</small><b style={{ fontSize: 24 }}>{edition}</b><span>{published ? 'Ad-free playback' : 'Not yet playable'}</span></div>
          <div className="st"><small>Your progress</small><b>{progressPct}%</b><span>{playable.length - watchedCount > 0 ? `${playable.length - watchedCount} left to watch` : playable.length ? 'All caught up' : '—'}</span></div>
          <div className="st"><small>Status</small><b>{published ? 'Live' : 'Preview'}</b><span>{published ? 'Ready to stream' : 'Metadata only'}</span></div>
        </div>

        <section className="sv-sec" id="episodes">
          <div className="sv-sec-h">
            <h2>Episodes<small>{episodes.length} episodes · {collectionHeading}</small></h2>
            <div style={{ display: 'flex', gap: 8, flexWrap: 'wrap' }}>
              <div className="tabs">
                {([['all', 'All'], ['unwatched', 'Unwatched'], ['watched', 'Watched'], ['preview', 'Preview']] as [Filter, string][]).map(([k, l]) => (
                  <button key={k} className={`tab${filter === k ? ' on' : ''}`} onClick={() => setFilter(k)}>{l}</button>
                ))}
              </div>
              <button className={`sortbtn${desc ? ' old' : ''}`} onClick={() => setDesc(!desc)}>
                <ArrowDown className="i" />
                {desc ? 'Last to first' : 'First to last'}
              </button>
            </div>
          </div>

          {editions.length > 1 && (
            <div className="ep-lang" role="tablist" aria-label="Choose version">
              {editions.map((e) => {
                const dubbed = /dub/i.test(e.name);
                const Icon = dubbed ? Mic : Captions;
                return (
                  <Link
                    key={e.id}
                    href={`${e.href}#episodes`}
                    scroll={false}
                    role="tab"
                    aria-selected={e.active}
                    aria-current={e.active ? 'page' : undefined}
                    className={`ep-lang-opt${e.active ? ' on' : ''}`}
                  >
                    <Icon className="i" aria-hidden="true" />
                    <span className="ep-lang-t">
                      <b>{e.name}</b>
                      <small>{e.episodes} episode{e.episodes === 1 ? '' : 's'}{dubbed ? ' · Urdu audio' : ' · Original audio'}</small>
                    </span>
                    {e.active && <Check className="i ep-lang-ok" aria-hidden="true" />}
                  </Link>
                );
              })}
            </div>
          )}

          {episodes.length === 0 ? (
            <div className="dw-empty">No episode groups indexed in this collection.</div>
          ) : (
            <div className="sv-grid">
              {visible.length === 0 && <div className="dw-empty" style={{ gridColumn: '1/-1' }}>Every episode here is in the other filters.</div>}
              {visible.map((e, i) => {
                const st = stateOf(e);
                const up = st === 'u';
                const prog = progressBy.get(e.id);
                const inner = (
                  <>
                    <div className="media">
                      {e.thumb ? <img src={e.thumb} alt={e.label} loading="lazy" /> : <div className="thumb-fallback"><Film size={26} style={{ opacity: .4 }} /></div>}
                      <span className="shade" />
                      {up && <span className="badge dark">Preview record</span>}
                      {st === 'w' && <span className="se-ok"><Check className="i" /></span>}
                      <span className="se-num">{e.number}</span>
                      {!up && <span className="c-play"><Play className="i f" /></span>}
                      {!up && prog && prog.pct > 0 && <span className="c-bar"><i style={{ width: `${Math.min(100, prog.pct * 100)}%` }} /></span>}
                    </div>
                    <div className="se-b">
                      <b>{e.label}{e.bolum ? <span>Bolum {e.bolum}</span> : null}</b>
                      <p>{e.title}</p>
                      <p style={{ marginTop: 2, fontSize: 12 }}>{e.renditions} rendition{e.renditions === 1 ? '' : 's'} · {e.languages || 'Subtitled'}</p>
                    </div>
                  </>
                );
                const style = { ['--d' as string]: `${Math.min(i, 12) * 50}ms` };
                return up ? (
                  <div key={e.id} className="se up" style={style}>{inner}</div>
                ) : (
                  <Link key={e.id} href={e.href} className="se" style={style}>{inner}</Link>
                );
              })}
            </div>
          )}
        </section>

        {episodes.length > 0 && (
          <section className="sv-sec">
            <div className="sv-sec-h">
              <h2>Season arc<small>Every episode in order. Tap one to play.</small></h2>
              <div className="arc-legend">
                <span className="w"><i></i>Watched</span><span><i></i>Out now</span><span className="u"><i></i>Preview</span>
              </div>
            </div>
            <div className={`arc${arcIn ? ' in' : ''}`} ref={arcRef}>
              <div className="arc-bars">
                {episodes.map((e, i) => {
                  const st = stateOf(e);
                  const fin = i === episodes.length - 1;
                  const cur = nextEp?.id === e.id && st === 'r';
                  const cls = `ab ${st}${fin ? ' f' : ''}${cur ? ' cur' : ''}`;
                  const style = { ['--h' as string]: `${(arcHeights[i] * 100).toFixed(1)}%`, ['--d' as string]: `${i * 22}ms` };
                  return st === 'u' ? (
                    <span key={e.id} className={cls} style={style} title={`${e.label} — preview record`}><i /></span>
                  ) : (
                    <Link key={e.id} href={e.href} className={cls} style={style} aria-label={e.label} title={e.label}><i /></Link>
                  );
                })}
              </div>
              <div className="arc-axis"><span>First listed</span><span>Episode order</span><span>Last listed</span></div>
            </div>
          </section>
        )}

        {extras.length > 0 && (
          <section className="sv-sec" aria-label="Extras">
            <div className="sv-sec-h"><h2>Extras &amp; Behind the Scenes<small>{extras.length} items</small></h2></div>
            <div className="sv-extras">
              {extras.map((x) => (
                <div key={x.id}><b>{x.title}</b><span>ID: {x.id}</span></div>
              ))}
            </div>
          </section>
        )}

        {others.length > 0 && (
          <section className="sv-sec">
            <div className="sv-sec-h"><h2>Other seasons</h2></div>
            <div className="sv-others">
              {others.map((o) => (
                <Link key={o.id} href={o.href} className="so">
                  {o.poster || heroImage ? <img src={o.poster || heroImage} alt="" /> : <div className="thumb-fallback" style={{ position: 'absolute', inset: 0 }} />}
                  <span className="shade" />
                  {o.playable && <span className="badge">Playable</span>}
                  <span className="so-in">
                    <strong>{o.seasonLabel}</strong>
                    <span>{o.episodeCount} episodes · {o.heading}</span>
                  </span>
                </Link>
              ))}
            </div>
          </section>
        )}

        {more}
      </div>
    </div>
  );
}
