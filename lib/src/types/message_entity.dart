part of '../types.dart';

class MessageEntity {
  final String type;
  final int offset;
  final int length;
  String? url;
  User? user;
  String? language;
  String? customEmojiId;

  MessageEntity({
    required this.type,
    required this.offset,
    required this.length,
    this.url,
    this.user,
    this.language,
    this.customEmojiId,
  });

  MessageEntity copyWith({
    String? type,
    int? offset,
    int? length,
    String? url,
    User? user,
    String? language,
    String? customEmojiId,
  }) {
    return MessageEntity(
      type: type ?? this.type,
      offset: offset ?? this.offset,
      length: length ?? this.length,
      url: url ?? this.url,
      user: user ?? this.user,
      language: language ?? this.language,
      customEmojiId: customEmojiId ?? this.customEmojiId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'offset': offset,
      'length': length,
      'url': url,
      'user': user?.toMap(),
      'language': language,
      'customEmojiId': customEmojiId,
    };
  }

  factory MessageEntity.fromMap(Map<String, dynamic> map) {
    return MessageEntity(
      type: map['type'] ?? '',
      offset: map['offset']?.toInt() ?? 0,
      length: map['length']?.toInt() ?? 0,
      url: map['url'],
      user: map['user'] != null ? User.fromMap(map['user']) : null,
      language: map['language'],
      customEmojiId: map['customEmojiId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MessageEntity.fromJson(String source) =>
      MessageEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MessageEntity(type: $type, offset: $offset, length: $length, url: $url, user: $user, language: $language, customEmojiId: $customEmojiId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MessageEntity &&
        other.type == type &&
        other.offset == offset &&
        other.length == length &&
        other.url == url &&
        other.user == user &&
        other.language == language &&
        other.customEmojiId == customEmojiId;
  }

  @override
  int get hashCode {
    return type.hashCode ^
        offset.hashCode ^
        length.hashCode ^
        url.hashCode ^
        user.hashCode ^
        language.hashCode ^
        customEmojiId.hashCode;
  }
}
