part of '../types.dart';

/// Upon receiving a message with this object, Telegram clients will remove
/// the current custom keyboard and display the default letter-keyboard.
///
/// By default, custom keyboards are displayed until a new keyboard
/// is sent by a bot. An exception is made for one-time keyboards that
/// are hidden immediately after the user presses a button.
class ReplyKeyboardRemove extends ReplyMarkup {
  /// Requests clients to remove the custom keyboard.
  ///
  /// User will not be able to summon this keyboard.
  /// If you want to hide the keyboard from sight but keep it accessible,
  /// use one_time_keyboard in [ReplyKeyboardMarkup].
  final bool removeKeyboard = true;

  /// Use this parameter if you want to remove the keyboard for specific users only.
  ///
  /// Targets:
  /// 1. Users that are @mentioned in the text of the Message object
  /// 2. If the bot's message is a reply (has reply_to_message_id),
  ///   sender of the original message.
  ///
  /// Example: A user votes in a poll, bot returns confirmation message
  /// in reply to the vote and removes the keyboard for that user,
  /// while still showing the keyboard with poll options to users who haven't
  /// voted yet.
  bool? selective;

  ReplyKeyboardRemove({
    this.selective,
  });

  ReplyKeyboardRemove copyWith({
    bool? selective,
  }) {
    return ReplyKeyboardRemove(
      selective: selective ?? this.selective,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'remove_keyboard': removeKeyboard,
      'selective': selective,
    };
  }

  factory ReplyKeyboardRemove.fromMap(Map<String, dynamic> map) {
    return ReplyKeyboardRemove(
      selective: map['selective'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ReplyKeyboardRemove.fromJson(String source) =>
      ReplyKeyboardRemove.fromMap(json.decode(source));

  @override
  String toString() => 'ReplyKeyboardRemove(selective: $selective)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ReplyKeyboardRemove && other.selective == selective;
  }

  @override
  int get hashCode => selective.hashCode;
}
