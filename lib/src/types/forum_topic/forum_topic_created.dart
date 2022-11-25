part of '../../types.dart';

class ForumTopicCreated {
  /// Name of the topic.
  final String name;

  /// Color of the topic icon in RGB format.
  final int iconColor;

  /// Unique identifier of the custom emoji shown as the topic icon.
  String? iconCustomEmojiId;

  ForumTopicCreated({
    required this.name,
    required this.iconColor,
    this.iconCustomEmojiId,
  });

  ForumTopicCreated copyWith({
    String? name,
    int? iconColor,
    String? iconCustomEmojiId,
  }) {
    return ForumTopicCreated(
      name: name ?? this.name,
      iconColor: iconColor ?? this.iconColor,
      iconCustomEmojiId: iconCustomEmojiId ?? this.iconCustomEmojiId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'icon_color': iconColor,
      'icon_custom_emoji_id': iconCustomEmojiId,
    };
  }

  factory ForumTopicCreated.fromMap(Map<String, dynamic> map) {
    return ForumTopicCreated(
      name: map['name'] ?? '',
      iconColor: map['icon_color']?.toInt() ?? 0,
      iconCustomEmojiId: map['icon_custom_emoji_id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ForumTopicCreated.fromJson(String source) =>
      ForumTopicCreated.fromMap(json.decode(source));

  @override
  String toString() =>
      'ForumTopicCreated(name: $name, iconColor: $iconColor, iconCustomEmojiId: $iconCustomEmojiId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ForumTopicCreated &&
        other.name == name &&
        other.iconColor == iconColor &&
        other.iconCustomEmojiId == iconCustomEmojiId;
  }

  @override
  int get hashCode =>
      name.hashCode ^ iconColor.hashCode ^ iconCustomEmojiId.hashCode;
}
