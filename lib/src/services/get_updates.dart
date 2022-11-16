part of '../services.dart';

class GetUpdates extends BaseService {
  final UpdateHandlerInterface handler;

  GetUpdates({
    required super.apiToken,
    required this.handler,
  });

  void getAll() async {
    try {
      final result = (await http.post(Uri.parse('${_apiUrl}getUpdates'))).body;
      final Map m = json.decode(result);
      for (var message in (m['result'] as List)) {
        await _handle(message);
      }
    } on Exception {
      throw GetUpdatesException();
    }
  }

  void getUnread() async {
    try {
      final result = (await http.post(
        Uri.parse('${_apiUrl}getUpdates'),
        body: {'offset': '1'},
      ))
          .body;
      final Map m = json.decode(result);
      for (var message in (m['result'] as List)) {
        await _handle(message);
      }
    } on Exception {
      throw GetUpdatesException();
    }
  }

  Future<void> _handle(Map<String, dynamic> update) async {
    if (update.containsKey('message')) {
      handler.handleMessage(Message.fromMap(update['message']));
    }
    if (update.containsKey('edited_message')) {
      handler.handleEditedMessage(Message.fromMap(update['edited_message']));
    }
    if (update.containsKey('channel_post')) {
      handler.handleChannelPost(Message.fromMap(update['channel_post']));
    }
    if (update.containsKey('edited_channel_post')) {
      handler.handleEditedChannelPost(
          Message.fromMap(update['edited_channel_post']));
    }
    if (update.containsKey('inline_query')) {
      handler.handleInlineQuery(InlineQuery.fromMap(update['inline_query']));
    }
    if (update.containsKey('chosen_inline_result')) {
      handler.handleChosenInlineRequest(
          ChosenInlineResult.fromMap(update['chosen_inline_result']));
    }
    if (update.containsKey('callback_query')) {
      handler
          .handleCallbackQuery(CallbackQuery.fromMap(update['callback_query']));
    }
    if (update.containsKey('shipping_query')) {
      handler
          .handleShippingQuery(ShippingQuery.fromMap(update['shipping_query']));
    }
    if (update.containsKey('pre_checkout_query')) {
      handler.handlePreCheckoutQuery(
          PreCheckoutQuery.fromMap(update['pre_checkout_query']));
    }
    if (update.containsKey('poll')) {
      handler.handlePoll(Poll.fromMap(update['poll']));
    }
    if (update.containsKey('poll_answer')) {
      handler.handlePollAnswer(PollAnswer.fromMap(update['poll_answer']));
    }
    if (update.containsKey('my_chat_member')) {
      handler.handleMyChatMember(
          ChatMemberUpdated.fromMap(update['my_chat_member']));
    }
    if (update.containsKey('chat_member')) {
      handler
          .handleChatMember(ChatMemberUpdated.fromMap(update['chat_member']));
    }
    if (update.containsKey('chat_join_request')) {
      handler.handleChatJoinRequest(
          ChatJoinRequest.fromMap(update['chat_join_request']));
    }
  }
}
