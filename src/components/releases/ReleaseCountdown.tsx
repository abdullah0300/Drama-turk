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
    <div className="release-clock-heading"><span>{label}</span>
    <svg className="release-ring" viewBox="0 0 48 48" aria-hidden="true">
      <circle className="release-ring-track" cx="24" cy="24" r="20" />
      <circle className="release-ring-progress" cx="24" cy="24" r="20" pathLength="100" strokeDasharray={`${fraction*100} 100`} transform="rotate(-90 24 24)" />
    </svg>
    </div>
    {remaining===0 ? <strong className="release-finished" role="status">{finished}</strong> :
      <div className="release-digits" aria-label={values?.map((n,i)=>`${n} ${['days','hours','minutes','seconds'][i]}`).join(', ')}>
        {['Days','Hours','Mins','Secs'].map((unit,i)=><div className="release-digit" key={unit}><strong>{values?String(values[i]).padStart(2,'0'):'—'}</strong><small>{unit}</small></div>)}
      </div>}
  </div>;
}
