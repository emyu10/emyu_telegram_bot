part of '../types.dart';

class PhotoSize {
  final String fileId;
  final String fileUniqueId;
  final int width;
  final int height;
  int? fileSize;

  PhotoSize({
    required this.fileId,
    required this.fileUniqueId,
    required this.width,
    required this.height,
  });
}
