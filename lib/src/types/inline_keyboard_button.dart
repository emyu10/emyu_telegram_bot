part of '../types.dart';

class InlineKeyboardButton {
  final String text;
  String? url;
  String? callbackData;
  WebAppInfo? webApp;
  LoginUrl? loginUrl;
  String? switchInlineQuery;
  String? switchInlineQueryCurrentChat;
  CallbackGame? callbackGame;
  bool? pay;

  InlineKeyboardButton({required this.text});
}
