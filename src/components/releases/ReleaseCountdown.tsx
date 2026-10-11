'use client';
import { useEffect, useState } from 'react';

export function ReleaseCountdown({
  at,
  label,
  finished,
}: {
  at?: string | null;
  label?: string;
  finished?: string;
}) {
  const [now, setNow] = useState<number>();

  useEffect(() => {
    setNow(Date.now());
    if (!at) return;
    const id = setInterval(() => setNow(Date.now()), 1000);
    return () => clearInterval(id);
  }, [at]);

  if (!at) {
    return (
      <div className="timer" aria-label={label || 'Release time not confirmed'}>
        <div><strong>—</strong><small>DAYS</small></div>
        <div><strong>—</strong><small>HOURS</small></div>
        <div><strong>—</strong><small>MINS</small></div>
        <div><strong>—</strong><small>SECS</small></div>
      </div>
    );
  }

  const remaining = now == null ? undefined : Math.max(0, Math.floor((Date.parse(at) - now) / 1000));
  const values = remaining == null ? undefined : [
    Math.floor(remaining / 86400),
    Math.floor(remaining / 3600) % 24,
    Math.floor(remaining / 60) % 60,
    remaining % 60,
  ];

  if (remaining === 0 && finished) {
    return (
      <div className="timer-finished" role="status">
        <strong className="release-finished">{finished}</strong>
      </div>
    );
  }

  return (
    <div className="timer" aria-label={label || 'Release countdown'}>
      <div><strong>{values ? String(values[0]).padStart(2, '0') : '00'}</strong><small>DAYS</small></div>
      <div><strong>{values ? String(values[1]).padStart(2, '0') : '00'}</strong><small>HOURS</small></div>
      <div><strong>{values ? String(values[2]).padStart(2, '0') : '00'}</strong><small>MINS</small></div>
      <div><strong>{values ? String(values[3]).padStart(2, '0') : '00'}</strong><small>SECS</small></div>
    </div>
  );
}
