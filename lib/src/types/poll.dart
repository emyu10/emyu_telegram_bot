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
    this.correctOptionId,
    this.explanation,
    this.explanationEntities,
    this.openPeriod,
    this.closeDate,
  });

  Poll copyWith({
    String? id,
    String? question,
    List<PollOption>? options,
    int? totalVoterCount,
    bool? isClosed,
    bool? isAnonymous,
    String? type,
    bool? allowsMultipleAnswers,
    int? correctOptionId,
    String? explanation,
    List<MessageEntity>? explanationEntities,
    int? openPeriod,
    int? closeDate,
  }) {
    return Poll(
      id: id ?? this.id,
      question: question ?? this.question,
      options: options ?? this.options,
      totalVoterCount: totalVoterCount ?? this.totalVoterCount,
      isClosed: isClosed ?? this.isClosed,
      isAnonymous: isAnonymous ?? this.isAnonymous,
      type: type ?? this.type,
      allowsMultipleAnswers:
          allowsMultipleAnswers ?? this.allowsMultipleAnswers,
      correctOptionId: correctOptionId ?? this.correctOptionId,
      explanation: explanation ?? this.explanation,
      explanationEntities: explanationEntities ?? this.explanationEntities,
      openPeriod: openPeriod ?? this.openPeriod,
      closeDate: closeDate ?? this.closeDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'options': options.map((x) => x.toMap()).toList(),
      'totalVoterCount': totalVoterCount,
      'isClosed': isClosed,
      'isAnonymous': isAnonymous,
      'type': type,
      'allowsMultipleAnswers': allowsMultipleAnswers,
      'correctOptionId': correctOptionId,
      'explanation': explanation,
      'explanationEntities':
          explanationEntities?.map((x) => x?.toMap())?.toList(),
      'openPeriod': openPeriod,
      'closeDate': closeDate,
    };
  }

  factory Poll.fromMap(Map<String, dynamic> map) {
    return Poll(
      id: map['id'] ?? '',
      question: map['question'] ?? '',
      options: List<PollOption>.from(
          map['options']?.map((x) => PollOption.fromMap(x))),
      totalVoterCount: map['totalVoterCount']?.toInt() ?? 0,
      isClosed: map['isClosed'] ?? false,
      isAnonymous: map['isAnonymous'] ?? false,
      type: map['type'] ?? '',
      allowsMultipleAnswers: map['allowsMultipleAnswers'] ?? false,
      correctOptionId: map['correctOptionId']?.toInt(),
      explanation: map['explanation'],
      explanationEntities: map['explanationEntities'] != null
          ? List<MessageEntity>.from(
              map['explanationEntities']?.map((x) => MessageEntity.fromMap(x)))
          : null,
      openPeriod: map['openPeriod']?.toInt(),
      closeDate: map['closeDate']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Poll.fromJson(String source) => Poll.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Poll(id: $id, question: $question, options: $options, totalVoterCount: $totalVoterCount, isClosed: $isClosed, isAnonymous: $isAnonymous, type: $type, allowsMultipleAnswers: $allowsMultipleAnswers, correctOptionId: $correctOptionId, explanation: $explanation, explanationEntities: $explanationEntities, openPeriod: $openPeriod, closeDate: $closeDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Poll &&
        other.id == id &&
        other.question == question &&
        listEquals(other.options, options) &&
        other.totalVoterCount == totalVoterCount &&
        other.isClosed == isClosed &&
        other.isAnonymous == isAnonymous &&
        other.type == type &&
        other.allowsMultipleAnswers == allowsMultipleAnswers &&
        other.correctOptionId == correctOptionId &&
        other.explanation == explanation &&
        listEquals(other.explanationEntities, explanationEntities) &&
        other.openPeriod == openPeriod &&
        other.closeDate == closeDate;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        question.hashCode ^
        options.hashCode ^
        totalVoterCount.hashCode ^
        isClosed.hashCode ^
        isAnonymous.hashCode ^
        type.hashCode ^
        allowsMultipleAnswers.hashCode ^
        correctOptionId.hashCode ^
        explanation.hashCode ^
        explanationEntities.hashCode ^
        openPeriod.hashCode ^
        closeDate.hashCode;
  }
}
