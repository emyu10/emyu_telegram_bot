part of '../types.dart';

class VideoNote {
  final String fileId;
  final String fileUniqueId;
  final int length;
  final int duration;
  PhotoSize? thumb;
  int? fileSize;

  VideoNote({
    required this.fileId,
    required this.fileUniqueId,
    required this.length,
    required this.duration,
  });
}
