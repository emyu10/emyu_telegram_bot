part of '../../types.dart';

class Animation extends BaseFile {
  final int width;
  final int height;
  final int duration;
  PhotoSize? thumb;
  String? fileName;
  String? mimeType;
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
      'fileId': fileId,
      'fileUniqueId': fileUniqueId,
      'width': width,
      'height': height,
      'duration': duration,
      'thumb': thumb?.toMap(),
      'fileName': fileName,
      'mimeType': mimeType,
      'fileSize': fileSize,
    };
  }

  factory Animation.fromMap(Map<String, dynamic> map) {
    return Animation(
      fileId: map['fileId'] ?? '',
      fileUniqueId: map['fileUniqueId'] ?? '',
      width: map['width']?.toInt() ?? 0,
      height: map['height']?.toInt() ?? 0,
      duration: map['duration']?.toInt() ?? 0,
      thumb: map['thumb'] != null ? PhotoSize.fromMap(map['thumb']) : null,
      fileName: map['fileName'],
      mimeType: map['mimeType'],
      fileSize: map['fileSize']?.toInt(),
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
