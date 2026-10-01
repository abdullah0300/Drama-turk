import React from 'react';
import Link from 'next/link';
import { siteConfig } from '@/config/site';

export function Footer() {
  return (
    <footer>
      <div>
        <Link className="logo" href="/" aria-label={`${siteConfig.name} Home`}>
          {siteConfig.wordmark}<b></b>
        </Link>
        <span>{siteConfig.tagline}</span>
        <span>{siteConfig.supportingCopy}</span>
      </div>
      <div>
        <h6>Explore</h6>
        <Link href="/browse">Browse All Dramas</Link>
        <Link href="/drama/mehmed-fetihler-sultani">Mehmed: Fetihler Sultani</Link>
        <Link href="/search">Search &amp; Filters</Link>
        <Link href="/my-list">My List &amp; History</Link>
      </div>
      <div>
        <h6>Information</h6>
        <Link href="/about">About Platform</Link>
        <Link href="/privacy">Privacy &amp; Local Storage</Link>
        <Link href="/contact">Contact &amp; Diagnostics</Link>
        <Link href="/admin">Admin &amp; Queue</Link>
      </div>
      <div className="copy">
        © {new Date().getFullYear()} {siteConfig.name}. Watch history, resume points, and personal preferences remain private on your device.
      </div>
    </footer>
  );
}
