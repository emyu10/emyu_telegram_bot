part of '../types.dart';

class Animation {
  final String fileId;
  final String fileUniqueId;
  final int width;
  final int height;
  final int duration;
  PhotoSize? thumb;
  String? fileName;
  String? mimeType;
  int? fileSize;

  Animation({
    required this.fileId,
    required this.fileUniqueId,
    required this.width,
    required this.height,
    required this.duration,
  });
}
