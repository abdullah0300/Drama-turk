import type { Metadata } from 'next';
import { siteConfig } from '@/config/site';
import { LegalPage } from '@/components/legal/LegalPage';
import { privacy } from '@/content/legal';

export const metadata: Metadata = {
  title: 'Privacy Policy',
  description: privacy.summary,
  alternates: { canonical: `${siteConfig.domain}/privacy` },
};

export default function PrivacyPage() {
  return <LegalPage doc={privacy} />;
}
