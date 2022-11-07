part of '../types.dart';

class PollAnswer {
  final String pollId;
  final User user;
  final List<int> optionIds;

  PollAnswer({
    required this.pollId,
    required this.user,
    required this.optionIds,
  });
}
