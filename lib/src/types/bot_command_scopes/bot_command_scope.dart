part of '../../types.dart';

class BotCommandScope {
  /// Scope type.
  final String type;

  BotCommandScope({
    required this.type,
  });

  BotCommandScope copyWith({
    String? type,
  }) {
    return BotCommandScope(
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
    };
  }

  factory BotCommandScope.fromMap(Map<String, dynamic> map) {
    return BotCommandScope(
      type: map['type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory BotCommandScope.fromJson(String source) =>
      BotCommandScope.fromMap(json.decode(source));

  @override
  String toString() => 'BotCommandScope(type: $type)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BotCommandScope && other.type == type;
  }

  @override
  int get hashCode => type.hashCode;
}
