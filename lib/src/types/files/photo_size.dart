part of '../../types.dart';

class PhotoSize extends BaseFile {
  final int width;
  final int height;
  int? fileSize;

  PhotoSize({
    required super.fileId,
    required super.fileUniqueId,
    required this.width,
    required this.height,
    this.fileSize,
  });

  PhotoSize copyWith({
    String? fileId,
    String? fileUniqueId,
    int? width,
    int? height,
    int? fileSize,
  }) {
    return PhotoSize(
      fileId: fileId ?? this.fileId,
      fileUniqueId: fileUniqueId ?? this.fileUniqueId,
      width: width ?? this.width,
      height: height ?? this.height,
      fileSize: fileSize ?? this.fileSize,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'width': width,
      'height': height,
      'file_size': fileSize,
    };
  }

  factory PhotoSize.fromMap(Map<String, dynamic> map) {
    return PhotoSize(
      fileId: map['file_id'] ?? '',
      fileUniqueId: map['file_unique_id'] ?? '',
      width: map['width']?.toInt() ?? 0,
      height: map['height']?.toInt() ?? 0,
      fileSize: map['file_size']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory PhotoSize.fromJson(String source) =>
      PhotoSize.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PhotoSize(fileId: $fileId, fileUniqueId: $fileUniqueId, width: $width, height: $height, fileSize: $fileSize)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PhotoSize &&
        other.fileId == fileId &&
        other.fileUniqueId == fileUniqueId &&
        other.width == width &&
        other.height == height &&
        other.fileSize == fileSize;
  }

  @override
  int get hashCode {
    return fileId.hashCode ^
        fileUniqueId.hashCode ^
        width.hashCode ^
        height.hashCode ^
        fileSize.hashCode;
  }
}
