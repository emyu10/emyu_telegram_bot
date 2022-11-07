part of '../types.dart';

class MessageEntity {
  final String type;
  final int offset;
  final int length;
  String? url;
  User? user;
  String? language;
  String? customEmojiId;

  MessageEntity({
    required this.type,
    required this.offset,
    required this.length,
  });
}
