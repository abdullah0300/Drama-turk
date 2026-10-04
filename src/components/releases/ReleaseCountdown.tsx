'use client';
import { useEffect, useState } from 'react';

export function ReleaseCountdown({at,label,finished}:{at:string;label:string;finished:string}) {
  const [now,setNow] = useState<number>();
  useEffect(()=>{setNow(Date.now());const id=setInterval(()=>setNow(Date.now()),1000);return()=>clearInterval(id);},[at]);
  const remaining = now == null ? undefined : Math.max(0,Math.floor((Date.parse(at)-now)/1000));
  const values = remaining == null ? undefined : [Math.floor(remaining/86400),Math.floor(remaining/3600)%24,Math.floor(remaining/60)%60,remaining%60];
  // Remaining arc shrinks anticlockwise over the final week. Text stays readable without JS.
  const fraction = remaining == null ? 1 : Math.min(1,remaining/(7*86400));
  return <div className="release-clock" aria-label={label}>
    <svg className="release-ring" viewBox="0 0 48 48" aria-hidden="true">
      <circle className="release-ring-track" cx="24" cy="24" r="20" />
      <circle className="release-ring-progress" cx="24" cy="24" r="20" pathLength="100" strokeDasharray={`${fraction*100} 100`} transform="rotate(-90 24 24)" />
    </svg>
    <div><strong>{remaining===0 ? finished : values ? values.map((n,i)=>`${String(n).padStart(2,'0')}${['d','h','m','s'][i]}`).join(' ') : 'Countdown loading'}</strong>
      <span>{label}</span></div>
  </div>;
}
