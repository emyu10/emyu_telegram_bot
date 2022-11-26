part of '../types.dart';

/// This object represents an incoming callback query from a callback button.
///
/// The query comes from an an inline keyboard. If the button that originated
/// the query was attached to a message sent by the bot, the field message
/// will be present. If the button was attached to a message sent via
/// the bot (in inline mode), the field inline_message_id will be present.
/// Exactly one of the fields data or game_short_name will be present.
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
    this.message,
    this.inlineMessageId,
    required this.chatInstance,
    this.data,
    this.gameShortName,
  });

  CallbackQuery copyWith({
    String? id,
    User? from,
    Message? message,
    String? inlineMessageId,
    String? chatInstance,
    String? data,
    String? gameShortName,
  }) {
    return CallbackQuery(
      id: id ?? this.id,
      from: from ?? this.from,
      message: message ?? this.message,
      inlineMessageId: inlineMessageId ?? this.inlineMessageId,
      chatInstance: chatInstance ?? this.chatInstance,
      data: data ?? this.data,
      gameShortName: gameShortName ?? this.gameShortName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'from': from.toMap(),
      'message': message?.toMap(),
      'inline_message_id': inlineMessageId,
      'chat_instance': chatInstance,
      'data': data,
      'game_short_name': gameShortName,
    };
  }

  factory CallbackQuery.fromMap(Map<String, dynamic> map) {
    return CallbackQuery(
      id: map['id'] ?? '',
      from: User.fromMap(map['from']),
      message: map['message'] != null ? Message.fromMap(map['message']) : null,
      inlineMessageId: map['inline_message_id'],
      chatInstance: map['chat_instance'] ?? '',
      data: map['data'],
      gameShortName: map['game_short_name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CallbackQuery.fromJson(String source) =>
      CallbackQuery.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CallbackQuery(id: $id, from: $from, message: $message, inlineMessageId: $inlineMessageId, chatInstance: $chatInstance, data: $data, gameShortName: $gameShortName)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CallbackQuery &&
        other.id == id &&
        other.from == from &&
        other.message == message &&
        other.inlineMessageId == inlineMessageId &&
        other.chatInstance == chatInstance &&
        other.data == data &&
        other.gameShortName == gameShortName;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        from.hashCode ^
        message.hashCode ^
        inlineMessageId.hashCode ^
        chatInstance.hashCode ^
        data.hashCode ^
        gameShortName.hashCode;
  }
}
