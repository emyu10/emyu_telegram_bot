part of '../../types.dart';

/// The base of all files.
///
/// Extend this file when creating any other file.
abstract class BaseFile {
  /// Identifier for this file, which can be used to download or reuse the file
  final String fileId;

  /// Unique identifier for this file.
  ///
  /// Which is supposed to be the same over time and for different bots.
  /// Can't be used to download or reuse the file.
  final String fileUniqueId;

  BaseFile({
    required this.fileId,
    required this.fileUniqueId,
  });
}
