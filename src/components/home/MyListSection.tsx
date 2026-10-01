'use client';

import React, { useEffect, useMemo, useRef, useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { List, Play, X } from 'lucide-react';
import { useUserPreferences } from '@/context/UserPreferencesContext';
import { legacyEpisodePath } from '@/lib/routes';

type Sort = 'recent' | 'az';

/** My List as flip cards (front: poster, back: progress ring and actions). */
export function MyListSection({ totals }: { totals: Record<string, number> }) {
  const { myList, history, removeFromMyList } = useUserPreferences();
  const router = useRouter();
  const [sort, setSort] = useState<Sort>('recent');
  const ref = useRef<HTMLElement>(null);

  useEffect(() => {
    const el = ref.current;
    if (!el || typeof IntersectionObserver === 'undefined') { el?.classList.add('in'); return; }
    const io = new IntersectionObserver((es) => {
      if (es[0].isIntersecting) { el.classList.add('in', 'intro'); setTimeout(() => el.classList.remove('intro'), 1800); io.disconnect(); }
    }, { rootMargin: '0px 0px -10% 0px' });
    io.observe(el);
    return () => io.disconnect();
  }, []);

  const items = useMemo(() => {
    const a = [...myList];
    return sort === 'az' ? a.sort((x, y) => x.title.localeCompare(y.title)) : a;
  }, [myList, sort]);

  const shuffle = () => {
    if (!items.length) return;
    const it = items[Math.floor(Math.random() * items.length)];
    router.push(it.episodeGroupId ? legacyEpisodePath(it.dramaId, it.episodeGroupId) : `/drama/${it.dramaId}`);
  };

  return (
    <section ref={ref} className="mlx reveal" id="mylist">
      <div className="ml-head">
        <h2>My List</h2>
        <span className="ml-count">{myList.length}</span>
        <div className="ml-tools">
          <div className="tabs">
            {([['recent', 'Recently added'], ['az', 'A–Z']] as [Sort, string][]).map(([k, l]) => (
              <button key={k} className={`tab${sort === k ? ' on' : ''}`} onClick={() => setSort(k)}>{l}</button>
            ))}
          </div>
          <button className="btn btn-ghost" onClick={shuffle} disabled={!items.length}><Play className="i f" />Shuffle play</button>
        </div>
      </div>

      <div className="ml-grid">
        {items.length === 0 ? (
          <div className="ml-empty" style={{ gridColumn: '1/-1' }}>
            <div><b>Save dramas for later</b><span>Tap + on any drama and it lands here, with your progress.</span></div>
            <Link className="btn btn-play" href="/browse"><Play className="i f" />Browse dramas</Link>
          </div>
        ) : (
          items.map((it, i) => {
            const mine = history.filter((h) => h.dramaId === it.dramaId);
            const done = new Set(mine.filter((h) => h.completed || (h.duration > 0 && h.currentTime / h.duration >= 0.9)).map((h) => h.episodeGroupId)).size;
            const total = totals[it.dramaId] ?? 0;
            const pct = total > 0 ? Math.min(1, done / total) : 0;
            const resume = mine.find((h) => !h.completed);
            const playHref = resume ? resume.url ?? legacyEpisodePath(it.dramaId, resume.episodeGroupId) : `/drama/${it.dramaId}`;
            return (
              <div className="ml" key={it.id} style={{ ['--i' as string]: i }} tabIndex={0}>
                <div className="ml-in">
                  <div className="ml-f">
                    {it.thumbnailUrl ? <img src={it.thumbnailUrl} alt="" /> : <div className="thumb-fallback" style={{ position: 'absolute', inset: 0 }} />}
                    <span className="shade" />
                    <span className={`ml-pill${resume ? ' hot' : ''}`}>{resume ? <><i />In progress</> : done > 0 ? 'Watched' : 'Saved'}</span>
                    <div className="ml-ft"><h3>{it.title}</h3><span>{total > 0 ? `${total} episodes playable` : 'Preview catalog'}</span></div>
                    <span className="ml-pct"><i style={{ width: `${pct * 100}%` }} /></span>
                  </div>
                  <div className="ml-b">
                    {it.thumbnailUrl ? <img src={it.thumbnailUrl} alt="" /> : null}
                    <h4>{it.title}</h4>
                    <div className="g">{total > 0 ? (total - done > 0 ? `${total - done} episodes to watch` : 'All caught up') : 'Catalog details'}</div>
                    <div className="ml-ring">
                      <svg viewBox="0 0 86 86">
                        <circle className="bg" cx="43" cy="43" r="36" />
                        <circle className="fg" cx="43" cy="43" r="36" style={{ ['--off' as string]: (226 * (1 - pct)).toFixed(1) }} />
                      </svg>
                      <b>{Math.round(pct * 100)}%</b>
                    </div>
                    <div className="ml-stats">
                      <div>Watched<b>{done}{total > 0 ? ` / ${total}` : ''}</b></div>
                      <div>Next<b>{resume ? resume.displayLabel : total > 0 ? 'Episode 1' : 'Details'}</b></div>
                    </div>
                    <div className="ml-acts" style={{ marginTop: 14 }}>
                      <Link href={playHref} className="btn btn-play"><Play className="i f" />{resume ? 'Resume' : total > 0 ? 'Play' : 'View'}</Link>
                      <Link href={`/drama/${it.dramaId}`} className="btn btn-round btn-ghost" aria-label="Episodes"><List className="i" /></Link>
                      <button className="btn btn-round ml-x" onClick={() => removeFromMyList(it.id)} aria-label={`Remove ${it.title} from My List`}><X className="i" /></button>
                    </div>
                  </div>
                </div>
              </div>
            );
          })
        )}
      </div>
    </section>
  );
}
