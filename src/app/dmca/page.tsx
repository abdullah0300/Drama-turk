import type { Metadata } from 'next';
import { siteConfig } from '@/config/site';
import { LegalPage } from '@/components/legal/LegalPage';
import { dmca } from '@/content/legal';

export const metadata: Metadata = {
  title: 'DMCA & Copyright',
  description: dmca.summary,
  alternates: { canonical: `${siteConfig.domain}/dmca` },
};

export default function DmcaPage() {
  return <LegalPage doc={dmca} />;
}
