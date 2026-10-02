'use client';

import React, { useState } from 'react';
import { ShieldCheck, Lock, Mail, AlertCircle, ArrowRight, Loader2 } from 'lucide-react';

interface AdminLoginFormProps {
  initialMessage?: string;
}

export function AdminLoginForm({ initialMessage }: AdminLoginFormProps) {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const [errorMessage, setErrorMessage] = useState(initialMessage || '');

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!email || !password) {
      setErrorMessage('Please provide both your email and password.');
      return;
    }

    setIsLoading(true);
    setErrorMessage('');

    try {
      const res = await fetch('/api/admin/auth/login', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email: email.trim(), password }),
      });

      const data = await res.json();

      if (!res.ok || !data.success) {
        setErrorMessage(data.error || 'Failed to authenticate. Please verify your credentials.');
        setIsLoading(false);
        return;
      }

      // Success: cookie has been set by the API route. Reload to mount admin console.
      window.location.reload();
    } catch (err: any) {
      setErrorMessage(err.message || 'Network error encountered during login.');
      setIsLoading(false);
    }
  };

  return (
    <div className="min-h-[70vh] flex items-center justify-center px-4 sm:px-6">
      <div className="w-full max-w-md">
        <div className="bg-surface border border-surface-border p-8 sm:p-10 rounded-2xl shadow-2xl relative overflow-hidden backdrop-blur-sm">
          {/* Subtle top amber highlight */}
          <div className="absolute top-0 left-0 right-0 h-1 bg-gradient-to-r from-amber-500/20 via-amber-500 to-amber-500/20" />

          {/* Header */}
          <div className="text-center space-y-3 mb-8">
            <div className="w-14 h-14 mx-auto rounded-2xl bg-amber-500/10 border border-amber-500/20 flex items-center justify-center text-amber-400 shadow-inner">
              <ShieldCheck className="w-7 h-7" />
            </div>
            <h1 className="text-2xl font-bold font-display text-text-primary tracking-tight">
              Admin Console Login
            </h1>
            <p className="text-xs text-text-secondary leading-relaxed max-w-xs mx-auto">
              Authenticate with your staff or administrator account to manage catalog operations.
            </p>
          </div>

          {/* Error Message */}
          {errorMessage && (
            <div className="mb-6 p-3.5 rounded-xl bg-red-500/10 border border-red-500/20 flex items-start gap-3 text-red-400 text-xs animate-in fade-in slide-in-from-top-1">
              <AlertCircle className="w-4 h-4 mt-0.5 shrink-0" />
              <div className="flex-1 leading-relaxed">{errorMessage}</div>
            </div>
          )}

          {/* Form */}
          <form onSubmit={handleSubmit} className="space-y-4">
            <div>
              <label className="block text-xs font-medium text-text-secondary mb-1.5" htmlFor="admin-email">
                Staff Email Address
              </label>
              <div className="relative">
                <div className="absolute inset-y-0 left-0 pl-3.5 flex items-center pointer-events-none text-text-muted">
                  <Mail className="w-4 h-4" />
                </div>
                <input
                  id="admin-email"
                  type="email"
                  required
                  autoComplete="email"
                  placeholder="admin@drama-platform.internal"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  disabled={isLoading}
                  className="w-full pl-10 pr-4 py-2.5 bg-canvas/70 border border-surface-border rounded-xl text-sm text-text-primary placeholder:text-text-muted focus:outline-none focus:border-amber-500/60 focus:ring-1 focus:ring-amber-500/40 transition-colors disabled:opacity-50"
                />
              </div>
            </div>

            <div>
              <label className="block text-xs font-medium text-text-secondary mb-1.5" htmlFor="admin-password">
                Password
              </label>
              <div className="relative">
                <div className="absolute inset-y-0 left-0 pl-3.5 flex items-center pointer-events-none text-text-muted">
                  <Lock className="w-4 h-4" />
                </div>
                <input
                  id="admin-password"
                  type="password"
                  required
                  autoComplete="current-password"
                  placeholder="••••••••••••"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  disabled={isLoading}
                  className="w-full pl-10 pr-4 py-2.5 bg-canvas/70 border border-surface-border rounded-xl text-sm text-text-primary placeholder:text-text-muted focus:outline-none focus:border-amber-500/60 focus:ring-1 focus:ring-amber-500/40 transition-colors disabled:opacity-50"
                />
              </div>
            </div>

            <button
              type="submit"
              disabled={isLoading}
              className="w-full mt-2 flex items-center justify-center gap-2 px-4 py-2.5 rounded-xl bg-amber-500 hover:bg-amber-400 text-stone-950 font-semibold text-sm transition-all shadow-lg shadow-amber-500/10 active:scale-[0.99] disabled:opacity-50 disabled:pointer-events-none"
            >
              {isLoading ? (
                <>
                  <Loader2 className="w-4 h-4 animate-spin" />
                  Verifying Permissions...
                </>
              ) : (
                <>
                  Enter Admin Console
                  <ArrowRight className="w-4 h-4" />
                </>
              )}
            </button>
          </form>

          {/* Footer note */}
          <div className="mt-6 pt-5 border-t border-surface-border/60 text-center">
            <p className="text-[11px] text-text-muted">
              Access is protected by Supabase Row-Level Security &amp; RBAC policies.
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}
