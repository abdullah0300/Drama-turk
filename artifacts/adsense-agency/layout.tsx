import type { Metadata } from "next";
import Script from "next/script";
import { Space_Grotesk, JetBrains_Mono } from "next/font/google";
import LenisProvider from "@/components/LenisProvider";
import PromoBanner from "@/components/PromoBanner";
import AiSummarize from "@/components/AiSummarize";
import IntercomProvider from "@/components/IntercomProvider";
import "./globals.css";

const spaceGrotesk = Space_Grotesk({
  variable: "--font-space-grotesk",
  subsets: ["latin"],
  weight: ["400", "500", "600", "700"],
  display: "swap",
});

const jetBrainsMono = JetBrains_Mono({
  variable: "--font-jetbrains-mono",
  subsets: ["latin"],
  weight: ["400", "500"],
  display: "swap",
});

export const metadata: Metadata = {
  title: "WebCraftio  Digital Product Studio & AI Automation Agency",
  description:
    "WebCraftio is a UK-based digital product studio shipping AI, SaaS, web and mobile apps. We offer bespoke web design, custom software development, and AI automation services.",
  keywords: [
    "white label website design",
    "white label web design services",
    "white label website development",
    "white label web design",
    "white label wordpress agency",
    "white label seo company",
    "white label app development",
    "white label seo services",
    "white label seo agency",
    "white label digital marketing agency",
    "ai automation agency",
    "ai automation agency uk",
    "ai automation agency services",
    "conversational ai agency",
    "chatbot development services",
    "ai business automation",
    "generative engine optimisation services",
    "ai seo agency",
    "bespoke web design agency",
    "custom web development company",
    "custom web development agency",
    "startup website design",
    "web development agency uk",
    "website development company uk",
    "ui ux design agency",
    "website design and development",
    "software development agency",
    "custom software development company",
    "agency website design",
    "web app development",
    "mobile app development company",
    "search engine optimisation agency",
    "professional seo services",
    "seo services uk",
  ],
  openGraph: {
    title: "WebCraftio: Digital Product Studio",
    description: "We don't just build, we grow with you. A digital product studio shipping AI, SaaS, web and mobile.",
    url: "https://webcraftio.com",
    siteName: "WebCraftio",
    locale: "en_GB",
    type: "website",
  },
  twitter: {
    card: "summary_large_image",
    title: "WebCraftio: Digital Product Studio",
    description: "We don't just build, we grow with you. A digital product studio shipping AI, SaaS, web and mobile.",
  },
  alternates: {
    canonical: "https://webcraftio.com",
  },
};

const jsonLd = {
  "@context": "https://schema.org",
  "@type": "ProfessionalService",
  "name": "WebCraftio",
  "url": "https://webcraftio.com",
  "logo": "https://webcraftio.com/webcraftio.png",
  "image": "https://webcraftio.com/webcraftio.png",
  "description": "A UK-based digital product studio shipping AI, SaaS, web and mobile apps. Specializing in bespoke web design, custom software development, and AI automation services.",
  "foundingDate": "2019",
  "telephone": "+44 7476 892300",
  "email": "info@webcraftio.com",
  "sameAs": [
    "https://www.linkedin.com/company/webcraftio",
    "https://www.instagram.com/webcraftio_com",
    "https://www.facebook.com/share/18tKnQ6oDJ/",
    "https://clutch.co/profile/webcraftio"
  ],
  "address": {
    "@type": "PostalAddress",
    "addressLocality": "Derby",
    "addressRegion": "Derbyshire",
    "addressCountry": "GB"
  },
  "areaServed": {
    "@type": "Country",
    "name": "United Kingdom"
  },
  "makesOffer": [
    {
      "@type": "Offer",
      "itemOffered": {
        "@type": "Service",
        "name": "White Label Web Design & Development"
      }
    },
    {
      "@type": "Offer",
      "itemOffered": {
        "@type": "Service",
        "name": "AI Automation & Chatbot Development"
      }
    },
    {
      "@type": "Offer",
      "itemOffered": {
        "@type": "Service",
        "name": "Custom Software & Web App Development"
      }
    },
    {
      "@type": "Offer",
      "itemOffered": {
        "@type": "Service",
        "name": "Search Engine Optimisation Services"
      }
    }
  ]
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  const clarityId = process.env.NEXT_PUBLIC_CLARITY_ID || "y615bio3pl";
  const gaId = process.env.NEXT_PUBLIC_GA_ID || "G-YVP9J0J538";
  const leadfeederId = process.env.NEXT_PUBLIC_LEADFEEDER_ID || "DzLR5a5qAVDaBoQ2";

  return (
    <html lang="en">
      <head>
        <script
          async
          src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-7996049604537192"
          crossOrigin="anonymous"
        />
        <script
          type="application/ld+json"
          dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
        />
        {/* Leadfeeder Tracking */}
        {leadfeederId && (
          <Script id="leadfeeder-tracking" strategy="afterInteractive">
            {`
              (function(ss,ex){ window.ldfdr=window.ldfdr||function(){(ldfdr._q=ldfdr._q||[]).push([].slice.call(arguments));}; (function(d,s){ fs=d.getElementsByTagName(s)[0]; function ce(src){ var cs=d.createElement(s); cs.src=src; cs.async=1; fs.parentNode.insertBefore(cs,fs); }; ce('https://sc.lfeeder.com/lftracker_v1_'+ss+(ex?'_'+ex:'')+'.js'); })(document,'script'); })('${leadfeederId}');
            `}
          </Script>
        )}
        {/* Microsoft Clarity Tracking */}
        {clarityId && (
          <Script id="microsoft-clarity" strategy="afterInteractive">
            {`
              (function(c,l,a,r,i,t,y){
                  c[a]=c[a]||function(){(c[a].q=c[a].q||[]).push(arguments)};
                  t=l.createElement(r);t.async=1;t.src="https://www.clarity.ms/tag/"+i;
                  y=l.getElementsByTagName(r)[0];y.parentNode.insertBefore(t,y);
              })(window, document, "clarity", "script", "${clarityId}");
            `}
          </Script>
        )}
        {/* Google Analytics 4 (GA4) */}
        {gaId && (
          <>
            <Script
              src={`https://www.googletagmanager.com/gtag/js?id=${gaId}`}
              strategy="afterInteractive"
            />
            <Script id="google-analytics" strategy="afterInteractive">
              {`
                window.dataLayer = window.dataLayer || [];
                function gtag(){dataLayer.push(arguments);}
                gtag('js', new Date());
                gtag('config', '${gaId}', {
                  page_path: window.location.pathname,
                });
              `}
            </Script>
          </>
        )}
      </head>
      <body className={`${spaceGrotesk.variable} ${jetBrainsMono.variable}`} suppressHydrationWarning>
        <PromoBanner />
        <LenisProvider>
          {children}
        </LenisProvider>
        <AiSummarize />
        <IntercomProvider />
      </body>
    </html>
  );
}