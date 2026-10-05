import type { Metadata, Viewport } from 'next';
import Script from 'next/script';
import './globals.css';
import './sezon.css';
import { UserPreferencesProvider } from '@/context/UserPreferencesContext';
import { Navbar } from '@/components/layout/Navbar';
import { MobileNav } from '@/components/layout/MobileNav';
import { PageShell } from '@/components/layout/PageShell';
import { Footer } from '@/components/layout/Footer';
import { siteConfig, publicIndexingEnabled } from '@/config/site';
import { isDramaPlayable } from '@/types/catalog';
import { getPublicDramas, getPublicNotifications } from '@/lib/public-catalog-cache';

// The shared navigation must follow publication changes on every route, including
// informational pages. Its anonymous catalog queries remain cached for 60 seconds.
export const dynamic = 'force-dynamic';

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
    index: publicIndexingEnabled,
    follow: publicIndexingEnabled,
  },
};

export const viewport: Viewport = {
  themeColor: '#09090b',
  width: 'device-width',
  initialScale: 1,
  maximumScale: 5,
};

export default async function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  const [dramas, latest] = await Promise.all([
    getPublicDramas().catch(() => []),
    getPublicNotifications().catch(() => []),
  ]);
  const searchDramas = dramas.map((d) => ({
    id: d.id,
    name: d.name,
    genre: d.genres?.[0] || '',
    poster: d.poster_url,
    isPilot: isDramaPlayable(d),
  }));
  const footerDramas = dramas.filter(isDramaPlayable).slice(0, 5).map((d) => ({ id: d.id, name: d.name }));
  const notifications = latest.map(({ group, video, drama, href }) => ({
    id: group.id,
    title: drama.name,
    label: group.display_label,
    thumb: video.thumbnail_urls?.[0],
    href,
  }));

  return (
    <html lang="en" className="dark">
      <head>
        <script
          async
          src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-7996049604537192"
          crossOrigin="anonymous"
        />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossOrigin="anonymous" />
        <link
          href="https://fonts.googleapis.com/css2?family=Fraunces:ital,opsz,wght@0,9..144,400..700;1,9..144,400..600&family=Manrope:wght@400;500;600;700;800&family=Noto+Nastaliq+Urdu:wght@400;700&display=swap"
          rel="stylesheet"
        />
      </head>
      <body className="min-h-screen flex flex-col bg-canvas text-text-primary antialiased selection:bg-amber-500/30 selection:text-amber-200">
        {/* Google Analytics (gtag.js) */}
        <Script
          src="https://www.googletagmanager.com/gtag/js?id=G-GB5Z70JQXM"
          strategy="afterInteractive"
        />
        <Script id="google-analytics" strategy="afterInteractive">
          {`
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());
            gtag('config', 'G-GB5Z70JQXM');
          `}
        </Script>

        {/* Microsoft Clarity */}
        <Script id="microsoft-clarity" strategy="afterInteractive">
          {`
            (function(c,l,a,r,i,t,y){
                c[a]=c[a]||function(){(c[a].q=c[a].q||[]).push(arguments)};
                t=l.createElement(r);t.async=1;t.src="https://www.clarity.ms/tag/"+i;
                y=l.getElementsByTagName(r)[0];y.parentNode.insertBefore(t,y);
            })(window, document, "clarity", "script", "yqx7y2skf6");
          `}
        </Script>

        <UserPreferencesProvider>
          <Navbar dramas={searchDramas} notifications={notifications} />
          <PageShell>{children}</PageShell>
          <Footer dramas={footerDramas} />
          <MobileNav />
        </UserPreferencesProvider>
      </body>
    </html>
  );
}
