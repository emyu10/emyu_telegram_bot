part of '../../types.dart';

class Sticker extends BaseFile {
  final String type;
  final int width;
  final int height;
  final bool isAnimated;
  final bool isVideo;
  PhotoSize? thumb;
  String? emoji;
  String? setName;
  File? premiumAnimation;
  MaskPosition? maskPosition;
  String? customEmojiId;
  int? fileSize;

  Sticker({
    required super.fileId,
    required super.fileUniqueId,
    required this.type,
    required this.width,
    required this.height,
    required this.isAnimated,
    required this.isVideo,
    this.thumb,
    this.emoji,
    this.setName,
    this.premiumAnimation,
    this.maskPosition,
    this.customEmojiId,
    this.fileSize,
  });

  Sticker copyWith({
    String? type,
    int? width,
    int? height,
    bool? isAnimated,
    bool? isVideo,
    PhotoSize? thumb,
    String? emoji,
    String? setName,
    File? premiumAnimation,
    MaskPosition? maskPosition,
    String? customEmojiId,
    int? fileSize,
  }) {
    return Sticker(
      fileId: fileId,
      fileUniqueId: fileUniqueId,
      type: type ?? this.type,
      width: width ?? this.width,
      height: height ?? this.height,
      isAnimated: isAnimated ?? this.isAnimated,
      isVideo: isVideo ?? this.isVideo,
      thumb: thumb ?? this.thumb,
      emoji: emoji ?? this.emoji,
      setName: setName ?? this.setName,
      premiumAnimation: premiumAnimation ?? this.premiumAnimation,
      maskPosition: maskPosition ?? this.maskPosition,
      customEmojiId: customEmojiId ?? this.customEmojiId,
      fileSize: fileSize ?? this.fileSize,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'width': width,
      'height': height,
      'isAnimated': isAnimated,
      'isVideo': isVideo,
      'thumb': thumb?.toMap(),
      'emoji': emoji,
      'setName': setName,
      'premiumAnimation': premiumAnimation?.toMap(),
      'maskPosition': maskPosition?.toMap(),
      'customEmojiId': customEmojiId,
      'fileSize': fileSize,
    };
  }

  factory Sticker.fromMap(Map<String, dynamic> map) {
    return Sticker(
      fileId: map['fileId'],
      fileUniqueId: map['fileUniqueId'],
      type: map['type'] ?? '',
      width: map['width']?.toInt() ?? 0,
      height: map['height']?.toInt() ?? 0,
      isAnimated: map['isAnimated'] ?? false,
      isVideo: map['isVideo'] ?? false,
      thumb: map['thumb'] != null ? PhotoSize.fromMap(map['thumb']) : null,
      emoji: map['emoji'],
      setName: map['setName'],
      premiumAnimation: map['premiumAnimation'] != null
          ? File.fromMap(map['premiumAnimation'])
          : null,
      maskPosition: map['maskPosition'] != null
          ? MaskPosition.fromMap(map['maskPosition'])
          : null,
      customEmojiId: map['customEmojiId'],
      fileSize: map['fileSize']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Sticker.fromJson(String source) =>
      Sticker.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Sticker(type: $type, width: $width, height: $height, isAnimated: $isAnimated, isVideo: $isVideo, thumb: $thumb, emoji: $emoji, setName: $setName, premiumAnimation: $premiumAnimation, maskPosition: $maskPosition, customEmojiId: $customEmojiId, fileSize: $fileSize)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Sticker &&
        other.type == type &&
        other.width == width &&
        other.height == height &&
        other.isAnimated == isAnimated &&
        other.isVideo == isVideo &&
        other.thumb == thumb &&
        other.emoji == emoji &&
        other.setName == setName &&
        other.premiumAnimation == premiumAnimation &&
        other.maskPosition == maskPosition &&
        other.customEmojiId == customEmojiId &&
        other.fileSize == fileSize;
  }

  @override
  int get hashCode {
    return type.hashCode ^
        width.hashCode ^
        height.hashCode ^
        isAnimated.hashCode ^
        isVideo.hashCode ^
        thumb.hashCode ^
        emoji.hashCode ^
        setName.hashCode ^
        premiumAnimation.hashCode ^
        maskPosition.hashCode ^
        customEmojiId.hashCode ^
        fileSize.hashCode;
  }
}
