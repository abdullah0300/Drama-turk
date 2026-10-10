import type { Metadata } from 'next';
import type { Drama, CatalogCollection, EpisodeGroup, VideoRecord, PublishedEditorial } from '@/types/catalog';
import { siteConfig, publicIndexingEnabled } from '@/config/site';

export const SEO_TITLE_MAX = 60;
export const SEO_DESCRIPTION_MAX = 160;
export const FATIH_ID = 'mehmed-fetihler-sultani';

// Preserve imported IDs and URLs while combining language renditions of one broadcast.
// Evidence and unresolved records are documented in docs/seo/mehmed-implementation.md.
export const FATIH_GROUP_ALIASES: Record<string, string> = {
  'collection-68-bolum-49': 'collection-68-bolum-149',
  'collection-76-episode-52': 'collection-76-bolum-52',
  'collection-76-episode-61': 'collection-76-bolum-61',
};
const identityHolds = new Set(['collection-68-episode-1']);

export function canonicalGroupId(id: string): string { return FATIH_GROUP_ALIASES[id] || id; }
export function hasReviewedIdentity(group: Pick<EpisodeGroup, 'id'>): boolean {
  return !identityHolds.has(group.id);
}
export function isPlayableVideo(video: VideoRecord): boolean {
  return video.stream_present && video.stream_urls.length > 0;
}

/** Use the same selectable rendition's facts in JSON-LD and the video sitemap. */
export function selectVideoMetadata(videos: VideoRecord[]): VideoRecord | undefined {
  const candidates = videos.filter(v => isPlayableVideo(v) && v.thumbnail_urls[0]);
  return candidates.find(v => v.upload_date && Number.isFinite(Date.parse(v.upload_date))) || candidates[0];
}

/** Missing source labels between listed episodes, without inventing or renumbering releases. */
export function episodeNumberGaps(groups: Pick<EpisodeGroup, 'episode_number'>[]): string[] {
  const numbers = Array.from(new Set(groups.map(g => g.episode_number).filter((n): n is number => n != null && Number.isSafeInteger(n) && n > 0))).sort((a, b) => a - b);
  const gaps: string[] = [];
  numbers.slice(1).forEach((n, i) => {
    const first = numbers[i] + 1;
    const last = n - 1;
    if (first <= last) gaps.push(first === last ? String(first) : `${first}–${last}`);
  });
  return gaps;
}
export function isEligibleEpisode(drama: Drama, edition: CatalogCollection, group: EpisodeGroup, videos: VideoRecord[]): boolean {
  return (drama.status === 'published' || drama.status === undefined) &&
    (edition.status === 'published' || edition.status === undefined) &&
    (group.status === 'published' || group.status === undefined) &&
    hasReviewedIdentity(group) && canonicalGroupId(group.id) === group.id && videos.some(isPlayableVideo);
}

export function selectEditorial(rows: unknown): PublishedEditorial | undefined {
  if (!Array.isArray(rows)) return undefined;
  const row = rows.find((r) => r.locale === 'en');
  if (!row) return undefined;
  return {
    title: row.approved_display_title,
    description: row.short_description,
    seo_title: row.seo_title || undefined,
    seo_description: row.seo_description || undefined,
    sections: Array.isArray(row.structured_article) ? row.structured_article.filter((s: any) =>
      typeof s?.heading === 'string' && typeof s?.content === 'string').map((s: any) => ({
        heading: s.heading, content: s.content, is_spoiler: s.is_spoiler === true,
        sources: Array.isArray(s.sources) ? s.sources.filter((source: any) => typeof source?.name === 'string' && typeof source?.url === 'string' && /^https:\/\//.test(source.url)) : [],
      })) : [],
    updated_at: row.updated_at,
    published_at: row.published_at,
  };
}

export function fitText(value: string, max: number): string {
  const clean = value.replace(/\s+/g, ' ').trim();
  if (clean.length <= max) return clean;
  const candidate = clean.slice(0, max - 1);
  const space = candidate.lastIndexOf(' ');
  return `${candidate.slice(0, space > max * 0.65 ? space : candidate.length).replace(/[ ,;:|–—-]+$/, '')}…`;
}

export function episodeNumbers(edition: CatalogCollection, group: EpisodeGroup): { episode: number | null; broadcast: number | null } {
  const episode = group.episode_number;
  if (group.drama_id !== FATIH_ID || !hasReviewedIdentity(group)) return { episode, broadcast: group.bolum };
  // S1–S3 imported episode labels use broadcast numbering. S4 uses local numbering.
  const broadcast = group.id === 'collection-68-bolum-149' ? 49 : group.bolum ??
    (edition.version === 'subtitled' && (edition.reported_seasons[0] ?? 0) <= 3 ? episode : null);
  return { episode, broadcast };
}

export function episodeLabel(edition: CatalogCollection, group: EpisodeGroup): string {
  const { episode, broadcast } = episodeNumbers(edition, group);
  const part = group.part == null ? '' : ` · Part ${group.part}`;
  return `Episode ${episode ?? '?'}${part}${broadcast == null ? '' : ` · Bolum ${broadcast}`}`;
}

export function languageLabel(edition: CatalogCollection, videos: VideoRecord[]): string {
  const languages = Array.from(new Set(videos.filter(isPlayableVideo).flatMap(v => v.languages))).sort((a, b) =>
    (a === 'Urdu' ? -1 : b === 'Urdu' ? 1 : a.localeCompare(b)));
  const suffix = edition.version === 'dubbed' ? 'Dubbed' : edition.version === 'original' ? 'Audio' : 'Subtitles';
  return languages.length ? `${languages.join(' & ')} ${suffix}` : 'Availability under review';
}

export function seriesName(drama: Pick<Drama, 'id' | 'name'>): string {
  return drama.id === FATIH_ID ? 'Mehmed Fetihler Sultani' : drama.name;
}

export function episodeSeo(drama: Drama, edition: CatalogCollection, group: EpisodeGroup, videos: VideoRecord[]) {
  const { episode, broadcast } = episodeNumbers(edition, group);
  const season = edition.reported_seasons[0];
  const languages = languageLabel(edition, videos);
  const part = group.part == null ? '' : ` P${group.part}`;
  const identity = `S${season ?? '?'} E${episode ?? '?'}${part}${broadcast == null ? '' : ` | Bolum ${broadcast}`}`;
  const shortName = drama.id === 'alparslan-buyuk-selcuklu' ? 'Alparslan' : seriesName(drama);
  const compactIdentity = `S${season ?? '?'} E${episode ?? '?'}${part}${broadcast == null ? '' : ` B${broadcast}`}`;
  const compactLanguages = languages.replace(' & ', '/').replace('Subtitles', 'Subs');
  const candidates = [`${seriesName(drama)} ${identity} | ${languages}`, `${shortName} ${compactIdentity} | ${compactLanguages}`];
  const generatedTitle = candidates.find(t => t.length <= SEO_TITLE_MAX) || candidates[1];
  const viewingPhrase = edition.version === 'dubbed' ? `in ${languages.replace('Dubbed', 'dubbed audio')}` : `with ${languages.replace('Subtitles', 'subtitles')}`;
  const intro = `Watch ${seriesName(drama)} Season ${season} Episode ${episode}${broadcast == null ? '' : ` (Bolum ${broadcast})`} ${viewingPhrase}.`;
  const endings = [
    " Explore episode details, choose a rendition and browse available episodes on Great Nation.",
    broadcast == null ? " Choose a rendition and follow this release's episode order." : " Choose a rendition, check both numbers and browse this season's episodes.",
    " Check episode details and browse the season's available episodes.",
    " Browse episode details and the available viewing choices.",
  ];
  const description = endings.map(end => intro + end).find(text => text.length <= SEO_DESCRIPTION_MAX) || intro;
  return {
    title: fitText(group.editorial?.seo_title || generatedTitle, SEO_TITLE_MAX),
    description: fitText(group.editorial?.seo_description || description, SEO_DESCRIPTION_MAX),
    heading: `${drama.name} Season ${season} ${episodeLabel(edition, group)} — ${languages}`,
    summary: group.editorial?.description || fitText(description, SEO_DESCRIPTION_MAX),
    languages,
  };
}

export function seasonSeo(drama: Drama, edition: CatalogCollection, videos: VideoRecord[]) {
  const languages = languageLabel(edition, videos);
  const title = `${seriesName(drama)} Season ${edition.reported_seasons.join(' & ')} | ${languages}`;
  const short = `${seriesName(drama)} Season ${edition.reported_seasons.join(' & ')} | ${languages.replace(' & ', '/').replace('Subtitles', 'Subs')}`;
  return {
    title: fitText(edition.editorial?.seo_title || (title.length <= SEO_TITLE_MAX ? title : short), SEO_TITLE_MAX),
    description: fitText(edition.editorial?.seo_description || `Explore ${seriesName(drama)} Season ${edition.reported_seasons.join(' & ')} with ${languages.toLowerCase()}. Browse available episodes, broadcast numbers and viewing choices.`, SEO_DESCRIPTION_MAX),
  };
}

export function dramaSeo(drama: Drama) {
  return {
    title: fitText(drama.editorial?.seo_title || (drama.id === FATIH_ID ? 'Mehmed Fetihler Sultani | Sultan Muhammad Fateh' :
      drama.id === 'teskilat' ? 'Teşkilat (The Shadow Team) | Eng & Urdu Subs' : drama.name), SEO_TITLE_MAX),
    description: fitText(drama.editorial?.seo_description || drama.synopsis || `Explore ${drama.name}, its available seasons, episode numbers and viewing editions.`, SEO_DESCRIPTION_MAX),
  };
}

export function pageMetadata(path: string, title: string, description: string, eligible: boolean, image?: string): Metadata {
  const url = `${siteConfig.domain}${path}`;
  return {
    // Absolute prevents the root brand template from exceeding the title budget.
    title: { absolute: fitText(title, SEO_TITLE_MAX) },
    description: fitText(description, SEO_DESCRIPTION_MAX),
    alternates: { canonical: url },
    robots: { index: publicIndexingEnabled && eligible, follow: true },
    openGraph: { type: 'website', url, title, description, ...(image ? { images: [{ url: image }] } : {}) },
    twitter: { card: 'summary_large_image', title, description, ...(image ? { images: [image] } : {}) },
  };
}

export function serializeJsonLd(value: unknown): string {
  return JSON.stringify(value).replace(/</g, '\\u003c').replace(/\u2028/g, '\\u2028').replace(/\u2029/g, '\\u2029');
}
export function xmlEscape(value: string): string {
  return value.replace(/[<>&"']/g, c => ({ '<': '&lt;', '>': '&gt;', '&': '&amp;', '"': '&quot;', "'": '&apos;' }[c]!));
}

export function videoSchema(drama: Drama, edition: CatalogCollection, group: EpisodeGroup, video: VideoRecord, path: string, description: string) {
  const thumbnail = video.thumbnail_urls[0];
  if (!thumbnail || !video.upload_date || Number.isNaN(Date.parse(video.upload_date)) || !isPlayableVideo(video)) return undefined;
  return {
    '@type': 'VideoObject', '@id': `${siteConfig.domain}${path}#video`,
    name: `${drama.name} Season ${edition.reported_seasons[0]} ${episodeLabel(edition, group)} — ${languageLabel(edition, [video])}`,
    description, thumbnailUrl: [thumbnail], uploadDate: video.upload_date,
    contentUrl: video.stream_urls[0], ...(video.duration ? { duration: video.duration } : {}),
    inLanguage: edition.version === 'dubbed' ? 'ur' : 'tr',
    partOfSeries: { '@type': 'TVSeries', '@id': `${siteConfig.domain}/drama/${drama.id}#series`, name: drama.name },
  };
}

export function breadcrumbSchema(items: Array<{ name: string; path: string }>) {
  return { '@type': 'BreadcrumbList', itemListElement: items.map((item, index) => ({
    '@type': 'ListItem', position: index + 1, name: item.name, item: `${siteConfig.domain}${item.path}`,
  })) };
}
