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
      'duration': duration,
      'performer': performer,
      'title': title,
      'fileName': fileName,
      'mimeType': mimeType,
      'fileSize': fileSize,
      'thumb': thumb?.toMap(),
    };
  }

  factory Audio.fromMap(Map<String, dynamic> map) {
    return Audio(
      fileId: map['fileId'],
      fileUniqueId: map['fileUniqueId'],
      duration: map['duration']?.toInt() ?? 0,
      performer: map['performer'],
      title: map['title'],
      fileName: map['fileName'],
      mimeType: map['mimeType'],
      fileSize: map['fileSize']?.toInt(),
      thumb: map['thumb'] != null ? PhotoSize.fromMap(map['thumb']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Audio.fromJson(String source) => Audio.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Audio(duration: $duration, performer: $performer, title: $title, fileName: $fileName, mimeType: $mimeType, fileSize: $fileSize, thumb: $thumb)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Audio &&
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
    return duration.hashCode ^
        performer.hashCode ^
        title.hashCode ^
        fileName.hashCode ^
        mimeType.hashCode ^
        fileSize.hashCode ^
        thumb.hashCode;
  }
}
