create table "public"."profiles"
(
    "id"         uuid                     not null,
    "created_at" timestamp with time zone NOT NULL DEFAULT now(),
    "updated_at" timestamp with time zone NOT NULL,
    "username"   text,
    "full_name"  text,
    "avatar_url" text,
    "website"    text
);

comment on table "public"."profiles" is 'ユーザープロフィール';

comment on column "public"."profiles"."id" is 'ユーザーID';

comment on column "public"."profiles"."created_at" is '作成日時';

comment on column "public"."profiles"."updated_at" is '更新日時';

comment on column "public"."profiles"."username" is 'ユーザー名';

comment on column "public"."profiles"."full_name" is 'ユーザー表示名';

comment on column "public"."profiles"."avatar_url" is 'アイコン画像URL';

comment on column "public"."profiles"."website" is 'ウェブサイトURL';

alter table "public"."profiles"
    enable row level security;

CREATE UNIQUE INDEX profiles_pkey ON public.profiles USING btree (id);

CREATE UNIQUE INDEX profiles_username_key ON public.profiles USING btree (username);

alter table "public"."profiles"
    add constraint "profiles_pkey" PRIMARY KEY using index "profiles_pkey";

alter table "public"."profiles"
    add constraint "profiles_id_fkey" FOREIGN KEY (id) REFERENCES auth.users (id) not valid;

alter table "public"."profiles"
    validate constraint "profiles_id_fkey";

alter table "public"."profiles"
    add constraint "profiles_username_key" UNIQUE using index "profiles_username_key";

alter table "public"."profiles"
    add constraint "username_length" CHECK ((char_length(username) >= 2)) not valid;

alter table "public"."profiles"
    validate constraint "username_length";

create
    policy "Public profiles are viewable by everyone."
    on "public"."profiles"
    as permissive
    for
    select
    to public
    using (true);


create
    policy "Users can insert their own profile."
    on "public"."profiles"
    as permissive
    for insert
    to public
    with check ((auth.uid() = id));


create
    policy "Users can update own profile."
    on "public"."profiles"
    as permissive
    for
    update
    to public
    using ((auth.uid() = id));



create
    policy "Anyone can update their own avatar."
    on "storage"."objects"
    as permissive
    for
    update
    to public
    using ((auth.uid() = owner))
    with check ((bucket_id = 'avatars'::text));


create
    policy "Anyone can upload an avatar."
    on "storage"."objects"
    as permissive
    for insert
    to public
    with check ((bucket_id = 'avatars'::text));


create
    policy "Avatar images are publicly accessible."
    on "storage"."objects"
    as permissive
    for
    select
    to public
    using ((bucket_id = 'avatars'::text));
create table public.profiles
(
    id         uuid not null
        primary key
        references auth.users,
    updated_at timestamp with time zone,
    username   text
        unique
        constraint username_length
            check (char_length(username) >= 2),
    full_name  text,
    avatar_url text,
    website    text
);

alter table public.profiles
    owner to postgres;

create policy "Public profiles are viewable by everyone." on public.profiles
    as permissive
    for select
    using true;

create policy "Users can insert their own profile." on public.profiles
    as permissive
    for insert
    with check (auth.uid() = id);

create policy "Users can update own profile." on public.profiles
    as permissive
    for update
    using (auth.uid() = id);

grant delete, insert, references, select, trigger, truncate, update on public.profiles to anon;

grant delete, insert, references, select, trigger, truncate, update on public.profiles to authenticated;

grant delete, insert, references, select, trigger, truncate, update on public.profiles to service_role;
