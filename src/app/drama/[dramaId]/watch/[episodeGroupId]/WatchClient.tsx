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
  Info, 
  Eye, 
  EyeOff, 
  ListFilter 
} from 'lucide-react';
import { siteConfig } from '@/config/site';

export interface EpisodeSidebarItem {
  id: string;
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
  prevGroup?: EpisodeGroup;
  nextGroup?: EpisodeGroup;
  editorialDraft?: EditorialDraft;
}

export function WatchClient({
  drama,
  collection,
  episodeGroup,
  initialVideo,
  allRenditions,
  sidebarEpisodes,
  prevGroup,
  nextGroup,
  editorialDraft,
}: WatchClientProps) {
  const router = useRouter();
  const [currentVideo, setCurrentVideo] = useState<VideoRecord>(initialVideo);
  const [copiedLink, setCopiedLink] = useState(false);
  const [showSpoilers, setShowSpoilers] = useState(false);
  const [showDiagnosticsModal, setShowDiagnosticsModal] = useState(false);
  const [copiedDiag, setCopiedDiag] = useState(false);
  const [isEpisodeSidebarOpen, setIsEpisodeSidebarOpen] = useState(false);

  const handleCopyLink = () => {
    if (typeof window !== 'undefined') {
      navigator.clipboard.writeText(window.location.href);
      setCopiedLink(true);
      setTimeout(() => setCopiedLink(false), 2500);
    }
  };

  const handleNavigateNext = () => {
    if (nextGroup) {
      router.push(`/drama/${drama.id}/watch/${nextGroup.id}`);
    }
  };

  const handleNavigatePrev = () => {
    if (prevGroup) {
      router.push(`/drama/${drama.id}/watch/${prevGroup.id}`);
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

  return (
    <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8 py-4 sm:py-6">
      {/* Upper Navigation & Brand Reassurance */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between pb-4 gap-2 border-b border-surface-border mb-4">
        {/* Breadcrumb Links */}
        <div className="flex items-center gap-1.5 text-xs text-text-tertiary truncate">
          <Link href="/" className="hover:text-text-primary transition-colors">Home</Link>
          <ChevronRight size={12} />
          <Link href={`/drama/${drama.id}`} className="hover:text-text-primary transition-colors truncate">{drama.name}</Link>
          <ChevronRight size={12} />
          <Link href={`/drama/${drama.id}/collection/${collection.id}`} className="hover:text-text-primary transition-colors truncate">
            {collection.source_heading}
          </Link>
          <ChevronRight size={12} />
          <span className="text-amber-400 font-medium">{episodeGroup.display_label}</span>
        </div>

        {/* Ad-free reassurance */}
        <div className="inline-flex items-center gap-1.5 text-xs text-text-tertiary">
          <ShieldCheck size={14} className="text-amber-500" />
          <span>{siteConfig.supportingCopy}</span>
        </div>
      </div>

      {/* Main Player Grid: Spacious Player with Ordered Episode Panel on Desktop */}
      <div className="grid grid-cols-1 lg:grid-cols-4 gap-6 items-start">
        {/* Primary Video Player Area (3 columns on lg) */}
        <div className="lg:col-span-3 space-y-4">
          <div className="w-full">
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
          </div>

          {/* Episode Title & Language Switcher Bar */}
          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 py-2">
            <div>
              <div className="flex items-center gap-2 mb-1">
                <h1 className="text-xl sm:text-2xl font-bold font-display text-text-primary">
                  {episodeGroup.display_label}
                </h1>
                {episodeGroup.bolum && (
                  <span className="px-2 py-0.5 rounded bg-surface border border-surface-border text-xs text-text-secondary font-mono">
                    Bolum {episodeGroup.bolum}
                  </span>
                )}
              </div>
              <p className="text-xs text-text-tertiary">
                {currentVideo.title || `${drama.name} - ${episodeGroup.display_label}`}
              </p>
            </div>

            {/* Language / Rendition Selection */}
            {allRenditions.length > 1 && (
              <div className="flex items-center gap-2 bg-surface/80 border border-surface-border px-3 py-1.5 rounded-lg text-xs self-start sm:self-auto">
                <span className="text-text-tertiary">Subtitles:</span>
                <div className="flex gap-1">
                  {allRenditions.map((rend) => {
                    const isActive = rend.id === currentVideo.id;
                    const langLabel = rend.languages?.[0] || 'Default';
                    return (
                      <button
                        key={rend.id}
                        onClick={() => setCurrentVideo(rend)}
                        className={`px-2.5 py-1 rounded text-xs font-medium transition-colors ${
                          isActive
                            ? 'bg-amber-500 text-stone-950 font-bold'
                            : 'bg-surface-hover text-text-secondary hover:text-text-primary'
                        }`}
                      >
                        {langLabel}
                      </button>
                    );
                  })}
                </div>
              </div>
            )}
          </div>

          {/* Previous / Next Navigation & Share / Diagnostic Bar */}
          <div className="flex flex-wrap items-center justify-between gap-3 pt-3 border-t border-surface-border text-xs">
            <div className="flex items-center gap-2">
              <button
                onClick={handleNavigatePrev}
                disabled={!prevGroup}
                className={`inline-flex items-center gap-1.5 px-3 py-2 rounded-lg border text-xs font-medium transition-colors ${
                  prevGroup
                    ? 'bg-surface hover:bg-surface-hover text-text-primary border-surface-border'
                    : 'bg-surface/30 text-text-muted border-surface-border/40 cursor-not-allowed'
                }`}
              >
                <ChevronLeft size={16} />
                Previous Episode
              </button>

              <button
                onClick={handleNavigateNext}
                disabled={!nextGroup}
                className={`inline-flex items-center gap-1.5 px-3 py-2 rounded-lg border text-xs font-medium transition-colors ${
                  nextGroup
                    ? 'bg-amber-500 hover:bg-amber-600 text-stone-950 border-amber-500 font-semibold'
                    : 'bg-surface/30 text-text-muted border-surface-border/40 cursor-not-allowed'
                }`}
              >
                Next Episode
                <ChevronRight size={16} />
              </button>
            </div>

            <div className="flex items-center gap-2">
              <button
                onClick={handleCopyLink}
                className="inline-flex items-center gap-1.5 px-3 py-2 rounded-lg bg-surface hover:bg-surface-hover border border-surface-border text-text-secondary hover:text-text-primary transition-colors"
              >
                {copiedLink ? <Check size={14} className="text-green-400" /> : <Copy size={14} />}
                <span>{copiedLink ? 'Link Copied' : 'Share Episode'}</span>
              </button>

              <button
                onClick={() => setShowDiagnosticsModal(true)}
                className="inline-flex items-center gap-1.5 px-3 py-2 rounded-lg bg-surface hover:bg-surface-hover border border-surface-border text-text-tertiary hover:text-amber-400 transition-colors"
              >
                <AlertTriangle size={14} />
                <span>Report Problem</span>
              </button>
            </div>
          </div>

          {/* Episode Editorial & Synopsis Section */}
          <div className="mt-8 space-y-6 pt-6 border-t border-surface-border">
            {/* Approved Non-spoiler Synopsis */}
            <div className="bg-surface/40 border border-surface-border rounded-xl p-5">
              <h2 className="text-base font-semibold text-text-primary mb-2 flex items-center gap-2">
                <Info size={16} className="text-amber-500" />
                Episode Overview
              </h2>
              <p className="text-sm text-text-secondary leading-relaxed">
                {editorialDraft?.short_description || 
                  `This installment of ${drama.name} follows Sultan Mehmed's strategic advances during Season 2. Direct broadcast rendition with verified ${currentVideo.languages?.join(' and ')} subtitle timing.`}
              </p>
            </div>

            {/* Structured Editorial Sections (Gemma Draft Support) */}
            {editorialDraft?.sections && editorialDraft.sections.length > 0 && (
              <div className="space-y-4">
                {editorialDraft.sections
                  .filter(sec => !sec.is_spoiler)
                  .map((sec, idx) => (
                    <div key={idx} className="bg-surface/30 border border-surface-border rounded-lg p-4">
                      <h3 className="text-sm font-semibold text-text-primary mb-2">{sec.heading}</h3>
                      <p className="text-sm text-text-secondary leading-relaxed">{sec.content}</p>
                    </div>
                  ))}

                {/* Separately Labeled Spoilers Section */}
                {editorialDraft.sections.some(s => s.is_spoiler) && (
                  <div className="border border-amber-500/20 bg-amber-950/10 rounded-xl p-4">
                    <div className="flex items-center justify-between mb-3">
                      <div className="flex items-center gap-2 text-xs font-semibold text-amber-400">
                        <AlertTriangle size={14} />
                        Plot Guide &amp; Tactical Spoilers
                      </div>
                      <button
                        onClick={() => setShowSpoilers(!showSpoilers)}
                        className="text-xs text-amber-400 hover:text-amber-300 flex items-center gap-1 font-medium"
                      >
                        {showSpoilers ? <EyeOff size={14} /> : <Eye size={14} />}
                        {showSpoilers ? 'Hide Spoilers' : 'Reveal Spoilers'}
                      </button>
                    </div>

                    {showSpoilers && (
                      <div className="space-y-3 pt-2 border-t border-amber-500/20">
                        {editorialDraft.sections
                          .filter(sec => sec.is_spoiler)
                          .map((sec, idx) => (
                            <div key={idx}>
                              <h4 className="text-xs font-semibold text-text-primary mb-1">{sec.heading}</h4>
                              <p className="text-xs text-text-secondary leading-relaxed">{sec.content}</p>
                            </div>
                          ))}
                      </div>
                    )}
                  </div>
                )}
              </div>
            )}
          </div>
        </div>

        {/* Adjacent Ordered Episode Panel (Desktop Sidebar / Mobile Collapsible) */}
        <div className="lg:col-span-1 space-y-4">
          <div className="flex items-center justify-between bg-surface/70 border border-surface-border p-3 rounded-lg">
            <div>
              <h3 className="text-sm font-semibold text-text-primary">Season Episodes</h3>
              <p className="text-[11px] text-text-tertiary">{sidebarEpisodes.length} available</p>
            </div>
            {/* Mobile Toggle */}
            <button
              onClick={() => setIsEpisodeSidebarOpen(!isEpisodeSidebarOpen)}
              className="lg:hidden p-1.5 rounded bg-surface border border-surface-border text-xs text-text-secondary"
            >
              <ListFilter size={16} />
            </button>
          </div>

          <div className={`space-y-2 overflow-y-auto max-h-[700px] pr-1 ${
            isEpisodeSidebarOpen ? 'block' : 'hidden lg:block'
          }`}>
            {sidebarEpisodes.map((group) => {
              const isCurrent = group.id === episodeGroup.id;
              const thumb = group.thumbnailUrl;

              return (
                <Link
                  key={group.id}
                  href={`/drama/${drama.id}/watch/${group.id}`}
                  className={`flex gap-3 p-2 rounded-lg border transition-all ${
                    isCurrent
                      ? 'bg-amber-500/15 border-amber-500/50 text-text-primary'
                      : 'bg-surface/40 hover:bg-surface border-surface-border text-text-secondary hover:text-text-primary'
                  }`}
                >
                  <div className="relative w-16 aspect-video bg-surface-hover rounded overflow-hidden flex-shrink-0">
                    {thumb ? (
                      <img src={thumb} alt={group.display_label} className="w-full h-full object-cover" />
                    ) : (
                      <div className="w-full h-full flex items-center justify-center text-text-tertiary">
                        <span className="text-[9px] font-mono">Ep</span>
                      </div>
                    )}
                    {isCurrent && (
                      <div className="absolute inset-0 bg-amber-500/30 flex items-center justify-center">
                        <span className="w-2 h-2 rounded-full bg-amber-400 animate-ping" />
                      </div>
                    )}
                  </div>

                  <div className="min-w-0 flex-1">
                    <h4 className={`text-xs font-medium truncate ${isCurrent ? 'text-amber-400 font-semibold' : ''}`}>
                      {group.display_label}
                    </h4>
                    <p className="text-[10px] text-text-tertiary truncate">
                      {group.bolum ? `Bolum ${group.bolum}` : group.display_label}
                    </p>
                  </div>
                </Link>
              );
            })}
          </div>
        </div>
      </div>

      {/* Diagnostics Modal for Reporting Playback Issues */}
      {showDiagnosticsModal && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/80 backdrop-blur-sm p-4">
          <div className="bg-surface-bg border border-surface-border rounded-xl max-w-lg w-full p-6 shadow-player space-y-4">
            <div className="flex items-center justify-between">
              <h3 className="text-base font-bold text-text-primary flex items-center gap-2">
                <AlertTriangle size={18} className="text-amber-500" />
                Playback Diagnostics
              </h3>
              <button
                onClick={() => setShowDiagnosticsModal(false)}
                className="text-text-tertiary hover:text-text-primary text-xs"
              >
                Close
              </button>
            </div>

            <p className="text-xs text-text-secondary leading-relaxed">
              To assist with stream troubleshooting, copy the verified diagnostic details below and send them to our support contact ({siteConfig.reportingDestination.target}).
            </p>

            <pre className="bg-canvas border border-surface-border rounded-lg p-3 text-[11px] font-mono text-text-secondary overflow-x-auto max-h-48">
              {JSON.stringify(diagnosticPayload, null, 2)}
            </pre>

            <div className="flex justify-end gap-3 pt-2">
              <button
                onClick={() => setShowDiagnosticsModal(false)}
                className="px-4 py-2 text-xs text-text-secondary hover:text-text-primary"
              >
                Dismiss
              </button>
              <button
                onClick={handleCopyDiagnostics}
                className="px-4 py-2 bg-amber-500 hover:bg-amber-600 text-stone-950 font-semibold rounded-lg text-xs flex items-center gap-1.5 transition-colors"
              >
                {copiedDiag ? <Check size={14} /> : <Copy size={14} />}
                {copiedDiag ? 'Diagnostics Copied!' : 'Copy Diagnostic Info'}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
