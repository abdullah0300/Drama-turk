import 'server-only';
import { cache } from 'react';
import { loadDrama, loadEditionEpisodes, episodeHref } from '@/lib/catalog-nav';
import { isEligibleEpisode } from '@/lib/seo/catalog-seo';
import { nextScheduledEpisode, scheduleFor, subtitleEstimate, WEEK_MS, ScheduledEpisode } from './schedule';
import { seasonPath } from '@/lib/routes';

export interface UpcomingEpisode extends ScheduledEpisode {
  dramaName: string; href: string; seasonHref: string; previousHref?: string; previousLabel?: string;
  image?: string; estimates: {language:string; at?:string; sampleCount:number}[];
}
export const getUpcomingEpisode = cache(async (dramaId: string): Promise<UpcomingEpisode | undefined> => {
  const schedule = scheduleFor(dramaId);
  if (!schedule) return;
  const loaded = await loadDrama(dramaId);
  const season = loaded?.seasons.find(s => s.number === schedule.season);
  const edition = season?.editions.find(e => e.id === schedule.collectionId);
  if (!loaded || loaded.drama.status !== 'published' || !season || !edition || edition.status !== 'published') return;
  const data = await loadEditionEpisodes(edition.id);
  const published = data.groups.filter(g => isEligibleEpisode(loaded.drama,edition,g,data.videosByGroup.get(g.id)||[]));
  const latest = published.reduce<typeof published[number] | undefined>((a,g)=>
    !a || (g.episode_number || 0) > (a.episode_number || 0) ? g : a,undefined);
  if (!latest?.episode_number) return;
  const upcoming = nextScheduledEpisode(schedule,latest.episode_number);
  if (!upcoming) return;
  const estimates = ['Urdu','English'].map(language => {
    const recent = published.filter(g => g.episode_number != null && g.episode_number <= latest.episode_number! && g.episode_number > latest.episode_number! - 4);
    const samples = recent.flatMap(g => {
      const date = (data.videosByGroup.get(g.id)||[]).find(v => v.version==='subtitled' && v.languages.includes(language) && v.upload_date)?.upload_date;
      const broadcast = Date.parse(schedule.anchorBroadcastAt) + (g.episode_number! - schedule.anchorEpisode) * WEEK_MS;
      const delay = date ? Date.parse(date) - broadcast : NaN;
      return Number.isFinite(delay) && delay >= 0 && delay <= 48 * 3600000 ? [delay] : [];
    });
    return {language,at:subtitleEstimate(upcoming.broadcastAt,samples),sampleCount:samples.length};
  });
  const seasonHref = seasonPath(dramaId,season,edition);
  return {...upcoming,dramaName:loaded.drama.name,href:`${seasonHref}/episode-${upcoming.episode}`,seasonHref,
    previousHref:episodeHref(dramaId,season,edition,data.slugs.get(latest.id)!),previousLabel:latest.display_label,
    image:loaded.drama.backdrop_url || loaded.drama.poster_url,estimates};
});
export async function upcomingForRoute(dramaId:string,season:string,episode:string,segment?:string) {
  if (segment) return;
  const upcoming = await getUpcomingEpisode(dramaId);
  return upcoming && season === `season-${upcoming.season}` && episode === `episode-${upcoming.episode}` ? upcoming : undefined;
}
