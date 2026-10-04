export interface SiteConfig {
  name: string;
  wordmark: string;
  tagline: string;
  brandPromise: string;
  supportingCopy: string;
  accentColor: string;
  domain: string;
  publicUrl: string;
  contactEmail: string;
  pilotDramaId: string;
  pilotCollectionId: string;
  reportingDestination: {
    type: 'clipboard' | 'email' | 'endpoint';
    target?: string;
  };
  socialLinks: {
    github?: string;
    twitter?: string;
  };
}

const publicUrl = 'https://greatnation.webcraftio.com';
const configuredDomain = process.env.NEXT_PUBLIC_SITE_DOMAIN?.replace(/\/$/, '');
const configuredIsLocal = !configuredDomain || /^https?:\/\/(localhost|127\.0\.0\.1)(:|\/|$)/.test(configuredDomain);
const domain = process.env.NODE_ENV === 'production' && configuredIsLocal
  ? publicUrl : configuredDomain || 'http://localhost:3000';
export const publicIndexingEnabled = process.env.NODE_ENV === 'production' &&
  process.env.VERCEL_ENV !== 'preview' && process.env.CATALOG_RELEASE_MODE !== 'staging' &&
  /^https:\/\//.test(domain);

export const siteConfig: SiteConfig = {
  name: 'Great Nation',
  wordmark: 'Great Nation',
  tagline: 'Your drama. Without interruptions.',
  brandPromise: 'Your drama. Without interruptions.',
  supportingCopy: 'No ads. No pop-ups. Just watch.',
  accentColor: '#f2b33d', // Warm gold
  domain,
  publicUrl,
  contactEmail: 'contact@greatnation.webcraftio.com',
  pilotDramaId: process.env.NEXT_PUBLIC_PILOT_DRAMA_ID || 'mehmed-fetihler-sultani',
  // Collection 68 is confirmed in catalog data: Mehmed: Fetihler Sultani Season 2 - Urdu & English Subtitles
  pilotCollectionId: process.env.NEXT_PUBLIC_PILOT_COLLECTION_ID || 'collection-68',
  reportingDestination: {
    type: 'clipboard',
    target: process.env.NEXT_PUBLIC_REPORT_EMAIL || 'contact@greatnation.webcraftio.com',
  },
  socialLinks: {
    github: 'https://github.com',
  },
};
