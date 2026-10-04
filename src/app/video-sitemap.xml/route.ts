import { NextResponse } from 'next/server';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { siteConfig } from '@/config/site';
import { loadDrama, loadEditionEpisodes, episodeHref } from '@/lib/catalog-nav';
import { isEligibleEpisode, isPlayableVideo, episodeSeo, xmlEscape } from '@/lib/seo/catalog-seo';

export const revalidate = 300;
export const dynamic = 'force-dynamic';
export async function GET() {
  const dramas = (await supabaseCatalog.getAllDramas()).filter(d => d.status === 'published');
  const entries = await Promise.all(dramas.map(async d => {
    const loaded = await loadDrama(d.id);
    if (!loaded) return [];
    const batches = await Promise.all(loaded.seasons.flatMap(season => season.editions.map(async edition => {
      const data = await loadEditionEpisodes(edition.id);
      return data.groups.filter(group => isEligibleEpisode(loaded.drama, edition, group, data.videosByGroup.get(group.id) || [])).flatMap(group => {
        const video = (data.videosByGroup.get(group.id) || []).find(v => isPlayableVideo(v) && v.thumbnail_urls[0]);
        if (!video) return [];
        const seo = episodeSeo(loaded.drama, edition, group, data.videosByGroup.get(group.id) || []);
        const page = siteConfig.domain + episodeHref(d.id, season, edition, data.slugs.get(group.id)!);
        const publication = video.upload_date && !Number.isNaN(Date.parse(video.upload_date))
          ? `<video:publication_date>${xmlEscape(video.upload_date)}</video:publication_date>` : '';
        return [`<url><loc>${xmlEscape(page)}</loc><video:video>
          <video:thumbnail_loc>${xmlEscape(video.thumbnail_urls[0])}</video:thumbnail_loc>
          <video:title>${xmlEscape(seo.title)}</video:title>
          <video:description>${xmlEscape(seo.description)}</video:description>
          <video:content_loc>${xmlEscape(video.stream_urls[0])}</video:content_loc>${publication}
          </video:video></url>`];
      });
    })));
    return batches.flat();
  }));
  const xml = `<?xml version="1.0" encoding="UTF-8"?><urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:video="http://www.google.com/schemas/sitemap-video/1.1">${entries.flat().join('\n')}</urlset>`;
  return new NextResponse(xml, { headers: { 'Content-Type': 'application/xml; charset=utf-8',
    'Cache-Control': 'public, max-age=300, s-maxage=300' } });
}
