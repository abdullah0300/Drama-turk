import React from 'react';
import type { Metadata } from 'next';
import { Mail, AlertTriangle, ShieldAlert } from 'lucide-react';
import { siteConfig } from '@/config/site';

export const metadata: Metadata = {
  title: 'Contact & Diagnostic Reporting',
  description: 'Reach our team or submit playback issue diagnostics directly.',
  alternates: {
    canonical: `${siteConfig.domain}/contact`,
  },
};

export default function ContactPage() {
  const reportingTarget = siteConfig.reportingDestination.target || 'diagnostics@example.com';

  return (
    <div className="max-w-reading mx-auto px-4 sm:px-6 py-12 sm:py-16 space-y-8">
      <div>
        <h1 className="text-3xl sm:text-4xl font-bold font-display text-text-primary tracking-tight mb-3">
          Contact &amp; Support
        </h1>
        <p className="text-sm sm:text-base text-text-secondary leading-relaxed">
          For technical feedback, stream issue reporting, or questions regarding our pilot drama release, please reach out via our designated channels.
        </p>
      </div>

      <div className="bg-surface/50 border border-surface-border rounded-xl p-6 space-y-4">
        <div className="flex items-center gap-3 text-amber-400">
          <Mail size={20} />
          <h2 className="text-base font-semibold text-text-primary">Direct Communication</h2>
        </div>
        <p className="text-sm text-text-secondary">
          Configured technical support mailbox:
        </p>
        <div className="p-3 bg-canvas border border-surface-border rounded-lg font-mono text-sm text-amber-400 select-all">
          {reportingTarget}
        </div>
      </div>

      <div className="bg-surface/30 border border-surface-border rounded-xl p-6 space-y-4">
        <div className="flex items-center gap-3 text-amber-500">
          <AlertTriangle size={20} />
          <h2 className="text-base font-semibold text-text-primary">Reporting Playback Problems</h2>
        </div>
        <p className="text-sm text-text-secondary leading-relaxed">
          If you encounter buffering, audio desynchronization, or upstream CORS blocks while viewing an episode, please use the <strong className="text-text-primary">&ldquo;Report Problem&rdquo;</strong> button directly on the watch page.
        </p>
        <div className="p-4 bg-canvas/80 border border-surface-border rounded-lg text-xs text-text-secondary space-y-2">
          <p className="font-semibold text-text-primary flex items-center gap-1.5">
            <ShieldAlert size={14} className="text-amber-500" />
            Why we provide real diagnostic payloads:
          </p>
          <p>
            Rather than showing a synthetic &ldquo;Thank you, report received&rdquo; banner when no backend telemetry server is attached, our player allows you to copy the exact stream URL, episode ID, and browser error code to your clipboard so you can paste it into an email or issue ticket.
          </p>
        </div>
      </div>
    </div>
  );
}
