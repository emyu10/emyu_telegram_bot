part of '../types.dart';

class Voice {
  final String fileId;
  final String fileUniqueId;
  final int duration;
  String? mimeType;
  int? fileSize;

  Voice({
    required this.fileId,
    required this.fileUniqueId,
    required this.duration,
  });
}
