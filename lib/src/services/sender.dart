part of '../services.dart';

class Sender extends BaseService {
  final Message message;

  Sender({
    required super.apiToken,
    required this.message,
    super.successCallback,
    super.failureCallback,
  });

  Future<Message> sendText() async {
    // final response = await http.get(Uri.parse('${_apiUrl}sendMessage'));
    return Message(
      messageId: 12,
      date: 123,
      chat: Chat(
        id: 123,
        type: 'bot',
      ),
    );
  }
}

/*
sendMessage
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