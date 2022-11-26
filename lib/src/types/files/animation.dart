part of '../../types.dart';

/// This object represents an animation file.
///
/// (GIF or H.264/MPEG-4 AVC video without sound).
class Animation extends BaseFile {
  /// Video width as defined by sender.
  final int width;

  /// Video height as defined by sender.
  final int height;

  /// Duration of the video in seconds as defined by sender.
  final int duration;

  /// Animation thumbnail as defined by sender.
  PhotoSize? thumb;

  /// Original animation filename as defined by sender.
  String? fileName;

  /// MIME type of the file as defined by sender.
  String? mimeType;

  /// File size in bytes.
  ///
  /// It has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this value.
  int? fileSize;

  Animation({
    required super.fileId,
    required super.fileUniqueId,
    required this.width,
    required this.height,
    required this.duration,
    this.thumb,
    this.fileName,
    this.mimeType,
    this.fileSize,
  });

  Animation copyWith({
    String? fileId,
    String? fileUniqueId,
    int? width,
    int? height,
    int? duration,
    PhotoSize? thumb,
    String? fileName,
    String? mimeType,
    int? fileSize,
  }) {
    return Animation(
      fileId: fileId ?? this.fileId,
      fileUniqueId: fileUniqueId ?? this.fileUniqueId,
      width: width ?? this.width,
      height: height ?? this.height,
      duration: duration ?? this.duration,
      thumb: thumb ?? this.thumb,
      fileName: fileName ?? this.fileName,
      mimeType: mimeType ?? this.mimeType,
      fileSize: fileSize ?? this.fileSize,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'width': width,
      'height': height,
      'duration': duration,
      'thumb': thumb?.toMap(),
      'file_name': fileName,
      'mime_type': mimeType,
      'file_size': fileSize,
    };
  }

  factory Animation.fromMap(Map<String, dynamic> map) {
    return Animation(
      fileId: map['file_id'] ?? '',
      fileUniqueId: map['file_unique_id'] ?? '',
      width: map['width']?.toInt() ?? 0,
      height: map['height']?.toInt() ?? 0,
      duration: map['duration']?.toInt() ?? 0,
      thumb: map['thumb'] != null ? PhotoSize.fromMap(map['thumb']) : null,
      fileName: map['file_name'],
      mimeType: map['mime_type'],
      fileSize: map['file_size']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Animation.fromJson(String source) =>
      Animation.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Animation(fileId: $fileId, fileUniqueId: $fileUniqueId, width: $width, height: $height, duration: $duration, thumb: $thumb, fileName: $fileName, mimeType: $mimeType, fileSize: $fileSize)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Animation &&
        other.fileId == fileId &&
        other.fileUniqueId == fileUniqueId &&
        other.width == width &&
        other.height == height &&
        other.duration == duration &&
        other.thumb == thumb &&
        other.fileName == fileName &&
        other.mimeType == mimeType &&
        other.fileSize == fileSize;
  }

  @override
  int get hashCode {
    return fileId.hashCode ^
        fileUniqueId.hashCode ^
        width.hashCode ^
        height.hashCode ^
        duration.hashCode ^
        thumb.hashCode ^
        fileName.hashCode ^
        mimeType.hashCode ^
        fileSize.hashCode;
  }
}
