part of '../../types.dart';

class Video extends BaseFile {
  final int width;
  final int height;
  final int duration;
  PhotoSize? thumb;
  String? fileName;
  String? mimeType;
  int? fileSize;

  Video({
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

  Video copyWith({
    int? width,
    int? height,
    int? duration,
    PhotoSize? thumb,
    String? fileName,
    String? mimeType,
    int? fileSize,
  }) {
    return Video(
      fileId: fileId,
      fileUniqueId: fileUniqueId,
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

  factory Video.fromMap(Map<String, dynamic> map) {
    return Video(
      fileId: map['file_id'],
      fileUniqueId: map['file_unique_id'],
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

  factory Video.fromJson(String source) => Video.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Video(fileId: $fileId, fileUniqueId: $fileUniqueId, width: $width, height: $height, duration: $duration, thumb: $thumb, fileName: $fileName, mimeType: $mimeType, fileSize: $fileSize)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Video &&
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
