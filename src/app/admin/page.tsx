import React from 'react';
import type { Metadata } from 'next';
import { headers } from 'next/headers';
import { catalogRepository } from '@/lib/repository/catalog-repository';
import { AdminDashboardClient } from './AdminDashboardClient';
import { verifyAdminAccess } from '@/lib/auth/admin-auth';
import { ShieldAlert } from 'lucide-react';

export const metadata: Metadata = {
  title: 'Admin Console & Review Queue',
  robots: {
    index: false,
    follow: false,
  },
};

export default async function AdminPage() {
  const reqHeaders = headers();
  const auth = await verifyAdminAccess(new Request('http://localhost', { headers: reqHeaders }));

  if (!auth.isAuthorized) {
    return (
      <div className="min-h-[60vh] flex items-center justify-center p-6">
        <div className="max-w-md w-full bg-surface border border-surface-border p-8 rounded-xl text-center space-y-4">
          <ShieldAlert className="w-12 h-12 text-red-400 mx-auto" />
          <h1 className="text-xl font-bold font-display text-text-primary">
            Admin Access Restricted
          </h1>
          <p className="text-sm text-text-secondary leading-relaxed">
            {auth.message || 'Authorization is strictly required to view or mutate catalog review data.'}
          </p>
        </div>
      </div>
    );
  }

  catalogRepository.ensureLoaded();
  const summary = catalogRepository.getSummary();
  const reviewQueue = catalogRepository.getReviewQueue();
  const duplicateStreams = catalogRepository.getDuplicateStreams();

  return (
    <div className="max-w-page mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12">
      <div className="mb-6">
        <h1 className="text-2xl sm:text-3xl font-bold font-display text-text-primary">
          Operations &amp; Catalog Management
        </h1>
        <p className="text-xs text-text-secondary mt-1">
          Review queue inspection, stream health monitoring, and offline editorial imports.
        </p>
      </div>

      <AdminDashboardClient
        summary={summary}
        reviewQueue={reviewQueue}
        duplicateStreams={duplicateStreams}
      />
    </div>
  );
}
