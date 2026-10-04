'use client';
import { useEffect } from 'react';
import { useRouter } from 'next/navigation';

/** Refresh the same URL once the broadcast window opens; the server decides readiness. */
export function ReleaseAvailabilityRefresh({broadcastAt}:{broadcastAt:string}) {
  const router=useRouter();
  useEffect(()=>{
    const id=setInterval(()=>{
      if (document.visibilityState==='visible' && Date.now()>=Date.parse(broadcastAt)) router.refresh();
    },120000);
    return()=>clearInterval(id);
  },[broadcastAt,router]);
  return null;
}
