part of '../../types.dart';

class File extends BaseFile {
  int? fileSize;
  String? filePath;

  File({
    required super.fileId,
    required super.fileUniqueId,
    this.fileSize,
    this.filePath,
  });

  File copyWith({
    int? fileSize,
    String? filePath,
  }) {
    return File(
      fileId: fileId,
      fileUniqueId: fileUniqueId,
      fileSize: fileSize ?? this.fileSize,
      filePath: filePath ?? this.filePath,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'fileSize': fileSize,
      'filePath': filePath,
    };
  }

  factory File.fromMap(Map<String, dynamic> map) {
    return File(
      fileId: map['fileId'],
      fileUniqueId: map['fileUniqueId'],
      fileSize: map['fileSize']?.toInt(),
      filePath: map['filePath'],
    );
  }

  String toJson() => json.encode(toMap());

  factory File.fromJson(String source) => File.fromMap(json.decode(source));

  @override
  String toString() => 'File(fileSize: $fileSize, filePath: $filePath)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is File &&
        other.fileSize == fileSize &&
        other.filePath == filePath;
  }

  @override
  int get hashCode => fileSize.hashCode ^ filePath.hashCode;
}
