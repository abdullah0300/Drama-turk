import React from 'react';
import Link from 'next/link';
import { ArrowUp, ArrowUpRight, Mail } from 'lucide-react';
import { siteConfig } from '@/config/site';

export interface FooterDrama { id: string; name: string }

const EXPLORE = [
  { href: '/', label: 'Home' },
  { href: '/browse', label: 'Browse Dramas' },
  { href: '/search', label: 'Search' },
  { href: '/my-list', label: 'My List' },
];
const COMPANY = [
  { href: '/about', label: 'About' },
  { href: '/contact', label: 'Contact' },
];
const LEGAL = [
  { href: '/terms', label: 'Terms & Conditions' },
  { href: '/privacy', label: 'Privacy Policy' },
  { href: '/dmca', label: 'DMCA & Copyright' },
];

function Col({ title, links }: { title: string; links: { href: string; label: string }[] }) {
  return (
    <nav className="ft-col" aria-label={title}>
      <h6>{title}</h6>
      <ul>{links.map((l) => <li key={l.href}><Link href={l.href}>{l.label}</Link></li>)}</ul>
    </nav>
  );
}

export function Footer({ dramas = [] }: { dramas?: FooterDrama[] }) {
  const year = new Date().getFullYear();
  return (
    <footer className="ft" id="site-footer">
      <div className="ft-cta">
        <div>
          <h2>Every season. <em>Every episode.</em></h2>
          <p>{siteConfig.supportingCopy} Subtitled and Urdu Dubbed, side by side.</p>
        </div>
        <div className="ft-cta-acts">
          <Link href="/browse" className="btn btn-play">Browse dramas</Link>
          <Link href="/my-list" className="btn btn-ghost">My List</Link>
        </div>
      </div>

      <div className="ft-grid">
        <div className="ft-brand">
          <Link className="logo" href="/" aria-label={`${siteConfig.name} home`}>
            {siteConfig.wordmark}<b></b>
          </Link>
          <p>{siteConfig.tagline} Historical and Turkish drama, organised by series, season and episode.</p>
          <a className="ft-mail" href={`mailto:${siteConfig.contactEmail}`}>
            <Mail className="i" aria-hidden="true" />
            <span>{siteConfig.contactEmail}</span>
          </a>
        </div>
        <Col title="Explore" links={EXPLORE} />
        {dramas.length > 0 && (
          <nav className="ft-col" aria-label="Dramas">
            <h6>Dramas</h6>
            <ul>
              {dramas.map((d) => <li key={d.id}><Link href={`/drama/${d.id}`}>{d.name}</Link></li>)}
              <li><Link href="/browse" className="ft-more">All dramas <ArrowUpRight className="i" aria-hidden="true" /></Link></li>
            </ul>
          </nav>
        )}
        <Col title="Company" links={COMPANY} />
        <Col title="Legal" links={LEGAL} />
      </div>

      <div className="ft-bar">
        <p>© {year} {siteConfig.name}. All rights reserved.</p>
        <p className="ft-credit">
          Artwork from{' '}
          <a href="https://www.themoviedb.org" target="_blank" rel="noopener noreferrer">TMDB</a>
          . Not endorsed or certified by TMDB.
        </p>
        <a href="#" className="ft-top" aria-label="Back to top"><ArrowUp className="i" aria-hidden="true" />Top</a>
      </div>
    </footer>
  );
}
