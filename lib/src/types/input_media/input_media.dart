part of '../../types.dart';

class InputMedia {
  final String type;
  final String media;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;

  InputMedia({
    required this.type,
    required this.media,
  });
}
