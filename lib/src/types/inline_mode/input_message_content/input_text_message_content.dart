part of '../../../types.dart';

class InputTextMessageContent extends InputMessageContent {
  final String messageText;
  String? parseMode;
  List<MessageEntity>? entities;
  bool? disableWebPagePreview;
  InputTextMessageContent({
    required this.messageText,
    this.parseMode,
    this.entities,
    this.disableWebPagePreview,
  });

  InputTextMessageContent copyWith({
    String? messageText,
    String? parseMode,
    List<MessageEntity>? entities,
    bool? disableWebPagePreview,
  }) {
    return InputTextMessageContent(
      messageText: messageText ?? this.messageText,
      parseMode: parseMode ?? this.parseMode,
      entities: entities ?? this.entities,
      disableWebPagePreview:
          disableWebPagePreview ?? this.disableWebPagePreview,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'messageText': messageText,
      'parseMode': parseMode,
      'entities': entities?.map((x) => x?.toMap())?.toList(),
      'disableWebPagePreview': disableWebPagePreview,
    };
  }

  factory InputTextMessageContent.fromMap(Map<String, dynamic> map) {
    return InputTextMessageContent(
      messageText: map['messageText'] ?? '',
      parseMode: map['parseMode'],
      entities: map['entities'] != null
          ? List<MessageEntity>.from(
              map['entities']?.map((x) => MessageEntity.fromMap(x)))
          : null,
      disableWebPagePreview: map['disableWebPagePreview'],
    );
  }

  String toJson() => json.encode(toMap());

  factory InputTextMessageContent.fromJson(String source) =>
      InputTextMessageContent.fromMap(json.decode(source));

  @override
  String toString() {
    return 'InputTextMessageContent(messageText: $messageText, parseMode: $parseMode, entities: $entities, disableWebPagePreview: $disableWebPagePreview)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is InputTextMessageContent &&
        other.messageText == messageText &&
        other.parseMode == parseMode &&
        listEquals(other.entities, entities) &&
        other.disableWebPagePreview == disableWebPagePreview;
  }

  @override
  int get hashCode {
    return messageText.hashCode ^
        parseMode.hashCode ^
        entities.hashCode ^
        disableWebPagePreview.hashCode;
  }
}
