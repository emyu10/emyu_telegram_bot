part of '../types.dart';

class ChatPhoto {
  final String smallFileId;
  final String smallFileUniqueId;
  final String bigFileId;
  final String bigFileUniqueId;

  ChatPhoto({
    required this.smallFileId,
    required this.smallFileUniqueId,
    required this.bigFileId,
    required this.bigFileUniqueId,
  });
}
