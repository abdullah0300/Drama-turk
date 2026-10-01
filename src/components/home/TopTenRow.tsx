import React from 'react';
import Link from 'next/link';
import { Play } from 'lucide-react';
import { Drama } from '@/types/catalog';
import { Rail } from '@/components/sezon/Rail';

/** Top 10 row with big outlined rank numerals, ranked by preserved video records in the catalog. */
export function TopTenRow({ dramas }: { dramas: Drama[] }) {
  const top = [...dramas].sort((a, b) => b.video_records - a.video_records).slice(0, 10);
  if (top.length === 0) return null;

  return (
    <Rail id="top10" title="Top 10 in the catalog" sub="Ranked by preserved episodes">
      {top.map((d, i) => (
        <Link key={d.id} href={`/drama/${d.id}`} className="card card-t" aria-label={`${i + 1}. ${d.name}`}>
          <span className="rank">{i + 1}</span>
          <div className="media">
            {d.poster_url ? <img src={d.poster_url} alt={d.name} loading="lazy" /> : <div className="thumb-fallback" />}
            <span className="shade" />
            <span className="c-play"><Play className="i f" /></span>
            <span className="c-title">{d.name}</span>
          </div>
        </Link>
      ))}
    </Rail>
  );
}
