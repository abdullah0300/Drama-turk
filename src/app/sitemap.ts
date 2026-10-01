import { MetadataRoute } from 'next';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { siteConfig } from '@/config/site';

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

  // Published drama canonical pages (24 dramas)
  const dramas = await supabaseCatalog.getAllDramas();
  for (const drama of dramas) {
    routes.push({
      url: `${baseUrl}/drama/${drama.id}`,
      lastModified: staticLastMod,
      changeFrequency: drama.isPilot ? 'daily' : 'weekly',
      priority: drama.isPilot ? 0.9 : 0.7,
    });

    // Add pilot collections
    const collections = await supabaseCatalog.getDramaCollections(drama.id);
    for (const col of collections) {
      routes.push({
        url: `${baseUrl}/drama/${drama.id}/collection/${col.id}`,
        lastModified: staticLastMod,
        changeFrequency: 'weekly',
        priority: 0.6,
      });
    }
  }

  // Add playable pilot episodes (collection-68)
  const pilotCol = await supabaseCatalog.getPilotCollection();
  if (pilotCol) {
    const episodeGroups = await supabaseCatalog.getCollectionEpisodeGroups(pilotCol.id);
    for (const group of episodeGroups) {
      routes.push({
        url: `${baseUrl}/drama/${pilotCol.drama_id}/watch/${group.id}`,
        lastModified: staticLastMod,
        changeFrequency: 'weekly',
        priority: 0.8,
      });
    }
  }

  return routes;
}
