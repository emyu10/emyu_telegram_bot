part of '../types.dart';

class Document {
  final String fileId;
  final String fileUniqueId;
  PhotoSize? thumb;
  String? fileName;
  String? mimeType;
  int? fileSize;

  Document({
    required this.fileId,
    required this.fileUniqueId,
  });
}
