'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { 
  CustomVideoPlayer 
} from '@/components/player/CustomVideoPlayer';
import { 
  EpisodeGroup, 
  VideoRecord, 
  CatalogCollection, 
  Drama,
  EditorialDraft 
} from '@/types/catalog';
import { 
  ChevronLeft, 
  ChevronRight, 
  Copy, 
  Check, 
  ShieldCheck, 
  AlertTriangle, 
  List,
  Plus,
  Share2,
  Play,
} from 'lucide-react';
import { useUserPreferences } from '@/context/UserPreferencesContext';
import { seasonLabel as seasonLabelOf } from '@/types/catalog';
import { siteConfig } from '@/config/site';

export interface EpisodeSidebarItem {
  id: string;
  href: string;
  display_label: string;
  bolum: number | null;
  thumbnailUrl?: string;
}

interface WatchClientProps {
  drama: Drama;
  collection: CatalogCollection;
  episodeGroup: EpisodeGroup;
  initialVideo: VideoRecord;
  allRenditions: VideoRecord[];
  sidebarEpisodes: EpisodeSidebarItem[];
  /** Clean URLs for navigation around this episode */
  seasonHref: string;
  seasonName: string;
  prevHref?: string;
  nextHref?: string;
  prevGroup?: EpisodeGroup;
  nextGroup?: EpisodeGroup;
  editorialDraft?: EditorialDraft;
  pageSummary?: string;
}

export function WatchClient({
  drama,
  collection,
  episodeGroup,
  initialVideo,
  allRenditions,
  sidebarEpisodes,
  seasonHref,
  seasonName,
  prevHref,
  nextHref,
  prevGroup,
  nextGroup,
  editorialDraft,
  pageSummary,
}: WatchClientProps) {
  const router = useRouter();
  const [currentVideo, setCurrentVideo] = useState<VideoRecord>(initialVideo);
  const [copiedLink, setCopiedLink] = useState(false);
  const [showDiagnosticsModal, setShowDiagnosticsModal] = useState(false);
  const [copiedDiag, setCopiedDiag] = useState(false);
  const { isInMyList, addToMyList, removeFromMyList, preferences, setAutoplayNext } = useUserPreferences();
  const inList = isInMyList(drama.id);
  const nextThumb = nextGroup ? sidebarEpisodes.find((e) => e.id === nextGroup.id)?.thumbnailUrl : undefined;
  const seasonLabel = seasonLabelOf(collection);

  const toggleList = () => {
    if (inList) removeFromMyList(drama.id);
    else addToMyList({ id: drama.id, type: 'drama', dramaId: drama.id, title: drama.name, thumbnailUrl: drama.poster_url, addedAt: Date.now() });
  };

  const handleCopyLink = () => {
    if (typeof window !== 'undefined') {
      navigator.clipboard.writeText(window.location.href);
      setCopiedLink(true);
      setTimeout(() => setCopiedLink(false), 2500);
    }
  };

  const handleNavigateNext = () => {
    if (nextGroup) {
      if (nextHref) router.push(nextHref);
    }
  };

  const handleNavigatePrev = () => {
    if (prevGroup) {
      if (prevHref) router.push(prevHref);
    }
  };

  const diagnosticPayload = {
    timestamp: new Date().toISOString(),
    dramaId: drama.id,
    dramaName: drama.name,
    collectionId: collection.id,
    collectionHeading: collection.source_heading,
    episodeGroupId: episodeGroup.id,
    displayLabel: episodeGroup.display_label,
    videoId: currentVideo.id,
    activeStream: currentVideo.stream_urls?.[0] || 'none',
    selectedLanguage: currentVideo.languages?.join(', ') || 'unspecified',
    version: currentVideo.version,
    userAgent: typeof navigator !== 'undefined' ? navigator.userAgent : 'server',
    status: currentVideo.playback_verified ? 'verified' : 'untested',
  };

  const handleCopyDiagnostics = () => {
    navigator.clipboard.writeText(JSON.stringify(diagnosticPayload, null, 2));
    setCopiedDiag(true);
    setTimeout(() => setCopiedDiag(false), 2500);
  };

  const langLabel =
    currentVideo.version === 'dubbed'
      ? `${currentVideo.languages?.join(', ') || 'Urdu'} Dubbed`
      : `${currentVideo.languages?.join(' & ') || 'Urdu'} Subtitled`;

  return (
    <section className="watch">
      <div className="w-grid">
        <div className="w-main">
          {/* Primary Video Player (all playback features live in CustomVideoPlayer) */}
          <CustomVideoPlayer
            currentVideo={currentVideo}
            episodeGroup={episodeGroup}
            dramaId={drama.id}
            collectionId={collection.id}
            dramaTitle={drama.name}
            allRenditions={allRenditions}
            onRenditionChange={(v) => setCurrentVideo(v)}
            nextEpisodeGroup={nextGroup}
            onNavigateNext={handleNavigateNext}
          />

          <nav className="w-crumb" aria-label="Breadcrumb">
            <Link href="/">Home</Link><i>/</i>
            <Link href={`/drama/${drama.id}`}>{drama.name}</Link><i>/</i>
            <Link href={seasonHref}>{seasonName}</Link><i>/</i>
            <span style={{ color: 'var(--text)' }}>{episodeGroup.display_label}</span>
          </nav>

          <div className="w-head">
            <h1 className="w-title">
              <small>{drama.name} · {seasonLabel}</small>
              {episodeGroup.display_label}
            </h1>
            <div className="w-language" role="group" aria-label="Episode language">
              {allRenditions.map(rend => (
                <button key={rend.id} type="button"
                  className={`pill${rend.id === currentVideo.id ? ' on' : ''}`}
                  aria-pressed={rend.id === currentVideo.id}
                  onClick={() => setCurrentVideo(rend)}>
                  {`${rend.languages.join(' & ') || 'Original'} ${rend.version === 'dubbed' ? 'Dubbed' : rend.version === 'original' ? 'Audio' : 'Subtitles'}`}
                </button>
              ))}
            </div>
            <div className="w-acts">
              <button className="pill" onClick={handleNavigatePrev} disabled={!prevGroup}>
                <ChevronLeft className="i" />Previous
              </button>
              <button className="pill" onClick={handleNavigateNext} disabled={!nextGroup}>
                Next<ChevronRight className="i" />
              </button>
              <button className={`pill${inList ? ' on' : ''}`} onClick={toggleList}>
                {inList ? <Check className="i" /> : <Plus className="i" />}My List
              </button>
              <button className="pill" onClick={handleCopyLink}>
                {copiedLink ? <Check className="i" /> : <Share2 className="i" />}
                {copiedLink ? 'Link copied' : 'Share'}
              </button>
              <Link className="pill" href={seasonHref}>
                <List className="i" />All episodes
              </Link>
              <button className="pill" onClick={() => setShowDiagnosticsModal(true)}>
                <AlertTriangle className="i" />Report problem
              </button>
            </div>
          </div>

          <div className="w-sum">
            <div className="meta">
              {episodeGroup.bolum ? <><span className="gold">Bolum {episodeGroup.bolum}</span><span className="sep" /></> : null}
              <span>{langLabel}</span>
              <span className="sep" />
              {currentVideo.playback_verified ? (
                <span style={{ color: '#6ee7a8' }}>Verified stream</span>
              ) : (
                <span>Untested stream</span>
              )}
              <span className="sep" />
              <span className="inline-flex" style={{ display: 'inline-flex', alignItems: 'center', gap: 6 }}>
                <ShieldCheck size={14} style={{ color: 'var(--gold)' }} />{siteConfig.supportingCopy}
              </span>
            </div>

            <p>
              {pageSummary || editorialDraft?.short_description || drama.synopsis ||
                `Watch ${drama.name} ${episodeGroup.display_label} with ${
                  currentVideo.version === 'dubbed'
                    ? `${currentVideo.languages?.join(', ') || 'Urdu'} audio dubbing`
                    : `${currentVideo.languages?.join(' and ') || 'Urdu'} subtitles`
                }.`}
            </p>
            <p style={{ color: 'var(--muted)', fontSize: 13 }}>
              {currentVideo.title || `${drama.name} - ${episodeGroup.display_label}`}
            </p>


            {/* Structured Editorial Sections (Gemma Draft Support) */}
            {(episodeGroup.editorial?.sections || editorialDraft?.sections || []).filter((x) => !x.is_spoiler).map((sec, idx) => (
              <div key={idx} className="ed-block">
                <h2 className="ed">{sec.heading}</h2>
                <p>{sec.content}</p>
                {'sources' in sec && Array.isArray(sec.sources) && <p>{sec.sources.map((source: { name: string; url: string }, i: number) => <span key={source.url}>{i > 0 ? ' · ' : ''}<a href={source.url} rel="noopener noreferrer">{source.name}</a></span>)}</p>}
              </div>
            ))}

            {(episodeGroup.editorial?.sections || editorialDraft?.sections || []).some((x) => x.is_spoiler) && (
              <details className="spoiler">
                <summary style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', gap: 12, cursor: 'pointer' }}>
                  <div style={{ display: 'flex', alignItems: 'center', gap: 8, fontSize: 13, fontWeight: 700, color: 'var(--gold)' }}>
                    <AlertTriangle size={14} />Plot Guide &amp; Tactical Spoilers
                  </div>
                  <span style={{ fontSize: 12, fontWeight: 700, color: 'var(--gold)' }}>Show or hide spoilers</span>
                </summary>
                {(episodeGroup.editorial?.sections || editorialDraft?.sections || []).filter((x) => x.is_spoiler).map((sec, idx) => (
                  <div key={idx} className="ed-block">
                    <h2 className="ed">{sec.heading}</h2>
                    <p>{sec.content}</p>
                {'sources' in sec && Array.isArray(sec.sources) && <p>{sec.sources.map((source: { name: string; url: string }, i: number) => <span key={source.url}>{i > 0 ? ' · ' : ''}<a href={source.url} rel="noopener noreferrer">{source.name}</a></span>)}</p>}
                  </div>
                ))}
              </details>
            )}
          </div>
        </div>

        <aside className="w-side">
          <div className="w-up">
            {nextGroup ? (
              <Link href={nextHref ?? seasonHref} className="w-up-m">
                {nextThumb ? <img src={nextThumb} alt="" /> : <div className="thumb-fallback" style={{ position: 'absolute', inset: 0 }} />}
                <span className="shade" />
                <span className="c-play"><Play className="i f" /></span>
                <span className="w-up-t">
                  <small>Up next</small>
                  <b>{nextGroup.display_label}</b>
                  <span>{nextGroup.bolum ? `Bolum ${nextGroup.bolum}` : seasonLabel}</span>
                </span>
              </Link>
            ) : (
              <div className="w-up-m" style={{ cursor: 'default' }}>
                <div className="thumb-fallback" style={{ position: 'absolute', inset: 0 }} />
                <span className="shade" />
                <span className="w-up-t">
                  <small>Latest episode</small>
                  <b>{drama.name}</b>
                  <span>You&rsquo;ve reached the last episode here</span>
                </span>
              </div>
            )}
            <div className="w-auto">
              <span>Autoplay next episode</span>
              <button
                className={`tgl${preferences.autoplayNext ? ' on' : ''}`}
                onClick={() => setAutoplayNext(!preferences.autoplayNext)}
                aria-label="Autoplay next episode"
                aria-pressed={preferences.autoplayNext}
              />
            </div>
          </div>

          <div className="w-list">
            <div className="w-list-h">
              <b>{drama.name}<span>{sidebarEpisodes.length} episodes</span></b>
              <span style={{ fontSize: 12, color: 'var(--muted)', fontWeight: 700 }}>{seasonName}</span>
            </div>
            <div className="w-eps" id="wEps">
              {sidebarEpisodes.map((group, gi) => {
                const isCurrent = group.id === episodeGroup.id;
                return (
                  <Link
                    key={group.id}
                    href={group.href}
                    className={`w-ep${isCurrent ? ' now' : ''}`}
                    aria-current={isCurrent ? 'true' : undefined}
                  >
                    <em>{gi + 1}</em>
                    <span className="ep-t">
                      {group.thumbnailUrl ? (
                        <img src={group.thumbnailUrl} alt="" />
                      ) : (
                        <span className="thumb-fallback" />
                      )}
                    </span>
                    <span>
                      <b>
                        {group.display_label}
                        {isCurrent && <span className="eq"><i /><i /><i /></span>}
                      </b>
                      <span>{isCurrent ? 'Now playing' : group.bolum ? `Bolum ${group.bolum}` : 'Episode'}</span>
                    </span>
                  </Link>
                );
              })}
            </div>
          </div>
        </aside>
      </div>

      {/* Diagnostics Modal for Reporting Playback Issues */}
      {showDiagnosticsModal && (
        <div className="diag-wrap" role="dialog" aria-modal="true" aria-label="Playback Diagnostics">
          <div className="diag">
            <h3>Playback Diagnostics</h3>
            <p>
              To assist with stream troubleshooting, copy the verified diagnostic details below and send them to our support contact ({siteConfig.reportingDestination.target}).
            </p>
            <pre>{JSON.stringify(diagnosticPayload, null, 2)}</pre>
            <div className="row-acts">
              <button className="btn btn-ghost btn-sm" onClick={() => setShowDiagnosticsModal(false)}>Dismiss</button>
              <button className="btn btn-play btn-sm" onClick={handleCopyDiagnostics}>
                {copiedDiag ? <Check className="i" /> : <Copy className="i" />}
                {copiedDiag ? 'Diagnostics Copied!' : 'Copy Diagnostic Info'}
              </button>
            </div>
          </div>
        </div>
      )}
    </section>
  );
}
