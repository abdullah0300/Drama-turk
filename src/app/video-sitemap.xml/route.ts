import { NextResponse } from 'next/server';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { siteConfig } from '@/config/site';
import { loadDrama, loadEditionEpisodes, episodeHref } from '@/lib/catalog-nav';
import { isReleasePublished } from '@/types/catalog';

/** Video sitemap for the featured drama: every published episode with a stream, on clean URLs. */
export async function GET() {
  const baseUrl = siteConfig.domain;
  const featured = await supabaseCatalog.getPilotDrama();
  const loaded = featured ? await loadDrama(featured.id) : null;

  let xml = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:video="http://www.google.com/schemas/sitemap-video/1.1">
`;

  for (const season of loaded?.seasons ?? []) {
    for (const edition of season.editions) {
      if (!isReleasePublished(edition)) continue;
      const { groups, slugs, videosByGroup } = await loadEditionEpisodes(edition.id);
      for (const group of groups) {
        const video = (videosByGroup.get(group.id) || []).find((v) => v.stream_urls?.[0]);
        if (!video) continue;
        const pageUrl = `${baseUrl}${episodeHref(loaded!.drama.id, season, edition, slugs.get(group.id)!)}`;
        const thumbnail = video.thumbnail_urls?.[0] || `${baseUrl}/images/fallback_poster.png`;
        const title = `${loaded!.drama.name} - ${season.label} - ${group.display_label}`;
        const description = video.title || `Watch ${title} ad-free.`;
        xml += `  <url>
    <loc>${pageUrl}</loc>
    <video:video>
      <video:thumbnail_loc>${thumbnail}</video:thumbnail_loc>
      <video:title><![CDATA[${title}]]></video:title>
      <video:description><![CDATA[${description}]]></video:description>
      <video:content_loc>${video.stream_urls[0]}</video:content_loc>
      <video:player_loc allow_embed="no">${pageUrl}</video:player_loc>
      <video:family_friendly>yes</video:family_friendly>
      <video:requires_subscription>no</video:requires_subscription>
    </video:video>
  </url>
`;
      }
    }
  }

  xml += `</urlset>`;

  return new NextResponse(xml, {
    headers: {
      'Content-Type': 'application/xml; charset=utf-8',
      'Cache-Control': 'public, max-age=86400, s-maxage=86400',
    },
  });
}
