import 'server-only';
import { cache } from 'react';
import { unstable_cache } from 'next/cache';
import { publicCatalogCacheOptions } from '@/lib/public-catalog-cache';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { groupSeasons, CatalogCollection, Drama, EpisodeGroup, SeasonGroup, VideoRecord } from '@/types/catalog';
import { DUBBED_SEGMENT, episodePath, episodeSlugs, seasonPath, seasonSlugOf } from '@/lib/routes';
import { canonicalGroupId, episodeLabel, episodeNumbers } from '@/lib/seo/catalog-seo';

/** Drama with its seasons (releases grouped by season number). Cached per request. */
export const loadDrama = cache(unstable_cache(async (dramaId: string): Promise<{ drama: Drama; seasons: SeasonGroup[] } | null> => {
  const drama = await supabaseCatalog.getDrama(dramaId);
  if (!drama) return null;
  const seasons = groupSeasons(await supabaseCatalog.getDramaCollections(drama.id));
  if (supabaseCatalog.isConfigured() && drama.collection_ids.length && !seasons.length) throw new Error('Public season inventory unavailable');
  return { drama, seasons };
}, ['public-drama-navigation-v1'], publicCatalogCacheOptions));

export function findSeason(seasons: SeasonGroup[], slug: string): SeasonGroup | undefined {
  return seasons.find((s) => seasonSlugOf(s.editions[0]) === slug);
}

/** No segment = default release; "urdu-dubbed" = the dubbed release (if it is not already the default). */
export function findEdition(season: SeasonGroup, segment?: string): CatalogCollection | undefined {
  if (!segment) return season.editions[0];
  if (segment === DUBBED_SEGMENT) return season.editions.find((e) => e.version === 'dubbed');
  return undefined;
}

export interface EditionEpisodes {
  groups: EpisodeGroup[];
  slugs: Map<string, string>;
  videosByGroup: Map<string, VideoRecord[]>;
  /** Videos in this release that are not attached to an episode (behind the scenes, trailers…). */
  extras: VideoRecord[];
}

/** Episodes of one release, with their URL slugs and videos. Cached per request. */
const getPublicEditionInput = unstable_cache(async (collectionId: string) => {
  const [rawGroups, edition, initialVideos] = await Promise.all([
    supabaseCatalog.getCollectionEpisodeGroups(collectionId),
    supabaseCatalog.getCollection(collectionId),
    supabaseCatalog.getCollectionVideos(collectionId),
  ]);
  let videos = initialVideos;
  if (videos.length === 0 && rawGroups.length > 0) {
    // Fall back to per-group lookups when the bulk collection query returns nothing
    videos = (await Promise.all(rawGroups.map((g) => supabaseCatalog.getVideosForGroup(g.id)))).flat();
  }
  if (supabaseCatalog.isConfigured() && edition && videos.length < edition.video_records) {
    throw new Error(`Incomplete public video inventory for ${collectionId}; refusing to publish a partial catalog`);
  }
  // Next's persistent cache serializes JSON; rebuild Maps outside this cache.
  return { rawGroups, edition, videos };
}, ['public-edition-input-v1'], publicCatalogCacheOptions);

export const loadEditionEpisodes = cache(async (collectionId: string): Promise<EditionEpisodes> => {
  const { rawGroups, edition, videos } = await getPublicEditionInput(collectionId);
  // Compute old slugs before deduplication so existing URLs remain stable.
  const slugs = episodeSlugs(rawGroups);
  const groups = rawGroups.filter(g => canonicalGroupId(g.id) === g.id).map(g => {
    if (!edition) return g;
    return { ...g, bolum: episodeNumbers(edition, g).broadcast, display_label: episodeLabel(edition, g) };
  });
  const videosByGroup = new Map<string, VideoRecord[]>();
  const extras: VideoRecord[] = [];
  videos.forEach((v) => {
    if (!v.episode_group_id) {
      extras.push(v);
      return;
    }
    const groupId = canonicalGroupId(v.episode_group_id);
    if (!videosByGroup.has(groupId)) videosByGroup.set(groupId, []);
    const displayGroup = groups.find(g => g.id === groupId);
    videosByGroup.get(groupId)!.push(displayGroup ? { ...v, episode_group_id: groupId,
      display_label: displayGroup.display_label, title: `${v.drama} ${displayGroup.display_label}` } : v);
  });
  return { groups, slugs, videosByGroup, extras };
});

/** Clean URL of an episode, given the drama and the season/release it belongs to. */
export function episodeHref(dramaId: string, season: SeasonGroup, edition: CatalogCollection, slug: string): string {
  return episodePath(seasonPath(dramaId, season, edition), slug);
}

/** Resolve an episode group id (e.g. from older watch history) to its clean URL. */
export async function episodeHrefForGroup(dramaId: string, groupId: string): Promise<string | undefined> {
  const group = await supabaseCatalog.getEpisodeGroup(groupId);
  const loaded = await loadDrama(dramaId);
  if (!group || !loaded) return undefined;
  for (const season of loaded.seasons) {
    const edition = season.editions.find((e) => e.id === group.collection_id);
    if (!edition) continue;
    const { slugs } = await loadEditionEpisodes(edition.id);
    const slug = slugs.get(canonicalGroupId(group.id));
    return slug ? episodeHref(dramaId, season, edition, slug) : seasonPath(dramaId, season, edition);
  }
  return undefined;
}

/** Clean URL of a season release, given its collection id. */
export async function seasonHrefForCollection(dramaId: string, collectionId: string): Promise<string | undefined> {
  const loaded = await loadDrama(dramaId);
  if (!loaded) return undefined;
  for (const season of loaded.seasons) {
    const edition = season.editions.find((e) => e.id === collectionId);
    if (edition) return seasonPath(dramaId, season, edition);
  }
  return undefined;
}
