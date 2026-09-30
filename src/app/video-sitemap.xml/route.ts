import { NextResponse } from 'next/server';
import { catalogRepository } from '@/lib/repository/catalog-repository';
import { siteConfig } from '@/config/site';

export async function GET() {
  catalogRepository.ensureLoaded();

  const baseUrl = siteConfig.domain;
  const pilotCol = catalogRepository.getPilotCollection();

  if (!pilotCol) {
    return new NextResponse('<?xml version="1.0" encoding="UTF-8"?><urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"></urlset>', {
      headers: { 'Content-Type': 'application/xml; charset=utf-8' },
    });
  }

  const drama = catalogRepository.getDrama(pilotCol.drama_id);
  const dramaName = drama?.name || 'Mehmed: Fetihler Sultani';
  const episodeGroups = catalogRepository.getCollectionEpisodeGroups(pilotCol.id);

  let xml = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:video="http://www.google.com/schemas/sitemap-video/1.1">
`;

  for (const group of episodeGroups) {
    const pageUrl = `${baseUrl}/drama/${pilotCol.drama_id}/watch/${group.id}`;
    const videos = catalogRepository.getVideosForGroup(group.id);
    const video = videos[0];

    if (!video || !video.stream_urls?.[0]) continue;

    const thumbnail = video.thumbnail_urls?.[0] || `${baseUrl}/images/fallback_poster.png`;
    const title = `${dramaName} - ${group.display_label}`;
    const description = video.title || `Watch ${group.display_label} of ${dramaName} in HD with Urdu and English subtitles.`;

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

  xml += `</urlset>`;

  return new NextResponse(xml, {
    headers: {
      'Content-Type': 'application/xml; charset=utf-8',
      'Cache-Control': 'public, max-age=86400, s-maxage=86400',
    },
  });
}
