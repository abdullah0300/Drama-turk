'use client';

import React, { useState } from 'react';
import { 
  Database, 
  AlertTriangle, 
  Layers, 
  Activity, 
  ShieldCheck, 
  RefreshCw,
  LogOut,
  CheckCircle2,
  XCircle,
  Clock,
  Check,
  RotateCcw,
  Radio,
  ExternalLink,
  Sparkles
} from 'lucide-react';
import { DuplicateStreamGroup, PlaybackCheckLog } from '@/types/catalog';
import { siteConfig } from '@/config/site';
import { SearchableDramaSelect } from './SearchableDramaSelect';

export interface DramaOption {
  source_id: string;
  display_name: string;
  poster_url?: string | null;
  backdrop_url?: string | null;
  genres?: string[] | null;
  is_pilot?: boolean;
}

export interface LiveAdminSummary {
  dramas: number;
  collections: number;
  episode_groups: number;
  video_variants: number;
  active_streams: number;
  total_stream_checks: number;
  open_reviews: number;
  resolved_reviews: number;
}

export interface LiveReviewFinding {
  id: string;
  target_source_id: string;
  flag_type: string;
  severity: string;
  evidence: string | null;
  is_resolved: boolean;
  resolution_notes: string | null;
  reviewed_at: string | null;
}

export interface LiveStreamCheck {
  id: string;
  variant_source_id: string;
  stream_url: string;
  check_method: string;
  status: string;
  http_status: number | null;
  content_type: string | null;
  error_message: string | null;
  checked_at: string;
}

interface AdminDashboardClientProps {
  summary: LiveAdminSummary;
  reviewFindings: LiveReviewFinding[];
  recentStreamChecks: LiveStreamCheck[];
  duplicateStreams: DuplicateStreamGroup[];
  dramaOptions?: DramaOption[];
  currentHeroDramaId?: string;
  initialHeroDramaIds?: string[];
  initialLatestEpisodesPriorityIds?: string[];
  user?: {
    id: string;
    email?: string;
  };
  role?: string;
}

export function AdminDashboardClient({
  summary,
  reviewFindings: initialFindings,
  recentStreamChecks: initialChecks,
  duplicateStreams,
  dramaOptions = [],
  currentHeroDramaId,
  initialHeroDramaIds = [],
  initialLatestEpisodesPriorityIds = [],
  user,
  role,
}: AdminDashboardClientProps) {
  const [activeTab, setActiveTab] = useState<'metrics' | 'reviews' | 'duplicates' | 'health' | 'automation' | 'config'>('metrics');

  // Hero Drama state for all 4 slots
  const [heroSlots, setHeroSlots] = useState<string[]>(() => {
    if (initialHeroDramaIds && initialHeroDramaIds.length >= 4) {
      return initialHeroDramaIds.slice(0, 4);
    }
    const fallbackList = [
      currentHeroDramaId || siteConfig.pilotDramaId || 'mehmed-fetihler-sultani',
      'kurulus-osman',
      'salahuddin-ayyubi',
      'alparslan-buyuk-selcuklu',
    ];
    return fallbackList;
  });
  const [isUpdatingHero, setIsUpdatingHero] = useState<boolean>(false);
  const [heroUpdateMessage, setHeroUpdateMessage] = useState<{ type: 'success' | 'error'; text: string } | null>(null);

  // Latest episodes priority slots (up to 5)
  const [prioritySlots, setPrioritySlots] = useState<string[]>(() => {
    const list = [...initialLatestEpisodesPriorityIds];
    while (list.length < 5) list.push('');
    return list.slice(0, 5);
  });
  const [isUpdatingPriority, setIsUpdatingPriority] = useState(false);
  const [priorityMessage, setPriorityMessage] = useState<{ type: 'success' | 'error'; text: string } | null>(null);

  const heroDramaName = dramaOptions.find((d) => d.source_id === heroSlots[0])?.display_name || heroSlots[0];

  const handleSlotChange = (index: number, newDramaId: string) => {
    setHeroSlots((prev) => {
      const copy = [...prev];
      copy[index] = newDramaId;
      return copy;
    });
    setHeroUpdateMessage(null);
  };

  const handleUpdateAllHeroes = async () => {
    setIsUpdatingHero(true);
    setHeroUpdateMessage(null);
    try {
      const res = await fetch('/api/admin/settings/hero', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ heroDramaIds: heroSlots }),
      });
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || 'Failed to update hero series');
      setHeroUpdateMessage({
        type: 'success',
        text: 'All 4 Homepage Hero series successfully saved to Supabase and cache refreshed!',
      });
    } catch (err: any) {
      setHeroUpdateMessage({
        type: 'error',
        text: err.message || 'Error updating hero series',
      });
    } finally {
      setIsUpdatingHero(false);
    }
  };

  const handlePrioritySlotChange = (index: number, newDramaId: string) => {
    setPrioritySlots((prev) => {
      const copy = [...prev];
      copy[index] = newDramaId;
      return copy;
    });
    setPriorityMessage(null);
  };

  const handleClearAllPriority = () => {
    setPrioritySlots(['', '', '', '', '']);
    setPriorityMessage(null);
  };

  const handleSavePriority = async () => {
    setIsUpdatingPriority(true);
    setPriorityMessage(null);
    try {
      const res = await fetch('/api/admin/settings/latest-episodes', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ priorityDramaIds: prioritySlots }),
      });
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || 'Failed to update priority');
      const activeCount = prioritySlots.filter(Boolean).length;
      setPriorityMessage({
        type: 'success',
        text: activeCount > 0
          ? `Saved! Top ${activeCount} slot(s) prioritized in Latest Episodes. The rest will follow automatic catalog logic.`
          : 'Saved! Reset to 100% automated catalog logic for all Latest Episodes.',
      });
    } catch (err: any) {
      setPriorityMessage({
        type: 'error',
        text: err.message || 'Error updating priority',
      });
    } finally {
      setIsUpdatingPriority(false);
    }
  };

  // Review Findings State
  const [findings, setFindings] = useState<LiveReviewFinding[]>(initialFindings);
  const [reviewFilter, setReviewFilter] = useState<'open' | 'resolved' | 'all'>('open');
  const [resolvingId, setResolvingId] = useState<string | null>(null);

  // Health check state
  const [testVideoId, setTestVideoId] = useState('');
  const [testStreamUrl, setTestStreamUrl] = useState('');
  const [isChecking, setIsChecking] = useState(false);
  const [checkResult, setCheckResult] = useState<PlaybackCheckLog | null>(null);
  const [recentChecks, setRecentChecks] = useState<LiveStreamCheck[]>(initialChecks);

  const handleLogout = async () => {
    try {
      await fetch('/api/admin/auth/logout', { method: 'POST' });
    } finally {
      window.location.reload();
    }
  };

  const handleToggleResolve = async (finding: LiveReviewFinding) => {
    setResolvingId(finding.id);
    const nextResolved = !finding.is_resolved;
    try {
      const res = await fetch('/api/admin/reviews/resolve', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          findingId: finding.id,
          isResolved: nextResolved,
          resolutionNotes: nextResolved ? 'Resolved via Admin Console' : null,
        }),
      });
      const data = await res.json();
      if (res.ok && data.success) {
        setFindings((prev) =>
          prev.map((f) =>
            f.id === finding.id
              ? {
                  ...f,
                  is_resolved: nextResolved,
                  reviewed_at: nextResolved ? new Date().toISOString() : null,
                  resolution_notes: nextResolved ? 'Resolved via Admin Console' : null,
                }
              : f
          )
        );
      }
    } catch (err) {
      console.error('Failed to update finding status:', err);
    } finally {
      setResolvingId(null);
    }
  };

  const runReachabilityCheck = async () => {
    if (!testStreamUrl.trim()) return;
    setIsChecking(true);
    setCheckResult(null);

    const vid = testVideoId.trim() || 'manual-check';

    try {
      const res = await fetch('/api/admin/playback-check', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          videoId: vid,
          streamUrl: testStreamUrl.trim(),
          checkType: 'reachability_head',
        }),
      });
      const data = await res.json();
      if (data.check) {
        setCheckResult(data.check);
        setRecentChecks((prev) => [
          {
            id: data.check.id,
            variant_source_id: vid,
            stream_url: testStreamUrl.trim(),
            check_method: 'reachability_head',
            status: data.check.status,
            http_status: data.check.http_status,
            content_type: data.check.content_type,
            error_message: data.check.error_message,
            checked_at: data.check.checked_at,
          },
          ...prev.slice(0, 14),
        ]);
      }
    } catch (err: any) {
      setCheckResult({
        id: `err-${Date.now()}`,
        video_id: vid,
        stream_url: testStreamUrl.trim(),
        check_type: 'reachability_head',
        status: 'failed',
        error_message: err.message,
        checked_at: new Date().toISOString(),
      });
    } finally {
      setIsChecking(false);
    }
  };

  const filteredFindings = findings.filter((f) => {
    if (reviewFilter === 'open') return !f.is_resolved;
    if (reviewFilter === 'resolved') return f.is_resolved;
    return true;
  });

  const openFindingsCount = findings.filter((f) => !f.is_resolved).length;
  const resolvedFindingsCount = findings.filter((f) => f.is_resolved).length;

  return (
    <div className="space-y-8">
      {/* Header bar with Live telemetry indicator & auth details */}
      <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4 p-4 rounded-xl bg-surface border border-surface-border">
        <div className="flex items-center gap-3">
          <div className="p-2.5 rounded-xl bg-amber-500/10 text-amber-500 border border-amber-500/20">
            <ShieldCheck size={22} />
          </div>
          <div>
            <div className="flex items-center gap-2">
              <h2 className="text-sm font-semibold text-text-primary">
                Live Operations &amp; Database Console
              </h2>
              {role && (
                <span className="px-2 py-0.5 rounded text-[10px] uppercase font-bold tracking-wider bg-amber-500/15 text-amber-400 border border-amber-500/30">
                  {role}
                </span>
              )}
              <span className="inline-flex items-center gap-1 px-2 py-0.5 rounded text-[10px] font-semibold bg-emerald-500/15 text-emerald-400 border border-emerald-500/30">
                <span className="w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse" />
                Live Supabase
              </span>
            </div>
            <p className="text-xs text-text-secondary mt-0.5">
              {user?.email ? `Session active as ${user.email}.` : 'Real-time database records and operational controls.'}
            </p>
          </div>
        </div>

        <div className="flex items-center gap-3 w-full sm:w-auto justify-between sm:justify-end">
          <div className="flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-stone-900 border border-surface-border text-xs text-text-secondary">
            <Sparkles size={12} className="text-amber-400 shrink-0" />
            <span>Hero:</span>
            <span className="font-semibold text-amber-400 truncate max-w-[140px] sm:max-w-[200px]" title={heroDramaName}>
              {heroDramaName}
            </span>
          </div>
          <button
            onClick={handleLogout}
            className="flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-stone-800 hover:bg-stone-700 text-text-secondary hover:text-text-primary border border-surface-border text-xs transition-colors font-medium active:scale-[0.98]"
            title="Sign out of Admin Console"
          >
            <LogOut size={13} />
            Sign Out
          </button>
        </div>
      </div>

      {/* Tabs */}
      <div className="flex flex-wrap gap-2 border-b border-surface-border pb-2 text-xs sm:text-sm">
        {[
          { id: 'metrics', label: 'Live Database Overview', icon: Database },
          { id: 'reviews', label: `Review Queue (${openFindingsCount})`, icon: AlertTriangle },
          { id: 'health', label: 'Stream Health Check', icon: Activity },
          { id: 'automation', label: 'Automation & Sync Engine', icon: Radio },
          { id: 'duplicates', label: `Duplicate Clusters (${duplicateStreams.length})`, icon: Layers },
          { id: 'config', label: 'Platform Config', icon: ShieldCheck },
        ].map((tab) => {
          const Icon = tab.icon;
          const isActive = activeTab === tab.id;
          return (
            <button
              key={tab.id}
              onClick={() => setActiveTab(tab.id as any)}
              className={`flex items-center gap-2 px-3.5 py-2 rounded-lg transition-colors font-medium ${
                isActive
                  ? 'bg-amber-500 text-stone-950 font-semibold'
                  : 'bg-surface/50 hover:bg-surface text-text-secondary hover:text-text-primary'
              }`}
            >
              <Icon size={15} />
              {tab.label}
            </button>
          );
        })}
      </div>

      {/* TAB 1: LIVE METRICS OVERVIEW */}
      {activeTab === 'metrics' && (
        <div className="space-y-6">
          <div className="grid grid-cols-2 sm:grid-cols-4 gap-4">
            <div className="p-4 bg-surface border border-surface-border rounded-xl">
              <span className="text-xs text-text-tertiary">Total Series (dramas)</span>
              <p className="text-2xl font-bold font-mono text-amber-400 mt-1">{summary.dramas}</p>
              <span className="text-[10px] text-text-muted">Direct from Supabase dramas</span>
            </div>
            <div className="p-4 bg-surface border border-surface-border rounded-xl">
              <span className="text-xs text-text-tertiary">Collections &amp; Seasons</span>
              <p className="text-2xl font-bold font-mono text-amber-400 mt-1">{summary.collections}</p>
              <span className="text-[10px] text-text-muted">Distinct broadcast editions</span>
            </div>
            <div className="p-4 bg-surface border border-surface-border rounded-xl">
              <span className="text-xs text-text-tertiary">Episode Groups</span>
              <p className="text-2xl font-bold font-mono text-amber-400 mt-1">{summary.episode_groups}</p>
              <span className="text-[10px] text-text-muted">Canonical episode units</span>
            </div>
            <div className="p-4 bg-surface border border-surface-border rounded-xl">
              <span className="text-xs text-text-tertiary">Active Streams</span>
              <p className="text-2xl font-bold font-mono text-emerald-400 mt-1">{summary.active_streams}</p>
              <span className="text-[10px] text-text-muted">Live verified HLS delivery links</span>
            </div>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
            <div className="p-4 bg-surface border border-surface-border rounded-xl">
              <span className="text-xs text-text-tertiary">Open Review Items</span>
              <p className={`text-2xl font-bold font-mono mt-1 ${openFindingsCount > 0 ? 'text-rose-400' : 'text-emerald-400'}`}>
                {openFindingsCount}
              </p>
              <span className="text-[10px] text-text-muted">Actionable triage items</span>
            </div>
            <div className="p-4 bg-surface border border-surface-border rounded-xl">
              <span className="text-xs text-text-tertiary">Resolved Review Items</span>
              <p className="text-2xl font-bold font-mono text-text-primary mt-1">{resolvedFindingsCount}</p>
              <span className="text-[10px] text-text-muted">Completed historical triage</span>
            </div>
            <div className="p-4 bg-surface border border-surface-border rounded-xl">
              <span className="text-xs text-text-tertiary">Total Stream Health Checks</span>
              <p className="text-2xl font-bold font-mono text-sky-400 mt-1">{summary.total_stream_checks}</p>
              <span className="text-[10px] text-text-muted">Automated 4h checks recorded</span>
            </div>
          </div>

          {/* HOMEPAGE HERO SHOWCASE CONTROLS (ALL 4 SLOTS) */}
          <div className="p-5 bg-surface border border-surface-border rounded-xl space-y-5">
            <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 pb-3 border-b border-surface-border">
              <div>
                <div className="flex items-center gap-2">
                  <Sparkles size={16} className="text-amber-400" />
                  <h3 className="text-sm font-semibold text-text-primary">
                    Homepage Hero Carousel (All 4 Featured Series)
                  </h3>
                </div>
                <p className="text-xs text-text-secondary mt-0.5">
                  Select all 4 series displayed in the homepage (<code className="text-amber-400">/</code>) hero slider. Each dropdown includes live search filtering and smooth scrolling.
                </p>
              </div>

              <button
                onClick={handleUpdateAllHeroes}
                disabled={isUpdatingHero}
                className="flex items-center justify-center gap-2 px-4 py-2 rounded-xl bg-amber-500 hover:bg-amber-400 disabled:opacity-50 text-stone-950 text-xs font-semibold shadow-md shadow-amber-500/10 transition-all active:scale-[0.98] shrink-0"
              >
                {isUpdatingHero ? (
                  <>
                    <RefreshCw size={13} className="animate-spin" />
                    Saving 4 Slots to Supabase...
                  </>
                ) : (
                  <>
                    <Sparkles size={13} />
                    Save All 4 Hero Series
                  </>
                )}
              </button>
            </div>

            {/* 4 MODERN SEARCHABLE SLOTS */}
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
              <SearchableDramaSelect
                slotNumber={1}
                slotTitle="Flagship Hero"
                slotBadge="Slot 1 (Main Banner)"
                options={dramaOptions}
                value={heroSlots[0]}
                onChange={(val) => handleSlotChange(0, val)}
                disabled={isUpdatingHero}
              />
              <SearchableDramaSelect
                slotNumber={2}
                slotTitle="Slide 2"
                slotBadge="Slot 2"
                options={dramaOptions}
                value={heroSlots[1]}
                onChange={(val) => handleSlotChange(1, val)}
                disabled={isUpdatingHero}
              />
              <SearchableDramaSelect
                slotNumber={3}
                slotTitle="Slide 3"
                slotBadge="Slot 3"
                options={dramaOptions}
                value={heroSlots[2]}
                onChange={(val) => handleSlotChange(2, val)}
                disabled={isUpdatingHero}
              />
              <SearchableDramaSelect
                slotNumber={4}
                slotTitle="Slide 4"
                slotBadge="Slot 4"
                options={dramaOptions}
                value={heroSlots[3]}
                onChange={(val) => handleSlotChange(3, val)}
                disabled={isUpdatingHero}
              />
            </div>

            {/* Live Carousel Order Preview */}
            <div className="p-3 bg-stone-950/60 rounded-xl border border-surface-border/60">
              <span className="text-[10px] uppercase font-bold tracking-wider text-text-tertiary block mb-2">
                Live Hero Carousel Order Preview
              </span>
              <div className="grid grid-cols-2 sm:grid-cols-4 gap-2">
                {heroSlots.map((slotId, sIdx) => {
                  const drama = dramaOptions.find((d) => d.source_id === slotId);
                  return (
                    <div
                      key={sIdx}
                      className="flex items-center gap-2 p-1.5 rounded-lg bg-surface border border-surface-border/50 text-xs min-w-0"
                    >
                      <span className="w-4 h-4 rounded bg-amber-500/20 text-amber-400 font-mono font-bold text-[9px] flex items-center justify-center shrink-0">
                        #{sIdx + 1}
                      </span>
                      <div className="w-5 h-7 rounded bg-stone-800 overflow-hidden shrink-0 flex items-center justify-center">
                        {drama?.poster_url ? (
                          <img src={drama.poster_url} alt="" className="w-full h-full object-cover" />
                        ) : (
                          <div className="w-full h-full bg-stone-800" />
                        )}
                      </div>
                      <span className="truncate text-text-primary text-[11px] font-medium">
                        {drama?.display_name || slotId}
                      </span>
                    </div>
                  );
                })}
              </div>
            </div>

            {heroUpdateMessage && (
              <div
                className={`p-3 rounded-xl text-xs flex items-center gap-2 ${
                  heroUpdateMessage.type === 'success'
                    ? 'bg-emerald-500/10 text-emerald-400 border border-emerald-500/30'
                    : 'bg-red-500/10 text-red-400 border border-red-500/30'
                }`}
              >
                {heroUpdateMessage.type === 'success' ? (
                  <CheckCircle2 size={14} className="shrink-0" />
                ) : (
                  <XCircle size={14} className="shrink-0" />
                )}
                <span>{heroUpdateMessage.text}</span>
              </div>
            )}
          </div>

          {/* LATEST EPISODES ROW PRIORITY (FIRST 5 SLOTS) */}
          <div className="p-5 bg-surface border border-surface-border rounded-xl space-y-5">
            <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 pb-3 border-b border-surface-border">
              <div>
                <div className="flex items-center gap-2">
                  <Clock size={16} className="text-amber-400" />
                  <h3 className="text-sm font-semibold text-text-primary">
                    Latest Episodes Row Priority (First 5 Slots)
                  </h3>
                </div>
                <p className="text-xs text-text-secondary mt-0.5">
                  Prioritize up to 5 dramas to lead the &ldquo;Latest Episodes&rdquo; row on the homepage. Any unselected slot and all remaining dramas automatically follow standard catalog logic. If all slots are set to Auto, default logic applies.
                </p>
              </div>

              <div className="flex items-center gap-2 shrink-0">
                <button
                  onClick={handleClearAllPriority}
                  disabled={isUpdatingPriority || prioritySlots.every((s) => !s)}
                  className="px-3 py-2 rounded-xl bg-stone-850 hover:bg-stone-800 disabled:opacity-40 text-text-secondary hover:text-text-primary text-xs font-medium border border-surface-border transition-all"
                  title="Reset all 5 slots to automated catalog logic"
                >
                  Reset to 100% Auto
                </button>
                <button
                  onClick={handleSavePriority}
                  disabled={isUpdatingPriority}
                  className="flex items-center justify-center gap-2 px-4 py-2 rounded-xl bg-amber-500 hover:bg-amber-400 disabled:opacity-50 text-stone-950 text-xs font-semibold shadow-md shadow-amber-500/10 transition-all active:scale-[0.98]"
                >
                  {isUpdatingPriority ? (
                    <>
                      <RefreshCw size={13} className="animate-spin" />
                      Saving Priority...
                    </>
                  ) : (
                    <>
                      <Sparkles size={13} />
                      Save Priority Order
                    </>
                  )}
                </button>
              </div>
            </div>

            {/* 5 MODERN SEARCHABLE SLOTS WITH CLEAR / AUTO OPTION */}
            <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-3">
              {[0, 1, 2, 3, 4].map((slotIdx) => (
                <SearchableDramaSelect
                  key={slotIdx}
                  slotNumber={slotIdx + 1}
                  slotTitle={`Priority #${slotIdx + 1}`}
                  slotBadge={prioritySlots[slotIdx] ? 'Prioritized' : 'Auto'}
                  options={dramaOptions}
                  value={prioritySlots[slotIdx]}
                  onChange={(val) => handlePrioritySlotChange(slotIdx, val)}
                  disabled={isUpdatingPriority}
                  allowClear={true}
                  clearLabel="Auto (Default Logic)"
                />
              ))}
            </div>

            {/* Active Status & Description Bar */}
            <div className="flex items-center justify-between p-3 bg-stone-950/60 rounded-xl border border-surface-border/60 text-xs">
              <span className="text-text-secondary">
                Active Priority Mode:{' '}
                <strong className={prioritySlots.filter(Boolean).length > 0 ? 'text-amber-400' : 'text-emerald-400'}>
                  {prioritySlots.filter(Boolean).length > 0
                    ? `${prioritySlots.filter(Boolean).length} of 5 slots customized`
                    : '100% Automated Catalog Logic'}
                </strong>
              </span>
              <span className="text-[11px] text-text-tertiary">
                Remaining dramas follow automatically
              </span>
            </div>

            {priorityMessage && (
              <div
                className={`p-3 rounded-xl text-xs flex items-center gap-2 ${
                  priorityMessage.type === 'success'
                    ? 'bg-emerald-500/10 text-emerald-400 border border-emerald-500/30'
                    : 'bg-red-500/10 text-red-400 border border-red-500/30'
                }`}
              >
                {priorityMessage.type === 'success' ? (
                  <CheckCircle2 size={14} className="shrink-0" />
                ) : (
                  <XCircle size={14} className="shrink-0" />
                )}
                <span>{priorityMessage.text}</span>
              </div>
            )}
          </div>
        </div>
      )}

      {/* TAB 2: LIVE REVIEW QUEUE */}
      {activeTab === 'reviews' && (
        <div className="space-y-4">
          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3">
            <p className="text-xs text-text-secondary">
              Real-time issues from <code className="text-amber-400">review_findings</code>: unparsed episodes, link failures, and new seasons.
            </p>
            <div className="flex gap-2 text-xs">
              <button
                onClick={() => setReviewFilter('open')}
                className={`px-3 py-1.5 rounded-lg transition-colors font-semibold ${
                  reviewFilter === 'open' ? 'bg-amber-500 text-stone-950' : 'bg-surface text-text-secondary hover:text-text-primary'
                }`}
              >
                Open ({openFindingsCount})
              </button>
              <button
                onClick={() => setReviewFilter('resolved')}
                className={`px-3 py-1.5 rounded-lg transition-colors font-semibold ${
                  reviewFilter === 'resolved' ? 'bg-amber-500 text-stone-950' : 'bg-surface text-text-secondary hover:text-text-primary'
                }`}
              >
                Resolved ({resolvedFindingsCount})
              </button>
              <button
                onClick={() => setReviewFilter('all')}
                className={`px-3 py-1.5 rounded-lg transition-colors font-semibold ${
                  reviewFilter === 'all' ? 'bg-amber-500 text-stone-950' : 'bg-surface text-text-secondary hover:text-text-primary'
                }`}
              >
                All ({findings.length})
              </button>
            </div>
          </div>

          <div className="border border-surface-border rounded-xl overflow-hidden divide-y divide-surface-border max-h-[620px] overflow-y-auto">
            {filteredFindings.length === 0 ? (
              <div className="p-8 text-center text-text-muted text-xs">
                No review items matching the selected filter.
              </div>
            ) : (
              filteredFindings.map((rev) => {
                const isResolving = resolvingId === rev.id;
                const isCrit = rev.severity === 'critical';
                const isWarn = rev.severity === 'warning';
                return (
                  <div
                    key={rev.id}
                    className={`p-4 transition-colors flex flex-col sm:flex-row sm:items-center justify-between gap-3 text-xs ${
                      rev.is_resolved ? 'bg-surface/20 opacity-70' : 'bg-surface/50 hover:bg-surface'
                    }`}
                  >
                    <div className="space-y-1.5 flex-1 pr-4">
                      <div className="flex flex-wrap items-center gap-2">
                        <span className="font-mono font-bold text-text-primary">{rev.target_source_id}</span>
                        <span className="px-2 py-0.5 rounded font-mono text-[10px] uppercase bg-stone-900 border border-surface-border text-amber-400">
                          {rev.flag_type.replace(/_/g, ' ')}
                        </span>
                        <span
                          className={`px-2 py-0.5 rounded font-bold text-[10px] uppercase ${
                            isCrit
                              ? 'bg-rose-500/20 text-rose-400 border border-rose-500/30'
                              : isWarn
                              ? 'bg-amber-500/20 text-amber-400 border border-amber-500/30'
                              : 'bg-sky-500/20 text-sky-400 border border-sky-500/30'
                          }`}
                        >
                          {rev.severity}
                        </span>
                        {rev.is_resolved && (
                          <span className="px-2 py-0.5 rounded bg-emerald-500/20 text-emerald-400 border border-emerald-500/30 font-bold text-[10px]">
                            Resolved
                          </span>
                        )}
                      </div>

                      {rev.evidence && (
                        <p className="text-text-secondary text-[11px] font-mono break-all leading-relaxed bg-canvas/60 p-2 rounded-lg border border-surface-border/50">
                          {rev.evidence}
                        </p>
                      )}

                      {rev.resolution_notes && (
                        <p className="text-[11px] text-emerald-400 flex items-center gap-1">
                          <Check size={12} />
                          {rev.resolution_notes}
                        </p>
                      )}
                    </div>

                    <div className="shrink-0 flex items-center">
                      <button
                        onClick={() => handleToggleResolve(rev)}
                        disabled={isResolving}
                        className={`px-3 py-1.5 rounded-lg font-medium text-xs flex items-center gap-1.5 transition-colors ${
                          rev.is_resolved
                            ? 'bg-stone-800 hover:bg-stone-700 text-text-secondary hover:text-text-primary border border-surface-border'
                            : 'bg-emerald-600 hover:bg-emerald-500 text-white shadow-sm'
                        } disabled:opacity-50`}
                      >
                        {isResolving ? (
                          <RefreshCw size={12} className="animate-spin" />
                        ) : rev.is_resolved ? (
                          <>
                            <RotateCcw size={12} />
                            Reopen
                          </>
                        ) : (
                          <>
                            <Check size={12} />
                            Mark Resolved
                          </>
                        )}
                      </button>
                    </div>
                  </div>
                );
              })
            )}
          </div>
        </div>
      )}

      {/* TAB 3: STREAM HEALTH CHECK & LOGS */}
      {activeTab === 'health' && (
        <div className="space-y-6">
          <div className="p-5 bg-surface border border-surface-border rounded-xl space-y-4">
            <h3 className="text-sm font-semibold text-text-primary flex items-center gap-2">
              <Activity size={16} className="text-amber-400" />
              Live HLS Reachability Health Check
            </h3>
            <p className="text-xs text-text-secondary">
              Dispatches a live CORS/SSRF-safe HEAD request with a 6-second timeout. Results are saved directly into the database <code className="text-amber-400">stream_checks</code> table.
            </p>

            <div className="grid grid-cols-1 sm:grid-cols-3 gap-3">
              <div>
                <label className="text-xs text-text-tertiary block mb-1">Target Video ID</label>
                <input
                  type="text"
                  placeholder="e.g. video-2400"
                  value={testVideoId}
                  onChange={(e) => setTestVideoId(e.target.value)}
                  className="w-full px-3 py-2 bg-canvas border border-surface-border rounded-lg text-xs font-mono text-text-primary focus:outline-none focus:border-amber-500/60"
                />
              </div>

              <div className="sm:col-span-2">
                <label className="text-xs text-text-tertiary block mb-1">Stream URL (.m3u8)</label>
                <input
                  type="url"
                  placeholder="https://.../index.m3u8"
                  value={testStreamUrl}
                  onChange={(e) => setTestStreamUrl(e.target.value)}
                  className="w-full px-3 py-2 bg-canvas border border-surface-border rounded-lg text-xs font-mono text-text-primary focus:outline-none focus:border-amber-500/60"
                />
              </div>
            </div>

            <button
              onClick={runReachabilityCheck}
              disabled={isChecking || !testStreamUrl.trim()}
              className="px-4 py-2 bg-amber-500 hover:bg-amber-400 text-stone-950 font-semibold rounded-lg text-xs flex items-center gap-2 transition-all active:scale-[0.98] disabled:opacity-50 disabled:pointer-events-none"
            >
              {isChecking ? <RefreshCw size={14} className="animate-spin" /> : <Activity size={14} />}
              {isChecking ? 'Checking Stream Reachability...' : 'Run Live Stream Check'}
            </button>

            {checkResult && (
              <div
                className={`p-4 rounded-xl border text-xs font-mono space-y-1 ${
                  checkResult.status === 'passed'
                    ? 'bg-emerald-950/20 border-emerald-500/30 text-emerald-300'
                    : 'bg-rose-950/20 border-rose-500/30 text-rose-300'
                }`}
              >
                <div className="font-bold uppercase tracking-wider flex items-center gap-1.5">
                  {checkResult.status === 'passed' ? <CheckCircle2 size={14} /> : <XCircle size={14} />}
                  Check Result: {checkResult.status}
                </div>
                <div>HTTP Status Code: {checkResult.http_status ?? 'Network Timeout'}</div>
                {checkResult.content_type && <div>Content-Type: {checkResult.content_type}</div>}
                {checkResult.error_message && <div>Detail: {checkResult.error_message}</div>}
                <div className="text-[10px] opacity-75 mt-1">Recorded to Supabase: {checkResult.checked_at}</div>
              </div>
            )}
          </div>

          {/* Recent Database Stream Checks */}
          <div className="space-y-3">
            <h4 className="text-xs font-semibold text-text-secondary uppercase tracking-wider flex items-center gap-1.5">
              <Clock size={13} />
              Recent Stream Checks from Database ({recentChecks.length})
            </h4>

            <div className="border border-surface-border rounded-xl overflow-hidden divide-y divide-surface-border">
              {recentChecks.map((sc) => (
                <div key={sc.id} className="p-3 bg-surface/30 hover:bg-surface text-xs flex flex-col sm:flex-row sm:items-center justify-between gap-2">
                  <div className="space-y-0.5">
                    <div className="flex items-center gap-2">
                      <span className="font-mono font-bold text-text-primary">{sc.variant_source_id}</span>
                      <span
                        className={`px-1.5 py-0.5 rounded text-[10px] font-bold uppercase ${
                          sc.status === 'passed'
                            ? 'bg-emerald-500/20 text-emerald-400 border border-emerald-500/30'
                            : 'bg-rose-500/20 text-rose-400 border border-rose-500/30'
                        }`}
                      >
                        {sc.status}
                      </span>
                      {sc.http_status && (
                        <span className="font-mono text-text-muted text-[10px]">HTTP {sc.http_status}</span>
                      )}
                    </div>
                    <p className="font-mono text-text-tertiary text-[11px] truncate max-w-xl">
                      {sc.stream_url}
                    </p>
                    {sc.error_message && (
                      <p className="text-rose-400 text-[10px]">{sc.error_message}</p>
                    )}
                  </div>
                  <span className="text-[10px] font-mono text-text-muted shrink-0">
                    {new Date(sc.checked_at).toLocaleTimeString([], { hour: '2-digit', minute: '2-digit', second: '2-digit' })}
                  </span>
                </div>
              ))}
            </div>
          </div>
        </div>
      )}

      {/* TAB 4: AUTOMATION & SYNC ENGINE */}
      {activeTab === 'automation' && (
        <div className="space-y-6 text-xs">
          <div className="p-5 bg-surface border border-surface-border rounded-xl space-y-4">
            <div className="flex items-center gap-2">
              <Radio size={16} className="text-amber-400 animate-pulse" />
              <h3 className="text-sm font-semibold text-text-primary">
                GitHub Actions Scheduled Sync Engine
              </h3>
            </div>
            <p className="text-text-secondary leading-relaxed">
              The catalog is continuously kept synchronized with NiaziPlay using scheduled GitHub Actions workers (<code className="text-amber-400">.github/workflows/catalog-sync.yml</code>) and Python 3.12 sync automation.
            </p>

            <div className="grid grid-cols-1 sm:grid-cols-3 gap-4 pt-2">
              <div className="p-3.5 rounded-xl bg-canvas border border-surface-border space-y-1">
                <span className="text-text-tertiary block font-semibold">1. Episode Ingestion</span>
                <p className="text-amber-400 font-mono text-sm">Every 2 Hours</p>
                <p className="text-[11px] text-text-muted leading-relaxed">
                  Checks all active collections for newly released episodes and ingests clean records.
                </p>
              </div>

              <div className="p-3.5 rounded-xl bg-canvas border border-surface-border space-y-1">
                <span className="text-text-tertiary block font-semibold">2. Stream Self-Healing</span>
                <p className="text-emerald-400 font-mono text-sm">Every 4 Hours</p>
                <p className="text-[11px] text-text-muted leading-relaxed">
                  Tests the stalest active streams, auto-repairs broken links, or flags them in the review queue.
                </p>
              </div>

              <div className="p-3.5 rounded-xl bg-canvas border border-surface-border space-y-1">
                <span className="text-text-tertiary block font-semibold">3. Season Discovery</span>
                <p className="text-sky-400 font-mono text-sm">Daily at 03:05 UTC</p>
                <p className="text-[11px] text-text-muted leading-relaxed">
                  Probes NiaziPlay series sitemaps for newly added drama collections awaiting approval.
                </p>
              </div>
            </div>

            <div className="p-4 rounded-xl bg-stone-900/60 border border-surface-border space-y-2">
              <h4 className="font-semibold text-text-primary">Manual Approval Command</h4>
              <p className="text-text-secondary text-[11px]">
                When the daily discovery job finds a new series or season, approve it directly via terminal:
              </p>
              <pre className="p-3 rounded-lg bg-black/60 font-mono text-[11px] text-amber-400 overflow-x-auto">
                python3 scripts/catalog_sync.py approve &lt;collection_id&gt; --drama-id &lt;slug&gt; --drama "&lt;Name&gt;"
              </pre>
            </div>
          </div>
        </div>
      )}

      {/* TAB 5: DUPLICATE STREAMS */}
      {activeTab === 'duplicates' && (
        <div className="space-y-4">
          <p className="text-xs text-text-secondary">
            Identified duplicate stream URL clusters across different cuts/releases. Preserved without destructive data loss.
          </p>

          <div className="space-y-4">
            {duplicateStreams.map((dup, idx) => (
              <div key={idx} className="p-4 bg-surface border border-surface-border rounded-xl space-y-2">
                <div className="flex items-center justify-between text-xs">
                  <span className="font-semibold text-amber-400">Duplicate Group #{idx + 1}</span>
                  <span className="text-text-muted font-mono">{dup.record_ids.length} shared records</span>
                </div>
                <div className="p-2 bg-canvas border border-surface-border rounded font-mono text-[11px] text-text-secondary truncate">
                  {dup.stream_url}
                </div>
                <div className="flex flex-wrap gap-1 text-[11px]">
                  <span className="text-text-tertiary">Record IDs:</span>
                  {dup.record_ids.map((rid) => (
                    <span key={rid} className="px-1.5 py-0.5 rounded bg-surface-hover text-text-primary font-mono">
                      #{rid}
                    </span>
                  ))}
                </div>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* TAB 6: CONFIGURATION */}
      {activeTab === 'config' && (
        <div className="p-5 bg-surface border border-surface-border rounded-xl space-y-4 text-xs">
          <h3 className="text-sm font-semibold text-text-primary">Current System Configuration</h3>
          <div className="space-y-2">
            <div className="flex justify-between py-1 border-b border-surface-border/50">
              <span className="text-text-secondary">Platform Name</span>
              <span className="font-mono text-text-primary">{siteConfig.name}</span>
            </div>
            <div className="flex justify-between py-1 border-b border-surface-border/50">
              <span className="text-text-secondary">Brand Promise</span>
              <span className="font-mono text-text-primary">{siteConfig.brandPromise}</span>
            </div>
            <div className="flex justify-between py-1 border-b border-surface-border/50">
              <span className="text-text-secondary">Homepage Hero Carousel (4 Slots)</span>
              <span className="font-mono text-amber-400 font-semibold text-right">
                {heroSlots
                  .map((id, i) => `#${i + 1}: ${dramaOptions.find((d) => d.source_id === id)?.display_name || id}`)
                  .join(' | ')}
              </span>
            </div>
            <div className="flex justify-between py-1 border-b border-surface-border/50">
              <span className="text-text-secondary">Database Host</span>
              <span className="font-mono text-text-primary">zvwltfqhbpqtnjbsflvk.supabase.co</span>
            </div>
            <div className="flex justify-between py-1 border-b border-surface-border/50">
              <span className="text-text-secondary">Diagnostic Target</span>
              <span className="font-mono text-text-primary">{siteConfig.reportingDestination.target}</span>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
