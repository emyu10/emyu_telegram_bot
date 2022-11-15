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

  PollAnswer copyWith({
    String? pollId,
    User? user,
    List<int>? optionIds,
  }) {
    return PollAnswer(
      pollId: pollId ?? this.pollId,
      user: user ?? this.user,
      optionIds: optionIds ?? this.optionIds,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'poll_id': pollId,
      'user': user.toMap(),
      'option_ids': optionIds,
    };
  }

  factory PollAnswer.fromMap(Map<String, dynamic> map) {
    return PollAnswer(
      pollId: map['poll_id'] ?? '',
      user: User.fromMap(map['user']),
      optionIds: List<int>.from(map['option_ids']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PollAnswer.fromJson(String source) =>
      PollAnswer.fromMap(json.decode(source));

  @override
  String toString() =>
      'PollAnswer(pollId: $pollId, user: $user, optionIds: $optionIds)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is PollAnswer &&
        other.pollId == pollId &&
        other.user == user &&
        listEquals(other.optionIds, optionIds);
  }

  @override
  int get hashCode => pollId.hashCode ^ user.hashCode ^ optionIds.hashCode;
}
