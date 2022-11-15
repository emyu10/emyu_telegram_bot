part of '../types.dart';

class Update {
  /// The update's unique identifier.
  ///
  /// Update identifiers start from a certain positive number
  /// and increase sequentially. This ID becomes especially handy
  /// if you're using webhooks, since it allows you to ignore repeated
  /// updates or to restore the correct update sequence, should they get
  /// out of order. If there are no new updates for at least a week,
  /// then identifier of the next update will be chosen randomly
  /// instead of sequentially.
  final int updateId;

  /// New incoming message of any kind.
  ///
  /// text, photo, sticker, etc.
  Message? message;

  /// New version of a message that is known to the bot and was edited.
  Message? editedMessage;

  /// New incoming channel post of any kind - text, photo, sticker, etc.
  Message? channelPost;

  /// New version of a channel post that is known to the bot and was edited.
  Message? editedChannelPost;

  /// New incoming inline query.
  InlineQuery? inlineQuery;

  /// The result of an inline query that was chosen by a user.
  ///
  /// And sent to their chat partner.
  ChosenInlineResult? chosenInlineResult;

  /// New incoming callback query.
  CallbackQuery? callbackQuery;

  /// New incoming shipping query. Only for invoices with flexible price.
  ShippingQuery? shippingQuery;

  /// New incoming pre-checkout query.
  ///
  /// Contains full information about checkout.
  PreCheckoutQuery? preCheckoutQuery;

  /// New poll state.
  ///
  /// Bots receive only updates about stopped polls
  /// and polls which are sent by the bot.
  Poll? poll;

  /// A user changed their answer in a non-anonymous poll.
  ///
  /// Bots receive new votes only in polls that were sent by the bot itself.
  PollAnswer? pollAnswer;

  /// The bot's chat member status was updated in a chat.
  ///
  /// For private chats, this update is received only when
  /// the bot is blocked or unblocked by the user.
  ChatMemberUpdated? myChatMember;

  /// A chat member's status was updated in a chat.
  ///
  /// The bot must be an administrator in the chat and must explicitly specify
  /// “chat_member” in the list of allowed_updates to receive these updates.
  ChatMemberUpdated? chatMember;

  /// A request to join the chat has been sent.
  ///
  /// The bot must have the can_invite_users administrator right in the chat
  /// to receive these updates.
  ChatJoinRequest? chatJoinRequest;

  Update({
    required this.updateId,
    this.message,
    this.editedMessage,
    this.channelPost,
    this.editedChannelPost,
    this.inlineQuery,
    this.chosenInlineResult,
    this.callbackQuery,
    this.shippingQuery,
    this.preCheckoutQuery,
    this.poll,
    this.pollAnswer,
    this.myChatMember,
    this.chatMember,
    this.chatJoinRequest,
  });

  Update copyWith({
    int? updateId,
    Message? message,
    Message? editedMessage,
    Message? channelPost,
    Message? editedChannelPost,
    InlineQuery? inlineQuery,
    ChosenInlineResult? chosenInlineResult,
    CallbackQuery? callbackQuery,
    ShippingQuery? shippingQuery,
    PreCheckoutQuery? preCheckoutQuery,
    Poll? poll,
    PollAnswer? pollAnswer,
    ChatMemberUpdated? myChatMember,
    ChatMemberUpdated? chatMember,
    ChatJoinRequest? chatJoinRequest,
  }) {
    return Update(
      updateId: updateId ?? this.updateId,
      message: message ?? this.message,
      editedMessage: editedMessage ?? this.editedMessage,
      channelPost: channelPost ?? this.channelPost,
      editedChannelPost: editedChannelPost ?? this.editedChannelPost,
      inlineQuery: inlineQuery ?? this.inlineQuery,
      chosenInlineResult: chosenInlineResult ?? this.chosenInlineResult,
      callbackQuery: callbackQuery ?? this.callbackQuery,
      shippingQuery: shippingQuery ?? this.shippingQuery,
      preCheckoutQuery: preCheckoutQuery ?? this.preCheckoutQuery,
      poll: poll ?? this.poll,
      pollAnswer: pollAnswer ?? this.pollAnswer,
      myChatMember: myChatMember ?? this.myChatMember,
      chatMember: chatMember ?? this.chatMember,
      chatJoinRequest: chatJoinRequest ?? this.chatJoinRequest,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'updateId': updateId,
      'message': message?.toMap(),
      'editedMessage': editedMessage?.toMap(),
      'channelPost': channelPost?.toMap(),
      'editedChannelPost': editedChannelPost?.toMap(),
      'inlineQuery': inlineQuery?.toMap(),
      'chosenInlineResult': chosenInlineResult?.toMap(),
      'callbackQuery': callbackQuery?.toMap(),
      'shippingQuery': shippingQuery?.toMap(),
      'preCheckoutQuery': preCheckoutQuery?.toMap(),
      'poll': poll?.toMap(),
      'pollAnswer': pollAnswer?.toMap(),
      'myChatMember': myChatMember?.toMap(),
      'chatMember': chatMember?.toMap(),
      'chatJoinRequest': chatJoinRequest?.toMap(),
    };
  }

  factory Update.fromMap(Map<String, dynamic> map) {
    return Update(
      updateId: map['updateId']?.toInt() ?? 0,
      message: map['message'] != null ? Message.fromMap(map['message']) : null,
      editedMessage: map['editedMessage'] != null
          ? Message.fromMap(map['editedMessage'])
          : null,
      channelPost: map['channelPost'] != null
          ? Message.fromMap(map['channelPost'])
          : null,
      editedChannelPost: map['editedChannelPost'] != null
          ? Message.fromMap(map['editedChannelPost'])
          : null,
      inlineQuery: map['inlineQuery'] != null
          ? InlineQuery.fromMap(map['inlineQuery'])
          : null,
      chosenInlineResult: map['chosenInlineResult'] != null
          ? ChosenInlineResult.fromMap(map['chosenInlineResult'])
          : null,
      callbackQuery: map['callbackQuery'] != null
          ? CallbackQuery.fromMap(map['callbackQuery'])
          : null,
      shippingQuery: map['shippingQuery'] != null
          ? ShippingQuery.fromMap(map['shippingQuery'])
          : null,
      preCheckoutQuery: map['preCheckoutQuery'] != null
          ? PreCheckoutQuery.fromMap(map['preCheckoutQuery'])
          : null,
      poll: map['poll'] != null ? Poll.fromMap(map['poll']) : null,
      pollAnswer: map['pollAnswer'] != null
          ? PollAnswer.fromMap(map['pollAnswer'])
          : null,
      myChatMember: map['myChatMember'] != null
          ? ChatMemberUpdated.fromMap(map['myChatMember'])
          : null,
      chatMember: map['chatMember'] != null
          ? ChatMemberUpdated.fromMap(map['chatMember'])
          : null,
      chatJoinRequest: map['chatJoinRequest'] != null
          ? ChatJoinRequest.fromMap(map['chatJoinRequest'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Update.fromJson(String source) => Update.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Update(updateId: $updateId, message: $message, editedMessage: $editedMessage, channelPost: $channelPost, editedChannelPost: $editedChannelPost, inlineQuery: $inlineQuery, chosenInlineResult: $chosenInlineResult, callbackQuery: $callbackQuery, shippingQuery: $shippingQuery, preCheckoutQuery: $preCheckoutQuery, poll: $poll, pollAnswer: $pollAnswer, myChatMember: $myChatMember, chatMember: $chatMember, chatJoinRequest: $chatJoinRequest)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Update &&
        other.updateId == updateId &&
        other.message == message &&
        other.editedMessage == editedMessage &&
        other.channelPost == channelPost &&
        other.editedChannelPost == editedChannelPost &&
        other.inlineQuery == inlineQuery &&
        other.chosenInlineResult == chosenInlineResult &&
        other.callbackQuery == callbackQuery &&
        other.shippingQuery == shippingQuery &&
        other.preCheckoutQuery == preCheckoutQuery &&
        other.poll == poll &&
        other.pollAnswer == pollAnswer &&
        other.myChatMember == myChatMember &&
        other.chatMember == chatMember &&
        other.chatJoinRequest == chatJoinRequest;
  }

  @override
  int get hashCode {
    return updateId.hashCode ^
        message.hashCode ^
        editedMessage.hashCode ^
        channelPost.hashCode ^
        editedChannelPost.hashCode ^
        inlineQuery.hashCode ^
        chosenInlineResult.hashCode ^
        callbackQuery.hashCode ^
        shippingQuery.hashCode ^
        preCheckoutQuery.hashCode ^
        poll.hashCode ^
        pollAnswer.hashCode ^
        myChatMember.hashCode ^
        chatMember.hashCode ^
        chatJoinRequest.hashCode;
  }
}
