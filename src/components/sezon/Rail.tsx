'use client';

import React, { useEffect, useRef } from 'react';
import { ChevronLeft, ChevronRight } from 'lucide-react';

interface RailProps {
  id?: string;
  title: React.ReactNode;
  sub?: React.ReactNode;
  aside?: React.ReactNode;
  className?: string;
  trackClassName?: string;
  headClassName?: string;
  children: React.ReactNode;
}

/** Horizontal card rail with scroll arrows and reveal-on-scroll, matching the Sezon rows. */
export function Rail({ id, title, sub, aside, className = '', trackClassName = '', headClassName = 'row-head', children }: RailProps) {
  const sectionRef = useRef<HTMLElement>(null);
  const trackRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const el = sectionRef.current;
    if (!el) return;
    if (typeof IntersectionObserver === 'undefined') {
      el.classList.add('in');
      return;
    }
    const io = new IntersectionObserver(
      (entries) => {
        entries.forEach((e) => {
          if (e.isIntersecting) {
            el.classList.add('in');
            io.disconnect();
          }
        });
      },
      { rootMargin: '0px 0px -8% 0px' }
    );
    io.observe(el);
    return () => io.disconnect();
  }, []);

  const scroll = (dir: number) => {
    const t = trackRef.current;
    if (t) t.scrollBy({ left: dir * t.clientWidth * 0.8, behavior: 'smooth' });
  };

  return (
    <section ref={sectionRef} id={id} className={`row reveal ${className}`}>
      <div className={headClassName}>
        <h2>{title}</h2>
        {sub ? <small>{sub}</small> : null}
        {aside}
      </div>
      <div className="rail">
        <button className="rail-btn l" aria-label="Scroll left" onClick={() => scroll(-1)}>
          <ChevronLeft />
        </button>
        <div className={`track ${trackClassName}`} ref={trackRef}>
          {children}
        </div>
        <button className="rail-btn r" aria-label="Scroll right" onClick={() => scroll(1)}>
          <ChevronRight />
        </button>
      </div>
    </section>
  );
}
