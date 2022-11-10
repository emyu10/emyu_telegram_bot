part of '../../../types.dart';

class InlineQueryResultPhoto extends InlineQueryResult {
  final String photoUrl;
  final String thumbUrl;
  int? width;
  int? height;
  String? title;
  String? description;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;
  InlineKeyboardMarkup? replyMarkup;
  InputMessageContent? inputMessageContent;

  InlineQueryResultPhoto({
    super.type = 'photo',
    required super.id,
    required this.photoUrl,
    required this.thumbUrl,
  });
}
