part of '../../types.dart';

abstract class BaseFile {
  final String fileId;
  final String fileUniqueId;

  BaseFile({
    required this.fileId,
    required this.fileUniqueId,
  });
}
