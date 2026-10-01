/**
 * Clean, human-readable URLs:
 *   /drama/{drama}                                   series page (season list)
 *   /drama/{drama}/season-{n}                        season page (default version)
 *   /drama/{drama}/season-{n}/urdu-dubbed            season page, Urdu dubbed version
 *   /drama/{drama}/season-{n}/episode-{e}            episode
 *   /drama/{drama}/season-{n}/urdu-dubbed/episode-{e}
 * The default version of a season is its subtitled release, or its only release.
 */
import type { CatalogCollection, EpisodeGroup, SeasonGroup } from '@/types/catalog';

export const DUBBED_SEGMENT = 'urdu-dubbed';

export function dramaPath(dramaId: string): string {
  return `/drama/${dramaId}`;
}

export function seasonSlugOf(c: Pick<CatalogCollection, 'reported_seasons' | 'id'>): string {
  const s = c.reported_seasons || [];
  if (s.length > 1) return `seasons-${s.join('-')}`;
  if (s.length === 1) return `season-${s[0]}`;
  return `release-${c.id.replace(/^collection-/, '')}`;
}

/** True when this release is the one served at the plain season URL. */
export function isDefaultEdition(season: SeasonGroup, edition: Pick<CatalogCollection, 'id'>): boolean {
  return season.editions[0]?.id === edition.id;
}

export function seasonPath(dramaId: string, season: SeasonGroup, edition?: Pick<CatalogCollection, 'id'>): string {
  const base = `${dramaPath(dramaId)}/${seasonSlugOf(season.editions[0])}`;
  return edition && !isDefaultEdition(season, edition) ? `${base}/${DUBBED_SEGMENT}` : base;
}

/**
 * Stable slug per episode within one release: episode-5, episode-9-part-2, bolum-131,
 * and -b / -c for the rare duplicate numbers. Order follows the given list.
 */
export function episodeSlugs(groups: Pick<EpisodeGroup, 'id' | 'episode_number' | 'bolum' | 'part'>[]): Map<string, string> {
  const out = new Map<string, string>();
  const used = new Map<string, number>();
  groups.forEach((g, i) => {
    let base =
      g.episode_number != null ? `episode-${g.episode_number}` : g.bolum != null ? `bolum-${g.bolum}` : `episode-${i + 1}`;
    if (g.part != null) base += `-part-${g.part}`;
    const seen = used.get(base) ?? 0;
    used.set(base, seen + 1);
    out.set(g.id, seen === 0 ? base : `${base}-${String.fromCharCode(97 + seen)}`);
  });
  return out;
}

export function episodePath(seasonUrl: string, slug: string): string {
  return `${seasonUrl}/${slug}`;
}

/** Old-style link kept only so watch history saved before clean URLs still resolves. */
export function legacyEpisodePath(dramaId: string, groupId: string): string {
  return `${dramaPath(dramaId)}/watch/${groupId}`;
}

/** Season URL from an episode URL (drops the trailing episode segment). */
export function seasonPathFromEpisodePath(url: string): string {
  return url.replace(/\/[^/]+$/, '');
}
