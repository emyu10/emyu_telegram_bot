part of '../types.dart';

/// This object represents a chat photo.
class ChatPhoto {
  /// File identifier of small (160x160) chat photo.
  ///
  /// This file_id can be used only for photo download and only for
  /// as long as the photo is not changed.
  final String smallFileId;

  /// Unique file identifier of small (160x160) chat photo.
  ///
  /// Which is supposed to be the same over time and for different bots.
  /// Can't be used to download or reuse the file.
  final String smallFileUniqueId;

  /// File identifier of big (640x640) chat photo.
  /// This file_id can be used only for photo download and only for
  /// as long as the photo is not changed.
  final String bigFileId;

  /// Unique file identifier of big (640x640) chat photo.
  ///
  /// Which is supposed to be the same over time and for different bots.
  /// Can't be used to download or reuse the file.
  final String bigFileUniqueId;

  ChatPhoto({
    required this.smallFileId,
    required this.smallFileUniqueId,
    required this.bigFileId,
    required this.bigFileUniqueId,
  });

  ChatPhoto copyWith({
    String? smallFileId,
    String? smallFileUniqueId,
    String? bigFileId,
    String? bigFileUniqueId,
  }) {
    return ChatPhoto(
      smallFileId: smallFileId ?? this.smallFileId,
      smallFileUniqueId: smallFileUniqueId ?? this.smallFileUniqueId,
      bigFileId: bigFileId ?? this.bigFileId,
      bigFileUniqueId: bigFileUniqueId ?? this.bigFileUniqueId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'small_file_id': smallFileId,
      'small_file_unique_id': smallFileUniqueId,
      'big_file_id': bigFileId,
      'big_file_unique_id': bigFileUniqueId,
    };
  }

  factory ChatPhoto.fromMap(Map<String, dynamic> map) {
    return ChatPhoto(
      smallFileId: map['small_file_id'] ?? '',
      smallFileUniqueId: map['small_file_unique_id'] ?? '',
      bigFileId: map['big_file_id'] ?? '',
      bigFileUniqueId: map['big_file_unique_id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatPhoto.fromJson(String source) =>
      ChatPhoto.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ChatPhoto(smallFileId: $smallFileId, smallFileUniqueId: $smallFileUniqueId, bigFileId: $bigFileId, bigFileUniqueId: $bigFileUniqueId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatPhoto &&
        other.smallFileId == smallFileId &&
        other.smallFileUniqueId == smallFileUniqueId &&
        other.bigFileId == bigFileId &&
        other.bigFileUniqueId == bigFileUniqueId;
  }

  @override
  int get hashCode {
    return smallFileId.hashCode ^
        smallFileUniqueId.hashCode ^
        bigFileId.hashCode ^
        bigFileUniqueId.hashCode;
  }
}
