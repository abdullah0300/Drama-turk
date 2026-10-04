import schedules from '../../config/release-schedules.json';

export const WEEK_MS = 7 * 24 * 60 * 60 * 1000;
export type ReleaseSchedule = (typeof schedules)[number];
export interface ScheduledEpisode {
  dramaId: string; collectionId: string; season: number; episode: number; bolum: number;
  broadcastAt: string; confirmed: boolean; channel: string; scheduleSource: string;
  previewSource?: string; preview?: string; verifiedAt: string;
}
export function scheduleFor(dramaId: string, collectionId?: string) {
  return schedules.find(s => s.dramaId === dramaId && (!collectionId || s.collectionId === collectionId));
}
export function nextScheduledEpisode(schedule: ReleaseSchedule, lastPlayableEpisode: number, now = Date.now()): ScheduledEpisode | undefined {
  const episode = lastPlayableEpisode + 1;
  if (episode < schedule.anchorEpisode || (schedule.maxEpisode != null && episode > schedule.maxEpisode)) return;
  const offset = episode - schedule.anchorEpisode;
  if (offset && !schedule.weekly) return;
  const timestamp = Date.parse(schedule.anchorBroadcastAt) + offset * WEEK_MS;
  // One real next episode only; never manufacture a backlog because the clock advanced.
  if (!Number.isFinite(timestamp) || timestamp > now + WEEK_MS) return;
  return { dramaId:schedule.dramaId, collectionId:schedule.collectionId, season:schedule.season,
    episode, bolum:schedule.anchorBolum + offset, broadcastAt:new Date(timestamp).toISOString(),
    confirmed:offset === 0 && schedule.anchorConfirmed, channel:schedule.channel,
    scheduleSource:schedule.scheduleSource, verifiedAt:schedule.verifiedAt,
    ...(offset === 0 ? {previewSource:schedule.previewSource,preview:schedule.preview} : {}) };
}
export function subtitleEstimate(broadcastAt: string, samples: number[]): string | undefined {
  // Source timestamps are estimates of publisher availability, not playback confirmations.
  const delays = samples.filter(n => Number.isFinite(n) && n >= 0 && n <= 48 * 3600000).sort((a,b)=>a-b);
  if (delays.length < 2) return;
  const middle = Math.floor(delays.length / 2);
  const median = delays.length % 2 ? delays[middle] : (delays[middle-1] + delays[middle]) / 2;
  return new Date(Date.parse(broadcastAt) + median).toISOString();
}
