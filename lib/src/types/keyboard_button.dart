part of '../types.dart';

class KeyboardButton {
  final String text;
  bool? requestContact;
  bool? requestLocation;
  KeyboardButtonPollType? requestPoll;
  WebAppInfo? webAppInfo;

  KeyboardButton({required this.text});
}
