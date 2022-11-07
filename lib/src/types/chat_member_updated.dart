part of '../types.dart';

class ChatMemberUpdated {
  final Chat chat;
  final User from;
  final int date;
  final ChatMember oldChatMember;
  final ChatMember newChatMember;
  ChatInviteLink? inviteLink;

  ChatMemberUpdated({
    required this.chat,
    required this.from,
    required this.date,
    required this.oldChatMember,
    required this.newChatMember,
  });
}
