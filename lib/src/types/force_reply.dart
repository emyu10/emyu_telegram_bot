part of '../types.dart';

/// Upon receiving a message with this object, Telegram clients will display
/// a reply interface to the user (act as if the user has selected
/// the bot's message and tapped 'Reply').
///
/// This can be extremely useful if you want to create user-friendly
/// step-by-step interfaces without having to sacrifice privacy mode.
class ForceReply extends ReplyMarkup {
  /// Shows reply interface to the user, as if they manually selected
  /// the bot's message and tapped 'Reply'.
  final bool forceReply = true;

  /// The placeholder to be shown in the input field when the reply is active.
  ///
  /// 1-64 characters.
  String? inputFieldPlaceholder;

  /// Use this parameter if you want to force reply from specific users only.
  ///
  /// Targets:
  /// 1. Users that are @mentioned in the text of the Message object
  /// 2. If the bot's message is a reply (has reply_to_message_id),
  ///     sender of the original message.
  bool? selective;

  ForceReply({
    this.inputFieldPlaceholder,
    this.selective,
  });

  ForceReply copyWith({
    String? inputFieldPlaceholder,
    bool? selective,
  }) {
    return ForceReply(
      inputFieldPlaceholder:
          inputFieldPlaceholder ?? this.inputFieldPlaceholder,
      selective: selective ?? this.selective,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'force_reply': forceReply,
      'input_field_placeholder': inputFieldPlaceholder,
      'selective': selective,
    };
  }

  factory ForceReply.fromMap(Map<String, dynamic> map) {
    return ForceReply(
      inputFieldPlaceholder: map['input_field_placeholder'],
      selective: map['selective'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ForceReply.fromJson(String source) =>
      ForceReply.fromMap(json.decode(source));

  @override
  String toString() =>
      'ForceReply(inputFieldPlaceholder: $inputFieldPlaceholder, selective: $selective)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ForceReply &&
        other.inputFieldPlaceholder == inputFieldPlaceholder &&
        other.selective == selective;
  }

  @override
  int get hashCode => inputFieldPlaceholder.hashCode ^ selective.hashCode;
}
