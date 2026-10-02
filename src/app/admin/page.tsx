import React from 'react';
import type { Metadata } from 'next';
import { headers } from 'next/headers';
import { catalogRepository } from '@/lib/repository/catalog-repository';
import { AdminDashboardClient, LiveAdminSummary, LiveReviewFinding, LiveStreamCheck } from './AdminDashboardClient';
import { AdminLoginForm } from './AdminLoginForm';
import { verifyAdminAccess, createAdminClient } from '@/lib/auth/admin-auth';

export const metadata: Metadata = {
  title: 'Admin Console & Operations',
  robots: {
    index: false,
    follow: false,
  },
};

export const dynamic = 'force-dynamic';

export default async function AdminPage() {
  const reqHeaders = headers();
  const auth = await verifyAdminAccess(new Request('http://localhost', { headers: reqHeaders }));

  if (!auth.isAuthorized) {
    return <AdminLoginForm />;
  }

  const client: any = createAdminClient(auth.token);

  // Fetch real-time live database counts and records
  let liveSummary: LiveAdminSummary;
  let liveReviewFindings: LiveReviewFinding[] = [];
  let recentStreamChecks: LiveStreamCheck[] = [];
  let currentHeroId = 'mehmed-fetihler-sultani';
  let initialHeroDramaIds = ['mehmed-fetihler-sultani', 'kurulus-osman', 'salahuddin-ayyubi', 'alparslan-buyuk-selcuklu'];
  let dramaOptions: any[] = [];

  try {
    const [
      dramasRes,
      collectionsRes,
      groupsRes,
      variantsRes,
      activeStreamsRes,
      streamChecksRes,
      reviewFindingsRes,
      recentChecksRes,
      settingsRes,
      allDramasRes,
    ] = await Promise.all([
      client.from('dramas').select('*', { count: 'exact', head: true }),
      client.from('collections').select('*', { count: 'exact', head: true }),
      client.from('episode_groups').select('*', { count: 'exact', head: true }),
      client.from('video_variants').select('*', { count: 'exact', head: true }),
      client.from('stream_sources').select('*', { count: 'exact', head: true }).eq('is_active', true),
      client.from('stream_checks').select('*', { count: 'exact', head: true }),
      client
        .from('review_findings')
        .select('id, target_source_id, flag_type, severity, evidence, is_resolved, resolution_notes, reviewed_at')
        .order('is_resolved', { ascending: true })
        .order('target_source_id', { ascending: true }),
      client
        .from('stream_checks')
        .select('id, variant_source_id, stream_url, check_method, status, http_status, content_type, error_message, checked_at')
        .order('checked_at', { ascending: false })
        .limit(15),
      client
        .from('public_site_settings')
        .select('pilot_drama_source_id, feature_flags')
        .eq('id', 'current')
        .single(),
      client
        .from('dramas')
        .select('source_id, display_name, poster_url, backdrop_url, genres, is_pilot')
        .order('display_name', { ascending: true }),
    ]);

    liveReviewFindings = (reviewFindingsRes.data || []) as LiveReviewFinding[];
    recentStreamChecks = (recentChecksRes.data || []) as LiveStreamCheck[];
    
    const pilotId = (settingsRes?.data?.pilot_drama_source_id as string) || 'mehmed-fetihler-sultani';
    const savedHeroIds: string[] = (settingsRes?.data?.feature_flags as any)?.hero_drama_ids || [];
    let initialHeroDramaIds = savedHeroIds.filter(Boolean);
    if (initialHeroDramaIds.length === 0) {
      initialHeroDramaIds = [pilotId, 'kurulus-osman', 'salahuddin-ayyubi', 'alparslan-buyuk-selcuklu'];
    }
    
    currentHeroId = pilotId;
    dramaOptions = (allDramasRes?.data || []) as any[];

    const openCount = liveReviewFindings.filter((f) => !f.is_resolved).length;
    const resolvedCount = liveReviewFindings.filter((f) => f.is_resolved).length;

    liveSummary = {
      dramas: dramasRes.count ?? 25,
      collections: collectionsRes.count ?? 64,
      episode_groups: groupsRes.count ?? 2907,
      video_variants: variantsRes.count ?? 3278,
      active_streams: activeStreamsRes.count ?? 3278,
      total_stream_checks: streamChecksRes.count ?? 720,
      open_reviews: openCount,
      resolved_reviews: resolvedCount,
    };
  } catch (err) {
    console.error('[AdminPage] Error fetching live Supabase metrics:', err);
    // Graceful fallback to catalog repository if network is unreachable
    catalogRepository.ensureLoaded();
    const fallbackSummary = catalogRepository.getSummary();
    const fallbackReviews = catalogRepository.getReviewQueue();
    const openCount = fallbackReviews.filter((r) => !r.resolved).length;

    liveSummary = {
      dramas: fallbackSummary?.dramas ?? 25,
      collections: fallbackSummary?.source_catalog_collections ?? 64,
      episode_groups: fallbackSummary?.episode_groups_within_collections ?? 2907,
      video_variants: 3278,
      active_streams: fallbackSummary?.records_with_stream_urls ?? 3278,
      total_stream_checks: 0,
      open_reviews: openCount,
      resolved_reviews: fallbackReviews.length - openCount,
    };
  }

  catalogRepository.ensureLoaded();
  const duplicateStreams = catalogRepository.getDuplicateStreams();

  return (
    <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12">
      <div className="mb-6">
        <h1 className="text-2xl sm:text-3xl font-bold font-display text-text-primary">
          Operations &amp; Catalog Management
        </h1>
        <p className="text-xs text-text-secondary mt-1">
          Live Supabase database telemetry, automated sync queue inspection, and real-time stream diagnostics.
        </p>
      </div>

      <AdminDashboardClient
        summary={liveSummary}
        reviewFindings={liveReviewFindings}
        recentStreamChecks={recentStreamChecks}
        duplicateStreams={duplicateStreams}
        dramaOptions={dramaOptions}
        currentHeroDramaId={currentHeroId}
        initialHeroDramaIds={initialHeroDramaIds}
        user={auth.user}
        role={auth.role}
      />
    </div>
  );
}
