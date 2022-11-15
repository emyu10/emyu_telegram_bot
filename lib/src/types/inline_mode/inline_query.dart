part of '../../types.dart';

class InlineQuery {
  final String id;
  final User from;
  final String query;
  final String offset;
  String? chatType;
  Location? location;

  InlineQuery({
    required this.id,
    required this.from,
    required this.query,
    required this.offset,
    this.chatType,
    this.location,
  });

  InlineQuery copyWith({
    String? id,
    User? from,
    String? query,
    String? offset,
    String? chatType,
    Location? location,
  }) {
    return InlineQuery(
      id: id ?? this.id,
      from: from ?? this.from,
      query: query ?? this.query,
      offset: offset ?? this.offset,
      chatType: chatType ?? this.chatType,
      location: location ?? this.location,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'from': from.toMap(),
      'query': query,
      'offset': offset,
      'chat_type': chatType,
      'location': location?.toMap(),
    };
  }

  factory InlineQuery.fromMap(Map<String, dynamic> map) {
    return InlineQuery(
      id: map['id'] ?? '',
      from: User.fromMap(map['from']),
      query: map['query'] ?? '',
      offset: map['offset'] ?? '',
      chatType: map['chat_type'],
      location:
          map['location'] != null ? Location.fromMap(map['location']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory InlineQuery.fromJson(String source) =>
      InlineQuery.fromMap(json.decode(source));

  @override
  String toString() {
    return 'InlineQuery(id: $id, from: $from, query: $query, offset: $offset, chatType: $chatType, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is InlineQuery &&
        other.id == id &&
        other.from == from &&
        other.query == query &&
        other.offset == offset &&
        other.chatType == chatType &&
        other.location == location;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        from.hashCode ^
        query.hashCode ^
        offset.hashCode ^
        chatType.hashCode ^
        location.hashCode;
  }
}
