import 'server-only';
import { cache } from 'react';
import { supabaseCatalog } from '@/lib/repository/supabase-catalog-repository';
import { groupSeasons, CatalogCollection, Drama, EpisodeGroup, SeasonGroup, VideoRecord } from '@/types/catalog';
import { DUBBED_SEGMENT, episodePath, episodeSlugs, seasonPath, seasonSlugOf } from '@/lib/routes';

/** Drama with its seasons (releases grouped by season number). Cached per request. */
export const loadDrama = cache(async (dramaId: string): Promise<{ drama: Drama; seasons: SeasonGroup[] } | null> => {
  const drama = await supabaseCatalog.getDrama(dramaId);
  if (!drama) return null;
  const seasons = groupSeasons(await supabaseCatalog.getDramaCollections(drama.id));
  return { drama, seasons };
});

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
export const loadEditionEpisodes = cache(async (collectionId: string): Promise<EditionEpisodes> => {
  const groups = await supabaseCatalog.getCollectionEpisodeGroups(collectionId);
  let videos = await supabaseCatalog.getCollectionVideos(collectionId);
  if (videos.length === 0 && groups.length > 0) {
    // Fall back to per-group lookups when the bulk collection query returns nothing
    videos = (await Promise.all(groups.map((g) => supabaseCatalog.getVideosForGroup(g.id)))).flat();
  }
  const videosByGroup = new Map<string, VideoRecord[]>();
  const extras: VideoRecord[] = [];
  videos.forEach((v) => {
    if (!v.episode_group_id) {
      extras.push(v);
      return;
    }
    if (!videosByGroup.has(v.episode_group_id)) videosByGroup.set(v.episode_group_id, []);
    videosByGroup.get(v.episode_group_id)!.push(v);
  });
  return { groups, slugs: episodeSlugs(groups), videosByGroup, extras };
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
    const slug = slugs.get(group.id);
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
