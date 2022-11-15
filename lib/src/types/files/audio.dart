part of '../../types.dart';

class Audio extends BaseFile {
  final int duration;
  String? performer;
  String? title;
  String? fileName;
  String? mimeType;
  int? fileSize;
  PhotoSize? thumb;

  Audio({
    required super.fileId,
    required super.fileUniqueId,
    required this.duration,
    this.performer,
    this.title,
    this.fileName,
    this.mimeType,
    this.fileSize,
    this.thumb,
  });

  Audio copyWith({
    int? duration,
    String? performer,
    String? title,
    String? fileName,
    String? mimeType,
    int? fileSize,
    PhotoSize? thumb,
  }) {
    return Audio(
      fileId: fileId,
      fileUniqueId: fileUniqueId,
      duration: duration ?? this.duration,
      performer: performer ?? this.performer,
      title: title ?? this.title,
      fileName: fileName ?? this.fileName,
      mimeType: mimeType ?? this.mimeType,
      fileSize: fileSize ?? this.fileSize,
      thumb: thumb ?? this.thumb,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'duration': duration,
      'performer': performer,
      'title': title,
      'file_name': fileName,
      'mime_type': mimeType,
      'file_size': fileSize,
      'thumb': thumb?.toMap(),
    };
  }

  factory Audio.fromMap(Map<String, dynamic> map) {
    return Audio(
      fileId: map['file_id'],
      fileUniqueId: map['file_unique_id'],
      duration: map['duration']?.toInt() ?? 0,
      performer: map['performer'],
      title: map['title'],
      fileName: map['file_name'],
      mimeType: map['mime_type'],
      fileSize: map['file_size']?.toInt(),
      thumb: map['thumb'] != null ? PhotoSize.fromMap(map['thumb']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Audio.fromJson(String source) => Audio.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Audio(fileId: $fileId, fileUniqueId: $fileUniqueId, duration: $duration, performer: $performer, title: $title, fileName: $fileName, mimeType: $mimeType, fileSize: $fileSize, thumb: $thumb)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Audio &&
        other.fileId == fileId &&
        other.fileUniqueId == fileUniqueId &&
        other.duration == duration &&
        other.performer == performer &&
        other.title == title &&
        other.fileName == fileName &&
        other.mimeType == mimeType &&
        other.fileSize == fileSize &&
        other.thumb == thumb;
  }

  @override
  int get hashCode {
    return fileId.hashCode ^
        fileUniqueId.hashCode ^
        duration.hashCode ^
        performer.hashCode ^
        title.hashCode ^
        fileName.hashCode ^
        mimeType.hashCode ^
        fileSize.hashCode ^
        thumb.hashCode;
  }
}
