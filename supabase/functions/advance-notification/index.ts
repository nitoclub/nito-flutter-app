import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { supabase } from "../_shared/supabase.ts";
import { corsHeaders } from "../_shared/cors.ts";
import { pushMessage, pushMessageToCoreGroup } from "../_shared/line.ts";
import { Member, Schedule } from "../_shared/models.ts";

const handler: (req: Request) => Promise<Response> = async (req) => {
  try {
    const schedule = await fetchTomorrowSchedule();
    if (schedule == null) return notScheduledResponse;

    const participationMembers = await fetchParticipationMembers(schedule.id);
    void await pushMessageForParticipationMembers(participationMembers);
    void await pushCoreGroupLineMessage(participationMembers);

    return new Response(JSON.stringify({
      scheduled: true,
      participationMembers: participationMembers?.length ?? 0,
    }), {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
      status: 200,
    });
  } catch (error) {
    return new Response(JSON.stringify({ error: error.message }), {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
      status: 400,
    });
  }
};

/**
 * 明日のスケジュールを取得する
 */
const fetchTomorrowSchedule: () => Promise<Schedule | null> = async () => {
  const now = new Date();
  const nextDay = new Date(
    now.getFullYear(),
    now.getMonth(),
    now.getDate() + 1
  );
  const nextDayStr = nextDay.toISOString().split('T')[0];

  const { data, error } = await supabase
      .from("schedules")
      .select()
      .is('deleted_at', null)
      .eq('date', nextDayStr)
      .maybeSingle();

  if (error) throw error;
  if (data != null) {
    return data;
  } else {
    return null;
  }
}

const fetchParticipationMembers: (scheduleId: number) => Promise<Member[] | null> = async (scheduleId) => {
  const { data, error } = await supabase
      .from("participation")
      .select('members(*)')
      .is('deleted_at', null)
      .eq('schedule_id', scheduleId);

  if (error) throw error;
  if (data != null) {
    return data.map((element) => element.members as Member);
  } else {
    return null;
  }
}

const messageForParticipationMembers = `明日のトランポリンに参加される方へ

■ 服装について
更衣室があるので、着替えを持参することが可能です。
服装についての注意点はリンクを参照してください。
https://www.jumpower-trampoline.com/inqfm/first/#first_caution

2 回目以降参加される方は靴下を忘れないようにしてください 🙌

■ 集合場所・時間について
最寄り駅は 武蔵野線 - 越谷レイクタウン駅 です。
10:30 頃にエスカレーターを上がってしばらく先へ進み、少し開けたところに集合します。

現地集合も可能です 👍
https://goo.gl/maps/fudJMJbwk8UBDs117

■ 料金について
リンクを参照してください。
https://www.jumpower-trampoline.com/price/`;

/**
 * 参加者にプッシュメッセージを送信する
 * @param members
 */
const pushMessageForParticipationMembers = async (members: Member[] | null) => {
  if (members == null) return null;

  const pushResults = members.map(async member => {
    const lineId = member.line_id;
    if (lineId == null) {
      return null;
    }
    await pushMessage(lineId, messageForParticipationMembers);
  });

  return await Promise.all(pushResults);
}

/**
 * コアグループにプッシュメッセージを送信する
 * @param members
 */
const pushCoreGroupLineMessage = async (members: Member[] | null) => {
  const message = createCoreGroupLineMessage(members);
  return await pushMessageToCoreGroup(message);
}

/**
 * コアグループに送信するメッセージを作成する
 * @param members
 */
const createCoreGroupLineMessage = (members: Member[] | null) => {
  if (members == null) {
    return `明日の参加者はいません 🥹`;
  }

  const nicknames = members.map((member) => `- ${member.nickname}`).join('\n');
  return `明日は以下のメンバーが参加予定です 🙌\n${nicknames}`;
}

const notScheduledResponse = new Response(JSON.stringify({
  scheduled: false,
  participationMembers: 0,
}), {
  headers: { ...corsHeaders, "Content-Type": "application/json" },
  status: 200,
});

void serve(handler);
