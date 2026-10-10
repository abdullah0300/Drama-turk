import Link from 'next/link';
import type { Metadata } from 'next';
import type { UpcomingEpisode } from '@/lib/releases/upcoming';
import { ReleaseCountdown } from './ReleaseCountdown';
import { ReleaseAvailabilityRefresh } from './ReleaseAvailabilityRefresh';
import { pageMetadata, serializeJsonLd, breadcrumbSchema, seriesName } from '@/lib/seo/catalog-seo';
import { siteConfig } from '@/config/site';
import { SubscribeNotificationCard } from '@/components/notifications/SubscribeNotificationCard';

function dateLabel(at:string,timeZone:string) {
  return new Intl.DateTimeFormat('en-GB',{timeZone,dateStyle:'full',timeStyle:'short'}).format(new Date(at));
}
export function upcomingMetadata(episode:UpcomingEpisode):Metadata {
  const name=seriesName({id:episode.dramaId,name:episode.dramaName});
  return pageMetadata(episode.href,`${name} S${episode.season} E${episode.episode} | Release Date & Subtitles`,
    `Check ${name} Episode ${episode.episode}${episode.bolum!==episode.episode?` (Bolum ${episode.bolum})`:''} broadcast time, estimated Urdu/English subtitle availability and release updates.`,true,episode.image);
}
export function UpcomingReleaseCard({episode,full=false}:{episode:UpcomingEpisode;full?:boolean}) {
  return <section className="release-card" aria-label="Next episode release">
    <ReleaseAvailabilityRefresh broadcastAt={episode.broadcastAt} />
    <div className="release-intro"><div><span className="release-eyebrow">{episode.confirmed?'Next broadcast':'Expected next broadcast'} · {episode.channel}</span>
      <h2>{full?'The next episode is on its way':`Episode ${episode.episode}${episode.bolum!==episode.episode?` · Bölüm ${episode.bolum}`:''}`}</h2>
      <p><time dateTime={episode.broadcastAt}>{dateLabel(episode.broadcastAt,'Asia/Karachi')}</time> · Pakistan time</p></div>
      <a className="release-source" href={episode.scheduleSource} target="_blank" rel="noopener noreferrer">Official schedule ↗</a>
    </div>
    <SubscribeNotificationCard dramaId={episode.dramaId} dramaName={episode.dramaName} episodeLabel={`Episode ${episode.episode}`} />
    <div className="release-timers">
      <div className="release-panel release-panel-broadcast"><ReleaseCountdown at={episode.broadcastAt} label="Turkish broadcast" finished="Scheduled broadcast time reached" />
        <p>{episode.channel} · 20:00 Türkiye / 22:00 Pakistan</p></div>
      {episode.estimates.map(({language,at})=><div key={language} className="release-panel release-estimate">
        {at?<><ReleaseCountdown at={at} label={`${language} subtitles · estimated`} finished="Checking subtitle availability" />
          <p><time dateTime={at}>{new Intl.DateTimeFormat('en-GB',{timeZone:'Asia/Karachi',day:'numeric',month:'short',hour:'2-digit',minute:'2-digit'}).format(new Date(at))}</time> · Pakistan time</p></>:<p>{language} subtitles: release time not confirmed.</p>}
      </div>)}
    </div>
    <div className="release-footer"><p>Subtitle times are estimates. We’ll show “Watch now” when a checked video is available.</p>
    {!full&&<Link href={episode.href} className="pill">Episode {episode.episode} release details</Link>}
    </div>
    <details className="release-notes"><summary>Release timing details</summary>
      <p>{episode.confirmed?'The broadcaster lists this date and time.':'The broadcast date follows the weekly slot; breaks or schedule changes can delay it.'} <time dateTime={episode.broadcastAt}>{dateLabel(episode.broadcastAt,'Europe/Istanbul')}</time> Türkiye (UTC+3).</p>
    </details>
  </section>;
}
export function UpcomingEpisodePage({episode}:{episode:UpcomingEpisode}) {
  const url=siteConfig.domain+episode.href;
  const graph={'@context':'https://schema.org','@graph':[breadcrumbSchema([{name:'Home',path:'/'},{name:episode.dramaName,path:`/drama/${episode.dramaId}`},{name:`Season ${episode.season}`,path:episode.seasonHref},{name:`Episode ${episode.episode}`,path:episode.href}]),{
    '@type':'TVEpisode','@id':url+'#episode',name:`${episode.dramaName} Season ${episode.season} Episode ${episode.episode}`,episodeNumber:episode.episode,url,
    description:'Upcoming episode release information. Subtitle availability is estimated; the full episode is not available here yet.',
    partOfSeason:{'@type':'TVSeason',seasonNumber:episode.season,url:siteConfig.domain+episode.seasonHref},partOfSeries:{'@type':'TVSeries',name:episode.dramaName,url:siteConfig.domain+`/drama/${episode.dramaId}`}}]};
  return <div className="upcoming-page">
    <script type="application/ld+json" dangerouslySetInnerHTML={{__html:serializeJsonLd(graph)}} />
    <nav className="w-crumb" aria-label="Breadcrumb"><Link href={`/drama/${episode.dramaId}`}>{episode.dramaName}</Link><i>/</i><Link href={episode.seasonHref}>Season {episode.season}</Link><i>/</i><span>Episode {episode.episode}</span></nav>
    <h1 className="w-title"><small>{episode.dramaName} · Season {episode.season}</small>Episode {episode.episode}{episode.bolum!==episode.episode?` · Bölüm ${episode.bolum}`:''} release date</h1>
    <p>Turkish broadcast timing and Urdu / English subtitle updates.</p>
    <UpcomingReleaseCard episode={episode} full />
    {episode.preview&&<section className="dw-sec"><h2>Official episode preview</h2><p>{episode.preview}</p><a href={episode.previewSource} target="_blank" rel="noopener noreferrer">Official trailer and episode reference</a></section>}
    <section className="dw-sec"><h2>How to watch when it arrives</h2><p>This URL will show the video player when a checked rendition is imported. Choose Urdu or English subtitles beside the episode heading. Availability is checked for each language separately.</p>
      <p>“Episode {episode.episode}” is this season’s local label{episode.bolum!==episode.episode?`; Bölüm ${episode.bolum} is the original continuous broadcast number`:''}.</p>
      <Link className="pill" href={episode.seasonHref}>Browse available episodes</Link>{episode.previousHref&&<Link className="pill" href={episode.previousHref}>Watch {episode.previousLabel}</Link>}
    </section>
  </div>;
}
