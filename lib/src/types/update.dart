part of '../types.dart';

class Update {
  final int id;

  /// If the update is a message of any type.
  Message? message;

  /// If the update is an edited message previously seen by the bot.
  Message? editedMessage;

  /// If the update is a post to a channel. If the bot is in the channel.
  Message? channelPost;

  Message? editedChannelPost;
  InlineQuery? inlineQuery;
  ChosenInlineResult? chosenInlineResult;
  CallbackQuery? callbackQuery;
  ShippingQuery? shippingQuery;
  PreCheckoutQuery? preCheckoutQuery;
  Poll? poll;
  PollAnswer? pollAnswer;
  ChatMemberUpdated? myChatMember;
  ChatMemberUpdated? chatMember;
  ChatJoinRequest? chatJoinRequest;
}
