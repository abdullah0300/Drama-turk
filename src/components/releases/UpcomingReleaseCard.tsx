'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import type { UpcomingEpisode } from '@/lib/releases/upcoming';
import { ReleaseCountdown } from './ReleaseCountdown';
import { ReleaseAvailabilityRefresh } from './ReleaseAvailabilityRefresh';
import { SubscribeNotificationCard } from '@/components/notifications/SubscribeNotificationCard';

export function UpcomingReleaseCard({
  episode,
  full = false,
}: {
  episode: UpcomingEpisode;
  full?: boolean;
}) {
  const [timeZone, setTimeZone] = useState<'Asia/Karachi' | 'Europe/Istanbul' | 'UTC'>('Asia/Karachi');

  const timeZoneLabels: Record<string, string> = {
    'Asia/Karachi': 'Pakistan time',
    'Europe/Istanbul': 'Türkiye time',
    'UTC': 'UTC',
  };

  const formatTime = (dateStr: string) => {
    try {
      return new Intl.DateTimeFormat('en-GB', {
        timeZone,
        hour: '2-digit',
        minute: '2-digit',
        hour12: false,
      }).format(new Date(dateStr));
    } catch {
      return '';
    }
  };

  const formatDate = (dateStr: string) => {
    try {
      return new Intl.DateTimeFormat('en-GB', {
        timeZone,
        day: 'numeric',
        month: 'short',
        weekday: 'short',
      }).format(new Date(dateStr));
    } catch {
      return '';
    }
  };

  // Find Urdu and English estimates
  const urduEstimate = episode.estimates.find((e) => e.language.toLowerCase() === 'urdu')?.at;
  const englishEstimate = episode.estimates.find((e) => e.language.toLowerCase() === 'english')?.at;

  // Split drama name into main title and subtitle
  const parts = episode.dramaName.split(/[:·—]/);
  const titleMain = parts[0]?.trim() || episode.dramaName;
  const titleSub = parts.slice(1).join(' ').trim();

  const formattedBroadcastDate = formatDate(episode.broadcastAt);
  const formattedBroadcastTime = formatTime(episode.broadcastAt);

  return (
    <div className="release-page-wrapper">
      <ReleaseAvailabilityRefresh broadcastAt={episode.broadcastAt} />
      <section className="release-page" aria-label="Episode release countdown">
        {/* Left Side: Cinematic Series Art */}
        <aside className="series-art">
          {episode.image ? (
            <img src={episode.image} alt={episode.dramaName} />
          ) : (
            <div className="series-art-fallback" />
          )}
          <div className="art-shade" />
          <div className="series-caption">
            <span className="eyebrow">GREAT NATION / TURKISH DRAMA</span>
            <h1>
              {titleMain}
              {titleSub ? <span>{titleSub}</span> : null}
            </h1>
            <span className="season">
              SEASON {episode.season} <span>—</span> EPISODE {episode.episode}
              {episode.bolum !== episode.episode ? ` · BÖLÜM ${episode.bolum}` : ''}
            </span>
          </div>
        </aside>

        {/* Right Side: Page Content */}
        <div className="page-content">
          <div className="episode-heading">
            <div>
              <span className="eyebrow">
                NEXT EPISODE <span className="episode-pill">{String(episode.episode).padStart(2, '0')}</span>
              </span>
              <h2>When can you watch?</h2>
              <p>
                {episode.confirmed ? 'Confirmed broadcast:' : 'Expected broadcast:'}{' '}
                <strong>{formattedBroadcastDate}</strong>{' '}
                <span id="broadcastTime">
                  {formattedBroadcastTime} · {timeZoneLabels[timeZone]}
                </span>
              </p>
            </div>
            <a
              className="schedule-link"
              href={episode.scheduleSource}
              target="_blank"
              rel="noopener noreferrer"
              aria-label={`View official ${episode.channel} schedule`}
              title={`View official ${episode.channel} schedule`}
            >
              ↗
            </a>
          </div>

          {/* Timezone Toolbar */}
          <div className="tracker-toolbar">
            <span>
              <i /> Release countdowns
            </span>
            <label htmlFor="timezone-select" className="sr-only">
              Your timezone
            </label>
            <select
              id="timezone-select"
              value={timeZone}
              onChange={(e) => setTimeZone(e.target.value as any)}
              aria-label="Your timezone"
            >
              <option value="Asia/Karachi">Pakistan time</option>
              <option value="Europe/Istanbul">Türkiye time</option>
              <option value="UTC">UTC</option>
            </select>
          </div>

          {/* Countdowns List */}
          <div className="releases" aria-label="Episode release countdowns">
            {/* 01: Turkish broadcast */}
            <article className="release turkish">
              <div className="timer-heading">
                <span className="row-number">01</span>
                <h3>Turkish broadcast</h3>
                <span className="status">
                  {episode.channel} · {episode.confirmed ? 'Confirmed' : 'Scheduled'}
                </span>
              </div>
              <ReleaseCountdown
                at={episode.broadcastAt}
                label="Turkish broadcast countdown"
                finished="Scheduled broadcast time reached"
              />
              <p className="release-date">
                {formattedBroadcastDate} · {formattedBroadcastTime} · {timeZoneLabels[timeZone]}
              </p>
            </article>

            {/* 02: Urdu subtitles */}
            <article className="release urdu">
              <div className="timer-heading">
                <span className="row-number">02</span>
                <h3>Urdu subtitles</h3>
                <span className="status">
                  {urduEstimate ? 'Estimated' : 'Not confirmed'}
                </span>
              </div>
              <ReleaseCountdown
                at={urduEstimate}
                label="Urdu subtitles countdown"
                finished="Checking subtitle availability"
              />
              <p className="release-date">
                {urduEstimate
                  ? `${formatDate(urduEstimate)} · ${formatTime(urduEstimate)} · ${timeZoneLabels[timeZone]}`
                  : 'Release time not confirmed'}
              </p>
            </article>

            {/* 03: English subtitles */}
            <article className="release english">
              <div className="timer-heading">
                <span className="row-number">03</span>
                <h3>English subtitles</h3>
                <span className="status">
                  {englishEstimate ? 'Estimated' : 'Not confirmed'}
                </span>
              </div>
              <ReleaseCountdown
                at={englishEstimate}
                label="English subtitles countdown"
                finished="Checking subtitle availability"
              />
              <p className="release-date">
                {englishEstimate
                  ? `${formatDate(englishEstimate)} · ${formatTime(englishEstimate)} · ${timeZoneLabels[timeZone]}`
                  : 'Release time not confirmed'}
              </p>
            </article>
          </div>

          <p className="timing-note">
            Subtitle times are estimates. The episode must be available before you can watch.
          </p>

          {/* Connected Email Notification Card */}
          <SubscribeNotificationCard
            dramaId={episode.dramaId}
            dramaName={episode.dramaName}
            episodeLabel={`Episode ${episode.episode}`}
            variant="release"
          />

          {/* Details / Timing Notes */}
          <div className="bottom-row">
            <span>{episode.confirmed ? 'Confirmed broadcast slot' : 'Weekly broadcast schedule'}</span>
            <details>
              <summary>Release details +</summary>
              <div className="details-content">
                {episode.confirmed
                  ? 'The broadcaster lists this date and time.'
                  : 'The broadcast date follows the weekly slot; breaks or schedule changes can delay it.'}{' '}
                Subtitle availability times are estimates based on historical availability. We’ll show “Watch now” the second a verified video rendition is playable on Great Nation.
              </div>
            </details>
          </div>
        </div>
      </section>

      {/* Navigation Links */}
      {!full && (
        <div className="mt-4">
          <Link href={episode.href} className="pill">
            Episode {episode.episode} release details
          </Link>
        </div>
      )}
    </div>
  );
}
