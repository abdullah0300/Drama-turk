const fs=require('fs');
const input=JSON.parse(fs.readFileSync('.next/fatih-season1-source-dates.json'));
const held=new Set(['video-2745','video-2785','video-2787','video-2908','video-2909']);
// Episode 1's Urdu date precedes the confirmed premiere. Other held timestamps
// appear earlier than an evening broadcast; leave them unresolved, never substitute an air date.
const reviewed=input.map(r=>({source_id:r.id,source_url:r.source_url,publisher_upload_date:r.upload_date,source_uploaded_at:held.has(r.id)?null:r.upload_date,review:held.has(r.id)?'withheld: pre-broadcast or questionable publication timestamp':'publisher uploadDate; retained as source publication date',checked_at:new Date().toISOString()}));
const updates=reviewed.filter(r=>r.source_uploaded_at);
if(input.length!==30||updates.length!==25||updates.some(r=>!Number.isFinite(Date.parse(r.source_uploaded_at))))throw Error('Source-date review guard');
fs.writeFileSync('docs/seo/mehmed-season1-source-date-review.json',JSON.stringify(reviewed,null,2));
fs.writeFileSync('.next/fatih-source-date-update.sql',`begin;
do $guard$ declare affected integer; begin
update video_variants v set source_uploaded_at=x.source_uploaded_at
from jsonb_to_recordset($fatih$${JSON.stringify(updates.map(r=>({source_id:r.source_id,source_uploaded_at:r.source_uploaded_at})))}$fatih$::jsonb) as x(source_id text,source_uploaded_at timestamptz),collections c
where v.source_id=x.source_id and v.collection_id=c.id and c.source_id='collection-62' and v.source_uploaded_at is null;
get diagnostics affected=row_count;
if affected<>25 then raise exception 'Date guard failed: %',affected; end if;
end $guard$; commit;
select count(*) as season1_dates from video_variants v join collections c on c.id=v.collection_id where c.source_id='collection-62' and v.source_uploaded_at is not null;`);
console.log({reviewed:30,sourceDates:updates.length,withheld:held.size});
