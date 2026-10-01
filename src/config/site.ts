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

export const siteConfig: SiteConfig = {
  name: 'Great Nation',
  wordmark: 'Great Nation',
  tagline: 'Your drama. Without interruptions.',
  brandPromise: 'Your drama. Without interruptions.',
  supportingCopy: 'No ads. No pop-ups. Just watch.',
  accentColor: '#f2b33d', // Warm gold
  domain: process.env.NEXT_PUBLIC_SITE_DOMAIN || 'http://localhost:3000',
  publicUrl: 'https://greatnation.webcraftio.com',
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
