--
-- messages
--

COMMENT ON TABLE "public"."messages" IS 'メッセージ';
COMMENT ON COLUMN "public"."messages"."id" IS 'メッセージID';
COMMENT ON COLUMN "public"."messages"."created_at" IS '作成日時';
COMMENT ON COLUMN "public"."messages"."updated_at" IS '更新日時';
COMMENT ON COLUMN "public"."messages"."deleted_at" IS '削除日時';
COMMENT ON COLUMN "public"."messages"."message" IS 'メッセージ';
COMMENT ON COLUMN "public"."messages"."member_id" IS 'メンバーID';


--
-- participation
--

COMMENT ON TABLE "public"."participation" IS '参加情報';
COMMENT ON COLUMN "public"."participation"."id" IS '参加ID';
COMMENT ON COLUMN "public"."participation"."created_at" IS '作成日時';
COMMENT ON COLUMN "public"."participation"."updated_at" IS '更新日時';
COMMENT ON COLUMN "public"."participation"."deleted_at" IS '削除日時';
COMMENT ON COLUMN "public"."participation"."schedule_id" IS 'スケジュールID';
COMMENT ON COLUMN "public"."participation"."member_id" IS 'メンバーID';
COMMENT ON COLUMN "public"."participation"."comment" IS 'コメント';


--
-- schedules
--

COMMENT ON TABLE "public"."schedules" IS 'スケジュール';
COMMENT ON COLUMN "public"."schedules"."id" IS 'スケジュールID';
COMMENT ON COLUMN "public"."schedules"."created_at" IS '作成日時';
COMMENT ON COLUMN "public"."schedules"."updated_at" IS '更新日時';
COMMENT ON COLUMN "public"."schedules"."deleted_at" IS '削除日時';
COMMENT ON COLUMN "public"."schedules"."date" IS '実施日';
