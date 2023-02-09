-- cron の拡張機能を有効化
create extension if not exists "pg_cron" with schema "extensions";

-- 前日通知の cron を作成
insert into cron.job (schedule, command, nodename, nodeport, database, username, active, jobname)
values ('0 6 * * *', '
    select
      net.http_post(
          url:=''https://hwxxihvcszfhaxlguajv.functions.supabase.co/advance-notification'',
          headers:=''{"Content-Type": "application/json"}''::jsonb
      ) as request_id;
    ', 'localhost', 5432, 'postgres', 'postgres', true, 'invoke-advance-notification-every-day');
