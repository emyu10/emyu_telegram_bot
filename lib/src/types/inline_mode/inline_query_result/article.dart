part of '../../../types.dart';

class InlineQueryResultArticle extends InlineQueryResult {
  final String title;
  final InputMessageContent content;
  InlineKeyboardMarkup? replyMarkup;
  String? url;
  bool? hideUrl;
  String? description;
  String? thumbUrl;
  int? width;
  int? height;

  InlineQueryResultArticle({
    super.type = 'article',
    required super.id,
    required this.title,
    required this.content,
  });
}
