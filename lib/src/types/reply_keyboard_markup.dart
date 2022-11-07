part of '../types.dart';

class ReplyKeyboardMarkup {
  final List<List<KeyboardButton>> keyboard;
  bool? resizeKeyboard;
  bool? oneTimeKeyboard;
  String? inputFieldPlaceholder;
  bool? selective;

  ReplyKeyboardMarkup({required this.keyboard});
}
