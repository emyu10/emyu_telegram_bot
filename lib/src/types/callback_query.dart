part of '../types.dart';

class CallbackQuery {
  final String id;
  final User from;
  Message? message;
  String? inlineMessageId;
  final String chatInstance;
  String? data;
  String? gameShortName;

  CallbackQuery({
    required this.id,
    required this.from,
    required this.chatInstance,
  });
}
