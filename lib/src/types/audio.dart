part of '../types.dart';

class Audio {
  final String fileId;
  final String fileUniqueId;
  final int duration;
  String? performer;
  String? title;
  String? fileName;
  String? mimeType;
  int? fileSize;
  PhotoSize? thumb;

  Audio({
    required this.fileId,
    required this.fileUniqueId,
    required this.duration,
  });
}
