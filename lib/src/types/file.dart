part of '../types.dart';

class File {
  final String fileId;
  final String fileUniqueId;
  int? fileSize;
  String? filePath;

  File({
    required this.fileId,
    required this.fileUniqueId,
  });
}
