import type { Metadata, Viewport } from 'next';
import './globals.css';
import './sezon.css';
import { UserPreferencesProvider } from '@/context/UserPreferencesContext';
import { Navbar } from '@/components/layout/Navbar';
import { MobileNav } from '@/components/layout/MobileNav';
import { PageShell } from '@/components/layout/PageShell';
import { Footer } from '@/components/layout/Footer';
import { siteConfig } from '@/config/site';

export const metadata: Metadata = {
  metadataBase: new URL(siteConfig.domain),
  title: {
    default: `${siteConfig.name} - ${siteConfig.tagline}`,
    template: `%s | ${siteConfig.name}`,
  },
  description: 'An ad-free, uninterrupted streaming platform for historical and cultural drama series.',
  openGraph: {
    type: 'website',
    locale: 'en_US',
    url: siteConfig.domain,
    siteName: siteConfig.name,
    title: `${siteConfig.name} - ${siteConfig.tagline}`,
    description: 'An ad-free, uninterrupted streaming platform for historical and cultural drama series.',
  },
  twitter: {
    card: 'summary_large_image',
    title: `${siteConfig.name} - ${siteConfig.tagline}`,
    description: 'An ad-free, uninterrupted streaming platform for historical and cultural drama series.',
  },
  robots: {
    index: false,
    follow: false,
  },
};

export const viewport: Viewport = {
  themeColor: '#09090b',
  width: 'device-width',
  initialScale: 1,
  maximumScale: 5,
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en" className="dark">
      <head>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossOrigin="anonymous" />
        <link
          href="https://fonts.googleapis.com/css2?family=Fraunces:ital,opsz,wght@0,9..144,400..700;1,9..144,400..600&family=Manrope:wght@400;500;600;700;800&family=Noto+Nastaliq+Urdu:wght@400;700&display=swap"
          rel="stylesheet"
        />
      </head>
      <body className="min-h-screen flex flex-col bg-canvas text-text-primary antialiased selection:bg-amber-500/30 selection:text-amber-200">
        <UserPreferencesProvider>
          <Navbar />
          <PageShell>{children}</PageShell>
          <Footer />
          <MobileNav />
        </UserPreferencesProvider>
      </body>
    </html>
  );
}
