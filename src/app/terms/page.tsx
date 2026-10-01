import type { Metadata } from 'next';
import { siteConfig } from '@/config/site';
import { LegalPage } from '@/components/legal/LegalPage';
import { terms } from '@/content/legal';

export const metadata: Metadata = {
  title: 'Terms & Conditions',
  description: terms.summary,
  alternates: { canonical: `${siteConfig.domain}/terms` },
};

export default function TermsPage() {
  return <LegalPage doc={terms} />;
}
