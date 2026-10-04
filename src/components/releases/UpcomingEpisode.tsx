import Link from 'next/link';
import type { Metadata } from 'next';
import type { UpcomingEpisode } from '@/lib/releases/upcoming';
import { ReleaseCountdown } from './ReleaseCountdown';
import { ReleaseAvailabilityRefresh } from './ReleaseAvailabilityRefresh';
import { pageMetadata, serializeJsonLd, breadcrumbSchema } from '@/lib/seo/catalog-seo';
import { siteConfig } from '@/config/site';

function dateLabel(at:string,timeZone:string) {
  return new Intl.DateTimeFormat('en-GB',{timeZone,dateStyle:'full',timeStyle:'short'}).format(new Date(at));
}
export function upcomingMetadata(episode:UpcomingEpisode):Metadata {
  const name=episode.dramaId==='mehmed-fetihler-sultani'?'Mehmed':episode.dramaName;
  return pageMetadata(episode.href,`${name} S${episode.season} E${episode.episode} | Release Date & Subtitles`,
    `Check ${name} Episode ${episode.episode}${episode.bolum!==episode.episode?` (Bolum ${episode.bolum})`:''} broadcast time, estimated Urdu/English subtitle availability and release updates.`,true,episode.image);
}
export function UpcomingReleaseCard({episode,full=false}:{episode:UpcomingEpisode;full?:boolean}) {
  return <section className="release-card" aria-label="Next episode release">
    <ReleaseAvailabilityRefresh broadcastAt={episode.broadcastAt} />
    <div className="release-intro"><span className="gold">{episode.confirmed?'Scheduled broadcast':'Expected weekly broadcast'}</span>
      <h2>{full?'Release schedule':`Next: Episode ${episode.episode}${episode.bolum!==episode.episode?` · Bölüm ${episode.bolum}`:''}`}</h2>
      <p>{episode.channel} · <time dateTime={episode.broadcastAt}>{dateLabel(episode.broadcastAt,'Europe/Istanbul')}</time> Türkiye (UTC+3)</p>
      <p>{dateLabel(episode.broadcastAt,'Asia/Karachi')} Pakistan (UTC+5)</p>
      <p>{episode.confirmed?'The broadcaster lists this date and time.':'This date follows the broadcaster’s weekly slot and is an estimate; schedule changes or breaks can delay it.'} <a href={episode.scheduleSource} target="_blank" rel="noopener noreferrer">Official schedule</a></p>
    </div>
    <div className="release-timers">
      <ReleaseCountdown at={episode.broadcastAt} label="Turkish broadcast" finished="Scheduled broadcast time reached" />
      {episode.estimates.map(({language,at,sampleCount})=><div key={language} className="release-estimate">
        {at?<><ReleaseCountdown at={at} label={`${language} subtitles · estimated`} finished="Checking subtitle availability" />
          <p><time dateTime={at}>{dateLabel(at,'Asia/Karachi')}</time> Pakistan. Estimate from {sampleCount} recent publisher timestamps.</p></>:<p>{language} subtitles: release time not confirmed.</p>}
      </div>)}
    </div>
    <p>Subtitles are not available on this page yet. Urdu and English can arrive separately. We check NiaziTV every two hours and publish viewing options after the stream check passes. A countdown ending does not mean the video is ready.</p>
    {!full&&<Link href={episode.href} className="pill">Episode {episode.episode} release details</Link>}
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
