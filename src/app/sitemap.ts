import { MetadataRoute } from 'next';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { siteConfig } from '@/config/site';
import { loadDrama, loadEditionEpisodes, episodeHref } from '@/lib/catalog-nav';
import { isEligibleEpisode } from '@/lib/seo/catalog-seo';
import { getUpcomingEpisode } from '@/lib/releases/upcoming';
import { isReleasePublished } from '@/types/catalog';
import { dramaPath, seasonPath } from '@/lib/routes';

export const revalidate = 300;
export const dynamic = 'force-dynamic';

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const baseUrl = siteConfig.domain;

  // Static published pages (canonical only)
  const routes: MetadataRoute.Sitemap = [
    {
      url: `${baseUrl}`,
      changeFrequency: 'daily',
      priority: 1.0,
    },
    {
      url: `${baseUrl}/browse`,
      changeFrequency: 'daily',
      priority: 0.9,
    },
    {
      url: `${baseUrl}/about`,
      changeFrequency: 'monthly',
      priority: 0.5,
    },
    {
      url: `${baseUrl}/privacy`,
      changeFrequency: 'monthly',
      priority: 0.4,
    },
    {
      url: `${baseUrl}/contact`,
      changeFrequency: 'monthly',
      priority: 0.4,
    },
  ];

  try {
    // Dramas, every season release and every episode, all on clean URLs
    const dramas = await supabaseCatalog.getAllDramas();
    const dramaRouteBatches = await Promise.all(
      dramas.filter(d => d.status === 'published').map(async (d) => {
        const loaded = await loadDrama(d.id);
        if (!loaded) return [];

        const dramaEntries: MetadataRoute.Sitemap = [
          {
            url: `${baseUrl}${dramaPath(d.id)}`,
            lastModified: loaded.drama.updated_at,
            changeFrequency: d.isPilot ? 'daily' : 'weekly',
            priority: d.isPilot ? 0.9 : 0.7,
          },
        ];

        for (const season of loaded.seasons) {
          for (const edition of season.editions) {
            if (!isReleasePublished(edition)) continue;
            const data = await loadEditionEpisodes(edition.id);
            const groups = data.groups.filter(g => isEligibleEpisode(loaded.drama, edition, g, data.videosByGroup.get(g.id) || []));
            if (!groups.length) continue;
            dramaEntries.push({
              url: `${baseUrl}${seasonPath(d.id, season, edition)}`,
              lastModified: edition.editorial?.updated_at || edition.updated_at,
              changeFrequency: 'weekly',
              priority: 0.6,
            });

            // Reuse the full inventory so sitemap inclusion agrees with watch-page eligibility.
            const slugs = data.slugs;
            for (const g of groups) {
              const slug = slugs.get(g.id);
              if (!slug) continue;
              dramaEntries.push({
                url: `${baseUrl}${episodeHref(d.id, season, edition, slug)}`,
                lastModified: g.editorial?.updated_at || g.updated_at,
                changeFrequency: 'monthly',
                priority: 0.5,
              });
            }
          }
        }

        const upcoming = await getUpcomingEpisode(d.id);
        if (upcoming && !dramaEntries.some(e=>e.url===baseUrl+upcoming.href)) {
          dramaEntries.push({url:baseUrl+upcoming.href,changeFrequency:'daily',priority:0.6});
        }
        return dramaEntries;
      })
    );

    for (const batch of dramaRouteBatches) {
      routes.push(...batch);
    }
  } catch (err) {
    console.error('[sitemap] Failed to load catalog items for sitemap:', err);
  }

  return routes;
}
