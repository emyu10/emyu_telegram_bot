part of '../../types.dart';

class ChosenInlineResult {
  /// The unique identifier for the result that was chosen.
  final String resultId;

  /// The user that chose the result.
  final User from;

  /// Sender location, only for bots that require user location.
  Location? location;

  /// Identifier of the sent inline message.
  ///
  /// Available only if there is an inline keyboard attached to the message.
  /// Will be also received in callback queries and can be used
  /// to edit the message.
  String? inlineMessageId;

  /// The query that was used to obtain the result.
  final String query;
  ChosenInlineResult({
    required this.resultId,
    required this.from,
    this.location,
    this.inlineMessageId,
    required this.query,
  });

  ChosenInlineResult copyWith({
    String? resultId,
    User? from,
    Location? location,
    String? inlineMessageId,
    String? query,
  }) {
    return ChosenInlineResult(
      resultId: resultId ?? this.resultId,
      from: from ?? this.from,
      location: location ?? this.location,
      inlineMessageId: inlineMessageId ?? this.inlineMessageId,
      query: query ?? this.query,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'result_id': resultId,
      'from': from.toMap(),
      'location': location?.toMap(),
      'inline_message_id': inlineMessageId,
      'query': query,
    };
  }

  factory ChosenInlineResult.fromMap(Map<String, dynamic> map) {
    return ChosenInlineResult(
      resultId: map['result_id'] ?? '',
      from: User.fromMap(map['from']),
      location:
          map['location'] != null ? Location.fromMap(map['location']) : null,
      inlineMessageId: map['inline_message_id'],
      query: map['query'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ChosenInlineResult.fromJson(String source) =>
      ChosenInlineResult.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ChosenInlineResult(resultId: $resultId, from: $from, location: $location, inlineMessageId: $inlineMessageId, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChosenInlineResult &&
        other.resultId == resultId &&
        other.from == from &&
        other.location == location &&
        other.inlineMessageId == inlineMessageId &&
        other.query == query;
  }

  @override
  int get hashCode {
    return resultId.hashCode ^
        from.hashCode ^
        location.hashCode ^
        inlineMessageId.hashCode ^
        query.hashCode;
  }
}
