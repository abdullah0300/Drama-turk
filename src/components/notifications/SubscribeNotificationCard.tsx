'use client';

import React, { useState, useEffect } from 'react';
import { Bell, Check, Loader2, Mail } from 'lucide-react';

interface SubscribeNotificationCardProps {
  dramaId: string;
  dramaName: string;
  episodeLabel?: string;
  variant?: 'card' | 'inline' | 'compact';
}

const STORAGE_KEY = 'gn_subscriber_email';

export function SubscribeNotificationCard({
  dramaId,
  dramaName,
  episodeLabel,
  variant = 'card',
}: SubscribeNotificationCardProps) {
  const [email, setEmail] = useState('');
  const [savedEmail, setSavedEmail] = useState<string | null>(null);
  const [isChangingEmail, setIsChangingEmail] = useState(false);
  const [loading, setLoading] = useState(false);
  const [status, setStatus] = useState<'idle' | 'success' | 'error'>('idle');
  const [message, setMessage] = useState('');

  useEffect(() => {
    try {
      const stored = localStorage.getItem(STORAGE_KEY);
      if (stored) {
        setSavedEmail(stored);
        setEmail(stored);
      }
    } catch {
      // Ignore localStorage access restrictions
    }
  }, []);

  const handleSubscribe = async (e?: React.FormEvent) => {
    if (e) e.preventDefault();
    const targetEmail = isChangingEmail || !savedEmail ? email.trim() : savedEmail;

    if (!targetEmail || !targetEmail.includes('@')) {
      setStatus('error');
      setMessage('Please enter a valid email address.');
      return;
    }

    setLoading(true);
    setStatus('idle');
    setMessage('');

    try {
      const res = await fetch('/api/notifications/subscribe', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email: targetEmail, dramaId, dramaName }),
      });

      const data = await res.json();

      if (!res.ok || data.error) {
        throw new Error(data.error || 'Failed to subscribe');
      }

      try {
        localStorage.setItem(STORAGE_KEY, targetEmail);
        setSavedEmail(targetEmail);
      } catch {}

      setStatus('success');
      setMessage(data.message || `Subscribed! We'll alert you when new episodes of ${dramaName} drop.`);
      setIsChangingEmail(false);
    } catch (err: any) {
      setStatus('error');
      setMessage(err?.message || 'Something went wrong. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  if (variant === 'compact') {
    return (
      <div className="flex items-center gap-2">
        {status === 'success' ? (
          <span className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-emerald-500/10 border border-emerald-500/30 text-emerald-400 text-xs font-semibold">
            <Check className="w-3.5 h-3.5" /> Subscribed
          </span>
        ) : (
          <button
            onClick={() => handleSubscribe()}
            disabled={loading}
            className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-amber-500/10 hover:bg-amber-500/20 border border-amber-500/30 text-amber-400 text-xs font-semibold transition-colors"
          >
            {loading ? <Loader2 className="w-3.5 h-3.5 animate-spin" /> : <Bell className="w-3.5 h-3.5" />}
            {savedEmail ? `Alerts to ${savedEmail.split('@')[0]}` : 'Get Episode Alerts'}
          </button>
        )}
      </div>
    );
  }

  return (
    <div className="mt-4 rounded-xl border border-amber-500/25 bg-amber-500/[0.04] p-4 sm:p-5 text-left backdrop-blur-sm">
      <div className="flex items-start gap-3 sm:gap-4">
        <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-xl bg-amber-500/15 border border-amber-500/30 text-amber-400">
          <Bell className="h-5 w-5" />
        </div>

        <div className="flex-1 min-w-0">
          <h3 className="text-sm sm:text-base font-bold text-white flex items-center gap-2">
            Get notified when {episodeLabel ? `${episodeLabel} drops` : 'new episodes arrive'}
            <span className="text-[10px] uppercase font-semibold px-2 py-0.5 rounded-full bg-amber-500/20 text-amber-300 border border-amber-500/30">
              Free Alert
            </span>
          </h3>
          <p className="mt-1 text-xs sm:text-sm text-text-secondary leading-relaxed">
            We’ll email you the second Urdu &amp; English subtitles are playable on Great Nation.
          </p>

          {status === 'success' ? (
            <div className="mt-3.5 flex items-center gap-2 rounded-lg bg-emerald-500/10 border border-emerald-500/30 px-3.5 py-2.5 text-xs sm:text-sm text-emerald-300">
              <Check className="h-4 w-4 shrink-0 text-emerald-400" />
              <span>{message}</span>
            </div>
          ) : (
            <form onSubmit={handleSubscribe} className="mt-3.5">
              {savedEmail && !isChangingEmail ? (
                <div className="flex flex-wrap items-center gap-2 sm:gap-3">
                  <span className="text-xs text-text-secondary">
                    Alert will be sent to <strong className="text-white">{savedEmail}</strong>
                  </span>
                  <div className="flex items-center gap-2">
                    <button
                      type="submit"
                      disabled={loading}
                      className="inline-flex items-center gap-2 px-4 py-2 rounded-lg bg-amber-500 hover:bg-amber-600 text-stone-950 text-xs sm:text-sm font-bold transition-all shadow-sm shadow-amber-500/20 active:scale-95 disabled:opacity-50"
                    >
                      {loading ? <Loader2 className="h-4 w-4 animate-spin" /> : <Bell className="h-4 w-4" />}
                      Notify Me
                    </button>
                    <button
                      type="button"
                      onClick={() => setIsChangingEmail(true)}
                      className="text-xs text-amber-400/80 hover:text-amber-300 underline underline-offset-2"
                    >
                      Use different email
                    </button>
                  </div>
                </div>
              ) : (
                <div className="flex flex-col sm:flex-row gap-2 max-w-md">
                  <div className="relative flex-1">
                    <Mail className="absolute left-3.5 top-1/2 -translate-y-1/2 h-4 w-4 text-text-muted" />
                    <input
                      type="email"
                      value={email}
                      onChange={(e) => setEmail(e.target.value)}
                      placeholder="Enter your email address…"
                      required
                      className="w-full pl-10 pr-3 py-2 text-xs sm:text-sm rounded-lg bg-surface/80 border border-surface-border text-white placeholder:text-text-muted focus:outline-none focus:border-amber-500 focus:ring-1 focus:ring-amber-500 transition-colors"
                    />
                  </div>
                  <button
                    type="submit"
                    disabled={loading}
                    className="inline-flex items-center justify-center gap-2 px-4 py-2 rounded-lg bg-amber-500 hover:bg-amber-600 text-stone-950 text-xs sm:text-sm font-bold transition-all shadow-sm shadow-amber-500/20 active:scale-95 disabled:opacity-50 shrink-0"
                  >
                    {loading ? <Loader2 className="h-4 w-4 animate-spin" /> : <Bell className="h-4 w-4" />}
                    Notify Me
                  </button>
                </div>
              )}

              {status === 'error' && (
                <p className="mt-2 text-xs text-rose-400 font-medium">{message}</p>
              )}
            </form>
          )}
        </div>
      </div>
    </div>
  );
}
