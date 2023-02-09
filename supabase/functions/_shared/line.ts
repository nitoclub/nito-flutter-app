// FIXME: LINE BOT SDK を利用したい
// import { Client, Message } from "npm:@line/bot-sdk@7.5.2";
// import { Client, Message } from 'https://cdn.skypack.dev/@line/bot-sdk';

const channelAccessToken = Deno.env.get("LINE_CHANNEL_ACCESS_TOKEN")!;
const channelSecret = Deno.env.get("LINE_CHANNEL_SECRET")!;
const coreGroupId = Deno.env.get("LINE_CORE_GROUP_ID")!;

/**
 * コアグループにプッシュメッセージを送信する
 * @param textMessage
 * @param notificationDisabled
 */
export const pushMessageToCoreGroup = async (
  textMessage: string,
  notificationDisabled = false,
) => await pushMessage(coreGroupId, textMessage, notificationDisabled);

/**
 * 個別のプッシュメッセージを送信する
 * @param to
 * @param textMessage
 * @param notificationDisabled
 */
export const pushMessage = async (
  to: string,
  textMessage: string,
  notificationDisabled = false,
) => {
  const body = `{
    "to": "${to}",
    "messages": [
      {
        "type": "text",
        "text": "${transformToLineTextMessage(textMessage)}"
      }
    ],
    "notificationDisabled": ${notificationDisabled}
  }`;

  return await fetch("https://api.line.me/v2/bot/message/push", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "Authorization": `Bearer ${channelAccessToken}`,
    },
    body,
  });
}

/**
 * ブロードキャストを送信する
 * @param textMessage
 * @param notificationDisabled
 */
export const broadcast = async (
  textMessage: string,
  notificationDisabled = false,
) => {
  const body = `{
    "messages": [
      {
        "type": "text",
        "text": "${transformToLineTextMessage(textMessage)}"
      }
    ],
    "notificationDisabled": ${notificationDisabled}
  }`;

  return await fetch("https://api.line.me/v2/bot/message/broadcast", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "Authorization": `Bearer ${channelAccessToken}`,
    },
    body,
  });
}

/**
 * LINE のテキストメッセージとして正しい形に変換する
 * @param message
 */
const transformToLineTextMessage = (message: string) => {
  return message.replaceAll('\n', '\\n');
}
