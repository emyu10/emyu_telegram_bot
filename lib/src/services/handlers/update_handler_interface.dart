part of '../../services.dart';

abstract class UpdateHandlerInterface {
  void handleMessage(Message message);
  void handleEditedMessage(Message message);
  void handleChannelPost(Message channelPost);
  void handleEditedChannelPost(Message editedChannelPost);
  void handleInlineQuery(InlineQuery inlineQuery);
  void handleChosenInlineRequest(ChosenInlineResult chosenInlineResult);
  void handleCallbackQuery(CallbackQuery callbackQuery);
  void handleShippingQuery(ShippingQuery shippingQuery);
  void handlePreCheckoutQuery(PreCheckoutQuery preCheckoutQuery);
  void handlePoll(Poll poll);
  void handlePollAnswer(PollAnswer pollAnswer);
  void handleMyChatMember(ChatMemberUpdated myChatMember);
  void handleChatMember(ChatMemberUpdated chatMember);
  void handleChatJoinRequest(ChatJoinRequest chatJoinRequest);
}
