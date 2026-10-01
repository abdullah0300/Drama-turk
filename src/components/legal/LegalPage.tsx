import React from 'react';
import Link from 'next/link';
import { Mail } from 'lucide-react';
import { siteConfig } from '@/config/site';
import type { LegalBlock, LegalDoc } from '@/content/legal';

const DOCS: { href: string; label: string; slug: LegalDoc['slug'] }[] = [
  { href: '/terms', label: 'Terms & Conditions', slug: 'terms' },
  { href: '/privacy', label: 'Privacy Policy', slug: 'privacy' },
  { href: '/dmca', label: 'DMCA & Copyright', slug: 'dmca' },
];

function Block({ b }: { b: LegalBlock }) {
  if (typeof b === 'string') return <p>{b}</p>;
  if ('ul' in b) return <ul>{b.ul.map((li) => <li key={li}>{li}</li>)}</ul>;
  if ('ol' in b) return <ol>{b.ol.map((li) => <li key={li}>{li}</li>)}</ol>;
  return (
    <a className="lg-mail" href={`mailto:${siteConfig.contactEmail}`}>
      <Mail className="i" aria-hidden="true" />
      <span>{siteConfig.contactEmail}</span>
    </a>
  );
}

export function LegalPage({ doc }: { doc: LegalDoc }) {
  return (
    <article className="lg">
      <header className="lg-hero">
        <span className="lg-kick">{doc.kicker}</span>
        <h1>{doc.title}</h1>
        <p>{doc.summary}</p>
        <small>Last updated {doc.updated}</small>
        <nav className="lg-docs" aria-label="Legal pages">
          {DOCS.map((d) => (
            <Link key={d.slug} href={d.href} className={d.slug === doc.slug ? 'on' : ''} aria-current={d.slug === doc.slug ? 'page' : undefined}>
              {d.label}
            </Link>
          ))}
        </nav>
      </header>

      <div className="lg-body">
        <aside className="lg-toc" aria-label="On this page">
          <h6>On this page</h6>
          <ol>
            {doc.sections.map((s) => <li key={s.id}><a href={`#${s.id}`}>{s.title}</a></li>)}
          </ol>
        </aside>

        <div className="lg-text">
          {doc.intro.length > 0 && <div className="lg-intro">{doc.intro.map((b, i) => <Block key={i} b={b} />)}</div>}
          {doc.sections.map((s, i) => (
            <section key={s.id} id={s.id}>
              <h2><span>{String(i + 1).padStart(2, '0')}</span>{s.title}</h2>
              {s.blocks.map((b, j) => <Block key={j} b={b} />)}
            </section>
          ))}
          <p className="lg-foot">
            Website: <a href={siteConfig.publicUrl}>{siteConfig.publicUrl.replace(/^https?:\/\//, '')}</a>
            <br />Copyright © 2026 GREAT NATION. All Rights Reserved.
          </p>
        </div>
      </div>
    </article>
  );
}
