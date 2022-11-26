part of '../../types.dart';

class PassportFile extends BaseFile {
  final int fileSize;
  final int fileDate;
  PassportFile({
    required super.fileId,
    required super.fileUniqueId,
    required this.fileSize,
    required this.fileDate,
  });

  PassportFile copyWith({
    int? fileSize,
    int? fileDate,
  }) {
    return PassportFile(
      fileId: fileId,
      fileUniqueId: fileUniqueId,
      fileSize: fileSize ?? this.fileSize,
      fileDate: fileDate ?? this.fileDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'fileSize': fileSize,
      'fileDate': fileDate,
    };
  }

  factory PassportFile.fromMap(Map<String, dynamic> map) {
    return PassportFile(
      fileId: map['fileId'],
      fileUniqueId: map['fileUniqueId'],
      fileSize: map['fileSize']?.toInt() ?? 0,
      fileDate: map['fileDate']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PassportFile.fromJson(String source) =>
      PassportFile.fromMap(json.decode(source));

  @override
  String toString() => 'PassportFile(fileSize: $fileSize, fileDate: $fileDate)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PassportFile &&
        other.fileSize == fileSize &&
        other.fileDate == fileDate;
  }

  @override
  int get hashCode => fileSize.hashCode ^ fileDate.hashCode;
}

/*
file_size 	Integer 	File size in bytes
file_date 	Integer 	Unix time when the file was upload
*/
