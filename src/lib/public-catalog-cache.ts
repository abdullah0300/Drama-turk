import 'server-only';
import { unstable_cache } from 'next/cache';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { isEligibleEpisode, episodeLabel, episodeNumbers } from '@/lib/seo/catalog-seo';

// Only anonymous public catalog data belongs here. Admin/auth reads stay uncached.
export const PUBLIC_CATALOG_TAG = 'public-catalog';
export const publicCatalogCacheOptions = { revalidate: 60, tags: [PUBLIC_CATALOG_TAG] };

export const getPublicDramas = unstable_cache(async () => {
  const rows = await supabaseCatalog.getAllDramas();
  if (supabaseCatalog.isConfigured() && !rows.length) throw new Error('Public drama inventory unavailable');
  return rows;
}, ['public-drama-directory-v1'], publicCatalogCacheOptions);

export const getPublicNotifications = unstable_cache(async () => {
  const rows = await supabaseCatalog.getLatestEpisodePerDrama(undefined, 5);
  if (supabaseCatalog.isConfigured() && !rows.length) throw new Error('Public notifications unavailable');
  return rows;
}, ['public-notifications-v1'], publicCatalogCacheOptions);

export const getPublicHomeEpisodes = unstable_cache(async () => {
  const rows = await supabaseCatalog.getLatestEpisodePerDrama();
  if (supabaseCatalog.isConfigured() && !rows.length) throw new Error('Public homepage episodes unavailable');
  return rows.filter(r => isEligibleEpisode(r.drama, r.collection, r.group, [r.video]) && r.video.upload_date && Number.isFinite(Date.parse(r.video.upload_date)))
    .sort((a, b) => Date.parse(b.video.upload_date!) - Date.parse(a.video.upload_date!))
    .map(r => ({ ...r, group: { ...r.group, bolum: episodeNumbers(r.collection, r.group).broadcast, display_label: episodeLabel(r.collection, r.group) } }));
}, ['public-home-episodes-v1'], publicCatalogCacheOptions);

export const getPublicViewingChoices = unstable_cache(() => supabaseCatalog.getViewingChoices(),
  ['public-viewing-choices-v2'], publicCatalogCacheOptions);
export const getPublicHomeSettings = unstable_cache(() => supabaseCatalog.getSiteSettings(),
  ['public-home-settings-v1'], publicCatalogCacheOptions);
