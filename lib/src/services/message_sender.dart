part of '../services.dart';

/// Send different types of messages.
class MessageSender extends BaseService {
  /// The message to be sent.
  final Message message;

  MessageSender({
    required super.apiToken,
    required this.message,
  });

  /// Use this method to send text messages.
  ///
  /// On success, the sent Message is returned.
  Future<Message> sendMessage({
    String? parseMode,
    bool disableWebPagePreview = false,
    bool disableNotification = false,
    bool protectContent = false,
    ReplyMarkup? replyMarkup,
  }) async {
    if (message.text == null) {
      throw MessageException('The message does not have the text property.');
    }

    try {
      final body = <String, String>{};
      body.addAll({'chat_id': message.chat.id.toString()});
      if (message.messageThreadId != null) {
        body.addAll({'message_thread_id': message.messageThreadId.toString()});
      }
      body.addAll({'text': message.text!});
      if (parseMode != null) {
        body.addAll({'parse_mode': parseMode});
      }
      if (message.entities != null) {
        body.addAll({'entities': message.entities.toString()});
      }
      body.addAll(
          {'disable_web_page_preview': disableWebPagePreview.toString()});
      body.addAll({'disable_notification': disableNotification.toString()});
      body.addAll({'protect_content': protectContent.toString()});
      if (message.replyToMessage != null) {
        body.addAll({
          'reply_to_message_id': message.replyToMessage!.messageId.toString()
        });
      }
      if (replyMarkup != null) {
        body.addAll({'reply_markup': replyMarkup.toString()});
      }
      print(json.encode(body));
      final response =
          await http.post(Uri.parse('${_apiUrl}sendMessage'), body: body);
      final result = response.body;
      final Map responseBody = json.decode(result);
      if (responseBody['ok'] == false) {
        throw MessageException(responseBody['description']);
      }
      // final Message msg = Message.fromJson(result);
      // print(msg);
      return Message(
        messageId: 0,
        date: 1234,
        chat: Chat(
          id: 0,
          type: 'private',
        ),
      );
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}

/*
forwardMessage
copyMessage
sendPhoto
sendAudio
sendDocument
sendVideo
sendAnimation
sendVoice
sendVideoNote
sendMediaGroup
sendLocation
editMessageLiveLocation
stopMessageLiveLocation
sendVenue
sendContact
sendPoll
sendDice
sendChatAction
getUserProfilePhotos
getFile
banChatMember
unbanChatMember
restrictChatMember
promoteChatMember
setChatAdministratorCustomTitle
banChatSenderChat
unbanChatSenderChat
setChatPermissions
exportChatInviteLink
createChatInviteLink
editChatInviteLink
revokeChatInviteLink
approveChatJoinRequest
declineChatJoinRequest
setChatPhoto
deleteChatPhoto
setChatTitle
setChatDescription
pinChatMessage
unpinChatMessage
unpinAllChatMessages
leaveChat
getChat
getChatAdministrators
getChatMemberCount
getChatMember
setChatStickerSet
deleteChatStickerSet
getForumTopicIconStickers
createForumTopic
editForumTopic
closeForumTopic
reopenForumTopic
deleteForumTopic
unpinAllForumTopicMessages
answerCallbackQuery
setMyCommands
deleteMyCommands
getMyCommands
setChatMenuButton
getChatMenuButton
setMyDefaultAdministratorRights
getMyDefaultAdministratorRights

inline mode methods
-------------------
editMessageText
editMessageCaption
editMessageMedia
editMessageReplyMarkup
stopPoll
deleteMessage

stickers
--------
sendSticker
getStickerSet
getCustomEmojiStickers
uploadStickerFile
createNewStickerSet
addStickerToSet
setStickerPositionInSet
deleteStickerFromSet
setStickerSetThumb


inline mode
-----------
answerInlineQuery

*/
