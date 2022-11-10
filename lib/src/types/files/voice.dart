part of '../../types.dart';

class Voice extends BaseFile {
  final int duration;
  String? mimeType;
  int? fileSize;

  Voice({
    required super.fileId,
    required super.fileUniqueId,
    required this.duration,
    this.mimeType,
    this.fileSize,
  });

  Voice copyWith({
    int? duration,
    String? mimeType,
    int? fileSize,
  }) {
    return Voice(
      fileId: fileId,
      fileUniqueId: fileUniqueId,
      duration: duration ?? this.duration,
      mimeType: mimeType ?? this.mimeType,
      fileSize: fileSize ?? this.fileSize,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'duration': duration,
      'mimeType': mimeType,
      'fileSize': fileSize,
    };
  }

  factory Voice.fromMap(Map<String, dynamic> map) {
    return Voice(
      fileId: map['fileId'],
      fileUniqueId: map['fileUniqueId'],
      duration: map['duration']?.toInt() ?? 0,
      mimeType: map['mimeType'],
      fileSize: map['fileSize']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Voice.fromJson(String source) => Voice.fromMap(json.decode(source));

  @override
  String toString() =>
      'Voice(duration: $duration, mimeType: $mimeType, fileSize: $fileSize)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Voice &&
        other.duration == duration &&
        other.mimeType == mimeType &&
        other.fileSize == fileSize;
  }

  @override
  int get hashCode => duration.hashCode ^ mimeType.hashCode ^ fileSize.hashCode;
}
