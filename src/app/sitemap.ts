import { MetadataRoute } from 'next';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { siteConfig } from '@/config/site';
import { loadDrama, loadEditionEpisodes, episodeHref } from '@/lib/catalog-nav';
import { isReleasePublished } from '@/types/catalog';
import { dramaPath, seasonPath } from '@/lib/routes';

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

  // Dramas, every season release and every episode, all on clean URLs
  const dramas = await supabaseCatalog.getAllDramas();
  for (const d of dramas) {
    const loaded = await loadDrama(d.id);
    if (!loaded) continue;
    routes.push({
      url: `${baseUrl}${dramaPath(d.id)}`,
      lastModified: staticLastMod,
      changeFrequency: d.isPilot ? 'daily' : 'weekly',
      priority: d.isPilot ? 0.9 : 0.7,
    });

    for (const season of loaded.seasons) {
      for (const edition of season.editions) {
        if (!isReleasePublished(edition)) continue;
        routes.push({
          url: `${baseUrl}${seasonPath(d.id, season, edition)}`,
          lastModified: staticLastMod,
          changeFrequency: 'weekly',
          priority: 0.6,
        });
        const { groups, slugs } = await loadEditionEpisodes(edition.id);
        for (const g of groups) {
          routes.push({
            url: `${baseUrl}${episodeHref(d.id, season, edition, slugs.get(g.id)!)}`,
            lastModified: staticLastMod,
            changeFrequency: 'monthly',
            priority: 0.5,
          });
        }
      }
    }
  }

  return routes;
}
