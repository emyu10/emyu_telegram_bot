part of '../types.dart';

class Poll {
  final String id;
  final String question;
  final List<PollOption> options;
  final int totalVoterCount;
  final bool isClosed;
  final bool isAnonymous;
  final String type;
  final bool allowsMultipleAnswers;
  int? correctOptionId;
  String? explanation;
  List<MessageEntity>? explanationEntities;
  int? openPeriod;
  int? closeDate;

  Poll({
    required this.id,
    required this.question,
    required this.options,
    required this.totalVoterCount,
    required this.isClosed,
    required this.isAnonymous,
    required this.type,
    required this.allowsMultipleAnswers,
  });
}
