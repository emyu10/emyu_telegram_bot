part of '../types.dart';

class InlineKeyboardMarkup {
  final List<List<InlineKeyboardButton>> inlineKeyboard;

  InlineKeyboardMarkup({
    required this.inlineKeyboard,
  });

  InlineKeyboardMarkup copyWith({
    List<List<InlineKeyboardButton>>? inlineKeyboard,
  }) {
    return InlineKeyboardMarkup(
      inlineKeyboard: inlineKeyboard ?? this.inlineKeyboard,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'inlineKeyboard':
          inlineKeyboard.map((x) => x.map((y) => y.toMap())).toList(),
    };
  }

  factory InlineKeyboardMarkup.fromMap(Map<String, dynamic> map) {
    return InlineKeyboardMarkup(inlineKeyboard: [
      [InlineKeyboardButton(text: '')]
    ]);
  }

  String toJson() => json.encode(toMap());

  factory InlineKeyboardMarkup.fromJson(String source) =>
      InlineKeyboardMarkup.fromMap(json.decode(source));

  @override
  String toString() => 'InlineKeyboardMarkup(inlineKeyboard: $inlineKeyboard)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is InlineKeyboardMarkup &&
        listEquals(other.inlineKeyboard, inlineKeyboard);
  }

  @override
  int get hashCode => inlineKeyboard.hashCode;
}
