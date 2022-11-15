part of '../../types.dart';

class VideoNote extends BaseFile {
  final int length;
  final int duration;
  PhotoSize? thumb;
  int? fileSize;

  VideoNote({
    required super.fileId,
    required super.fileUniqueId,
    required this.length,
    required this.duration,
    this.thumb,
    this.fileSize,
  });

  VideoNote copyWith({
    int? length,
    int? duration,
    PhotoSize? thumb,
    int? fileSize,
  }) {
    return VideoNote(
      fileId: fileId,
      fileUniqueId: fileUniqueId,
      length: length ?? this.length,
      duration: duration ?? this.duration,
      thumb: thumb ?? this.thumb,
      fileSize: fileSize ?? this.fileSize,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'length': length,
      'duration': duration,
      'thumb': thumb?.toMap(),
      'file_size': fileSize,
    };
  }

  factory VideoNote.fromMap(Map<String, dynamic> map) {
    return VideoNote(
      fileId: map['file_id'],
      fileUniqueId: map['file_unique_id'],
      length: map['length']?.toInt() ?? 0,
      duration: map['duration']?.toInt() ?? 0,
      thumb: map['thumb'] != null ? PhotoSize.fromMap(map['thumb']) : null,
      fileSize: map['file_size']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoNote.fromJson(String source) =>
      VideoNote.fromMap(json.decode(source));

  @override
  String toString() {
    return 'VideoNote(fileId: $fileId, fileUniqueId: $fileUniqueId, length: $length, duration: $duration, thumb: $thumb, fileSize: $fileSize)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VideoNote &&
        other.fileId == fileId &&
        other.fileUniqueId == fileUniqueId &&
        other.length == length &&
        other.duration == duration &&
        other.thumb == thumb &&
        other.fileSize == fileSize;
  }

  @override
  int get hashCode {
    return fileId.hashCode ^
        fileUniqueId.hashCode ^
        length.hashCode ^
        duration.hashCode ^
        thumb.hashCode ^
        fileSize.hashCode;
  }
}
