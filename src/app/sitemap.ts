import { MetadataRoute } from 'next';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { siteConfig } from '@/config/site';
import { loadDrama, episodeHref } from '@/lib/catalog-nav';
import { isReleasePublished } from '@/types/catalog';
import { dramaPath, seasonPath, episodeSlugs } from '@/lib/routes';

export const revalidate = 86400; // 24 hours ISR

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const baseUrl = siteConfig.domain;
  const staticLastMod = new Date('2026-09-30T12:00:00Z');

  // Static published pages (canonical only)
  const routes: MetadataRoute.Sitemap = [
    {
      url: `${baseUrl}`,
      lastModified: staticLastMod,
      changeFrequency: 'daily',
      priority: 1.0,
    },
    {
      url: `${baseUrl}/browse`,
      lastModified: staticLastMod,
      changeFrequency: 'daily',
      priority: 0.9,
    },
    {
      url: `${baseUrl}/about`,
      lastModified: staticLastMod,
      changeFrequency: 'monthly',
      priority: 0.5,
    },
    {
      url: `${baseUrl}/privacy`,
      lastModified: staticLastMod,
      changeFrequency: 'monthly',
      priority: 0.4,
    },
    {
      url: `${baseUrl}/contact`,
      lastModified: staticLastMod,
      changeFrequency: 'monthly',
      priority: 0.4,
    },
  ];

  try {
    // Dramas, every season release and every episode, all on clean URLs
    const dramas = await supabaseCatalog.getAllDramas();
    const dramaRouteBatches = await Promise.all(
      dramas.map(async (d) => {
        const loaded = await loadDrama(d.id);
        if (!loaded) return [];

        const dramaEntries: MetadataRoute.Sitemap = [
          {
            url: `${baseUrl}${dramaPath(d.id)}`,
            lastModified: staticLastMod,
            changeFrequency: d.isPilot ? 'daily' : 'weekly',
            priority: d.isPilot ? 0.9 : 0.7,
          },
        ];

        for (const season of loaded.seasons) {
          for (const edition of season.editions) {
            if (!isReleasePublished(edition)) continue;
            dramaEntries.push({
              url: `${baseUrl}${seasonPath(d.id, season, edition)}`,
              lastModified: staticLastMod,
              changeFrequency: 'weekly',
              priority: 0.6,
            });

            // Fetch only episode groups — video stream payloads are not needed for URL generation
            const groups = await supabaseCatalog.getCollectionEpisodeGroups(edition.id);
            const slugs = episodeSlugs(groups);
            for (const g of groups) {
              const slug = slugs.get(g.id);
              if (!slug) continue;
              dramaEntries.push({
                url: `${baseUrl}${episodeHref(d.id, season, edition, slug)}`,
                lastModified: staticLastMod,
                changeFrequency: 'monthly',
                priority: 0.5,
              });
            }
          }
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
