part of '../../types.dart';

class Document extends BaseFile {
  PhotoSize? thumb;
  String? fileName;
  String? mimeType;
  int? fileSize;

  Document({
    required super.fileId,
    required super.fileUniqueId,
    this.thumb,
    this.fileName,
    this.mimeType,
    this.fileSize,
  });

  Document copyWith({
    String? fileId,
    String? fileUniqueId,
    PhotoSize? thumb,
    String? fileName,
    String? mimeType,
    int? fileSize,
  }) {
    return Document(
      fileId: fileId ?? this.fileId,
      fileUniqueId: fileUniqueId ?? this.fileUniqueId,
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
      'thumb': thumb?.toMap(),
      'fileName': fileName,
      'mimeType': mimeType,
      'fileSize': fileSize,
    };
  }

  factory Document.fromMap(Map<String, dynamic> map) {
    return Document(
      fileId: map['fileId'] ?? '',
      fileUniqueId: map['fileUniqueId'] ?? '',
      thumb: map['thumb'] != null ? PhotoSize.fromMap(map['thumb']) : null,
      fileName: map['fileName'],
      mimeType: map['mimeType'],
      fileSize: map['fileSize']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Document.fromJson(String source) =>
      Document.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Document(fileId: $fileId, fileUniqueId: $fileUniqueId, thumb: $thumb, fileName: $fileName, mimeType: $mimeType, fileSize: $fileSize)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Document &&
        other.fileId == fileId &&
        other.fileUniqueId == fileUniqueId &&
        other.thumb == thumb &&
        other.fileName == fileName &&
        other.mimeType == mimeType &&
        other.fileSize == fileSize;
  }

  @override
  int get hashCode {
    return fileId.hashCode ^
        fileUniqueId.hashCode ^
        thumb.hashCode ^
        fileName.hashCode ^
        mimeType.hashCode ^
        fileSize.hashCode;
  }
}
