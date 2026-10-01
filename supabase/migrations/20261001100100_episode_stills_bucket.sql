-- Public bucket for frames captured from episode videos (read-only to clients;
-- uploads are done server-side with the service role).
insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values ('episode-stills', 'episode-stills', true, 1048576, array['image/webp', 'image/jpeg'])
on conflict (id) do update
  set public = excluded.public,
      file_size_limit = excluded.file_size_limit,
      allowed_mime_types = excluded.allowed_mime_types;
