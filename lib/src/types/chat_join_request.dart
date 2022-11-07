part of '../types.dart';

class ChatJoinRequest {
  final Chat chat;
  final User from;
  final int date;
  String? bio;
  ChatInviteLink? inviteLink;

  ChatJoinRequest({
    required this.chat,
    required this.from,
    required this.date,
  });
}
