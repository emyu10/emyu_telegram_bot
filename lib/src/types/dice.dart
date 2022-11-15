part of '../types.dart';

class Dice {
  final String emoji;
  final int value;

  Dice({
    required this.emoji,
    required this.value,
  });

  Dice copyWith({
    String? emoji,
    int? value,
  }) {
    return Dice(
      emoji: emoji ?? this.emoji,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'emoji': emoji,
      'value': value,
    };
  }

  factory Dice.fromMap(Map<String, dynamic> map) {
    return Dice(
      emoji: map['emoji'] ?? '',
      value: map['value']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Dice.fromJson(String source) => Dice.fromMap(json.decode(source));

  @override
  String toString() => 'Dice(emoji: $emoji, value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Dice && other.emoji == emoji && other.value == value;
  }

  @override
  int get hashCode => emoji.hashCode ^ value.hashCode;
}
