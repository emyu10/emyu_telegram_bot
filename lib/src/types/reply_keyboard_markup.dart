part of '../types.dart';

/// This object represents a custom keyboard with reply options.
class ReplyKeyboardMarkup extends ReplyMarkup {
  /// Array of button rows.
  ///
  /// Each represented by an Array of [KeyboardButton] objects.
  final List<List<KeyboardButton>> keyboard;

  /// Requests clients to resize the keyboard vertically for optimal fit.
  ///
  /// Example: make the keyboard smaller if there are just two rows of buttons.
  /// Defaults to false, in which case the custom keyboard is always of
  /// the same height as the app's standard keyboard.
  bool resizeKeyboard = false;

  /// Requests clients to hide the keyboard as soon as it's been used.
  ///
  /// The keyboard will still be available, but clients will automatically
  /// display the usual letter-keyboard in the chat - the user can press
  /// a special button in the input field to see the custom keyboard again.
  bool oneTimeKeyboard = false;

  /// The placeholder to be shown when the keyboard is active.
  ///
  /// 1-64 characters.
  String? inputFieldPlaceholder;

  /// Show the keyboard to specific users only.
  ///
  /// Targets:
  /// 1. Users that are @mentioned in the text of the Message object.
  /// 2. If the bot's message is a reply (has reply_to_message_id),
  ///   sender of the original message.
  ///
  /// Example: A user requests to change the bot's language,
  /// bot replies to the request with a keyboard to select the new language.
  /// Other users in the group don't see the keyboard.
  bool? selective;

  ReplyKeyboardMarkup({
    required this.keyboard,
    required this.resizeKeyboard,
    required this.oneTimeKeyboard,
    this.inputFieldPlaceholder,
    this.selective,
  });

  ReplyKeyboardMarkup copyWith({
    List<List<KeyboardButton>>? keyboard,
    bool? resizeKeyboard,
    bool? oneTimeKeyboard,
    String? inputFieldPlaceholder,
    bool? selective,
  }) {
    return ReplyKeyboardMarkup(
      keyboard: keyboard ?? this.keyboard,
      resizeKeyboard: resizeKeyboard ?? this.resizeKeyboard,
      oneTimeKeyboard: oneTimeKeyboard ?? this.oneTimeKeyboard,
      inputFieldPlaceholder:
          inputFieldPlaceholder ?? this.inputFieldPlaceholder,
      selective: selective ?? this.selective,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'keyboard': keyboard.map((x) => x.map((y) => y.toMap())).toList(),
      'resize_keyboard': resizeKeyboard,
      'one_time_keyboard': oneTimeKeyboard,
      'input_field_placeholder': inputFieldPlaceholder,
      'selective': selective,
    };
  }

  factory ReplyKeyboardMarkup.fromMap(Map<String, dynamic> map) {
    return ReplyKeyboardMarkup(
      keyboard: List<List<KeyboardButton>>.from(
          map['keyboard']?.map((x) => List<KeyboardButton>.from(x))),
      resizeKeyboard: map['resize_keyboard'] ?? false,
      oneTimeKeyboard: map['one_time_keyboard'] ?? false,
      inputFieldPlaceholder: map['input_field_placeholder'],
      selective: map['selective'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ReplyKeyboardMarkup.fromJson(String source) =>
      ReplyKeyboardMarkup.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ReplyKeyboardMarkup(keyboard: $keyboard, resizeKeyboard: $resizeKeyboard, oneTimeKeyboard: $oneTimeKeyboard, inputFieldPlaceholder: $inputFieldPlaceholder, selective: $selective)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is ReplyKeyboardMarkup &&
        listEquals(other.keyboard, keyboard) &&
        other.resizeKeyboard == resizeKeyboard &&
        other.oneTimeKeyboard == oneTimeKeyboard &&
        other.inputFieldPlaceholder == inputFieldPlaceholder &&
        other.selective == selective;
  }

  @override
  int get hashCode {
    return keyboard.hashCode ^
        resizeKeyboard.hashCode ^
        oneTimeKeyboard.hashCode ^
        inputFieldPlaceholder.hashCode ^
        selective.hashCode;
  }
}
