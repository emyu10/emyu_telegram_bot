part of '../../../types.dart';

class InlineQueryResultGif extends InlineQueryResult {
  final String gifUrl;
  int? width;
  int? height;
  int? duration;
  final String thumbUrl;
  String? thumbMimetype;
  String? title;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;
  InlineKeyboardMarkup? replyMarkup;
  InputMessageContent? inputMessageContent;

  InlineQueryResultGif({
    super.type = 'gif',
    required super.id,
    required this.gifUrl,
    required this.thumbUrl,
  });
}
