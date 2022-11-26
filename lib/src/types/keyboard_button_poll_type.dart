part of '../types.dart';

/// Type of a poll, which is allowed to be created and sent
/// when the corresponding button is pressed.
class KeyboardButtonPollType {
  /// If quiz is passed, the user will be allowed to create only polls in
  /// the quiz mode. If regular is passed, only regular polls will be allowed.
  /// Otherwise, the user will be allowed to create a poll of any type.
  String? type;

  KeyboardButtonPollType({
    this.type,
  });

  KeyboardButtonPollType copyWith({
    String? type,
  }) {
    return KeyboardButtonPollType(
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
    };
  }

  factory KeyboardButtonPollType.fromMap(Map<String, dynamic> map) {
    return KeyboardButtonPollType(
      type: map['type'],
    );
  }

  String toJson() => json.encode(toMap());

  factory KeyboardButtonPollType.fromJson(String source) =>
      KeyboardButtonPollType.fromMap(json.decode(source));

  @override
  String toString() => 'KeyboardButtonPollType(type: $type)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is KeyboardButtonPollType && other.type == type;
  }

  @override
  int get hashCode => type.hashCode;
}
