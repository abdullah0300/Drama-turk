'use client';

import React from 'react';
import { usePathname } from 'next/navigation';

/** Pages that open with a full-bleed hero sit under the fixed nav; all others get top spacing. */
export function PageShell({ children }: { children: React.ReactNode }) {
  const pathname = usePathname();
  const fullBleed = pathname === '/' || /^\/drama\/[^/]+\/(collection|watch)\//.test(pathname) || /^\/drama\/[^/]+\/?$/.test(pathname);

  return (
    <main
      id="main-content"
      className={`flex-1 pb-16 md:pb-0 focus:outline-none${fullBleed ? '' : ' pt-[68px]'}`}
    >
      {children}
    </main>
  );
}
