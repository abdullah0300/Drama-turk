import type { Metadata, Viewport } from 'next';
import './globals.css';
import { UserPreferencesProvider } from '@/context/UserPreferencesContext';
import { Navbar } from '@/components/layout/Navbar';
import { MobileNav } from '@/components/layout/MobileNav';
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
  themeColor: '#0c0e12',
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
          href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500;700;900&family=Noto+Nastaliq+Urdu:wght@400;700&display=swap"
          rel="stylesheet"
        />
      </head>
      <body className="min-h-screen flex flex-col bg-canvas text-text-primary antialiased selection:bg-amber-500/30 selection:text-amber-200">
        <UserPreferencesProvider>
          <Navbar />
          <main id="main-content" className="flex-1 pb-16 md:pb-0 focus:outline-none">
            {children}
          </main>
          <Footer />
          <MobileNav />
        </UserPreferencesProvider>
      </body>
    </html>
  );
}
