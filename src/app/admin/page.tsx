import React from 'react';
import type { Metadata } from 'next';
import { headers } from 'next/headers';
import { catalogRepository } from '@/lib/repository/catalog-repository';
import { AdminDashboardClient } from './AdminDashboardClient';
import { AdminLoginForm } from './AdminLoginForm';
import { verifyAdminAccess } from '@/lib/auth/admin-auth';

export const metadata: Metadata = {
  title: 'Admin Console & Operations',
  robots: {
    index: false,
    follow: false,
  },
};

export default async function AdminPage() {
  const reqHeaders = headers();
  const auth = await verifyAdminAccess(new Request('http://localhost', { headers: reqHeaders }));

  if (!auth.isAuthorized) {
    return <AdminLoginForm />;
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
        user={auth.user}
        role={auth.role}
      />
    </div>
  );
}
