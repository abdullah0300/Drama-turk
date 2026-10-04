// Creates a guarded, reviewable SQL file; does not execute it.
const fs=require('fs');
const before=JSON.parse(fs.readFileSync('docs/seo/mehmed-all-seasons-before.json'));
const guards=fs.existsSync('.next/fatih-current-editorial-timestamps.json')?JSON.parse(fs.readFileSync('.next/fatih-current-editorial-timestamps.json')):before;
const approved=JSON.parse(fs.readFileSync('docs/seo/mehmed-all-seasons-approved.json'));
const durations=JSON.parse(fs.readFileSync('docs/seo/mehmed-measured-durations.json'));
const rows=approved.map(r=>({id:r.id,previous_updated_at:guards.find(b=>b.id===r.id).updated_at,approved_display_title:r.approved_display_title,short_description:r.short_description,structured_article:r.structured_article,seo_title:r.seo_title,seo_description:r.seo_description,updated_at:r.updated_at}));
if(rows.length!==107||durations.length!==180||rows.some(r=>r.seo_title.length>60||r.seo_description.length>160))throw Error('Review guards');
const sql=`begin;
do $guard$
declare affected integer;
begin
update published_editorial p set approved_display_title=x.approved_display_title,short_description=x.short_description,structured_article=x.structured_article,seo_title=x.seo_title,seo_description=x.seo_description,updated_at=x.updated_at
from jsonb_to_recordset($fatih$${JSON.stringify(rows)}$fatih$::jsonb) as x(id uuid,previous_updated_at timestamptz,approved_display_title text,short_description text,structured_article jsonb,seo_title text,seo_description text,updated_at timestamptz)
where p.id=x.id and p.locale='en' and p.updated_at=x.previous_updated_at and coalesce(p.drama_id,(select drama_id from collections where id=p.collection_id),(select c.drama_id from episode_groups g join collections c on c.id=g.collection_id where g.id=p.group_id))=(select id from dramas where source_id='mehmed-fetihler-sultani');
get diagnostics affected=row_count;
if affected<>107 then raise exception 'Editorial guard failed: %',affected; end if;
update video_variants v set duration_seconds=x.duration_seconds
from jsonb_to_recordset($fatih$${JSON.stringify(durations)}$fatih$::jsonb) as x(source_id text,duration_seconds integer),collections c,dramas d
where v.source_id=x.source_id and v.collection_id=c.id and c.drama_id=d.id and d.source_id='mehmed-fetihler-sultani';
get diagnostics affected=row_count;
if affected<>180 then raise exception 'Duration guard failed: %',affected; end if;
end $guard$;
commit;
select count(*) as editorial_rows,max(length(seo_title)) as max_title,max(length(seo_description)) as max_description from published_editorial p where coalesce(p.drama_id,(select drama_id from collections where id=p.collection_id),(select c.drama_id from episode_groups g join collections c on c.id=g.collection_id where g.id=p.group_id))=(select id from dramas where source_id='mehmed-fetihler-sultani') and locale='en';`;
fs.writeFileSync('.next/fatih-reviewed-update.sql',sql);
console.log('Prepared guarded update for 107 editorial records and 180 duration records.');
