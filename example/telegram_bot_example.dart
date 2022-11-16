import 'package:emyu_telegram_bot/telegram_bot.dart';

void main() {
  final getUpdates = GetUpdates(
    apiToken: '1901398808:AAESqUFFb_ER02evRJQjtm4eau2sOFV3BUU',
    handler: UpdateHandler(),
  );
  try {
    getUpdates.getUnread();
  } catch (e) {
    print(e);
  }
}

class UpdateHandler implements UpdateHandlerInterface {
  @override
  void handleMessage(Message message) {
    print(message.toJson());
  }

  @override
  void handleCallbackQuery(CallbackQuery callbackQuery) => print;

  @override
  void handleChannelPost(Message channelPost) => print;

  @override
  void handleChatJoinRequest(ChatJoinRequest chatJoinRequest) => print;

  @override
  void handleChatMember(ChatMemberUpdated chatMember) => print;

  @override
  void handleChosenInlineRequest(ChosenInlineResult chosenInlineResult) =>
      print;

  @override
  void handleEditedChannelPost(Message editedChannelPost) => print;

  @override
  void handleEditedMessage(Message message) => print;

  @override
  void handleInlineQuery(InlineQuery inlineQuery) => print;

  @override
  void handleMyChatMember(ChatMemberUpdated myChatMember) => print;

  @override
  void handlePoll(Poll poll) => print;

  @override
  void handlePollAnswer(PollAnswer pollAnswer) => print;

  @override
  void handlePreCheckoutQuery(PreCheckoutQuery preCheckoutQuery) => print;

  @override
  void handleShippingQuery(ShippingQuery shippingQuery) => print;
}
