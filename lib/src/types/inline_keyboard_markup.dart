part of '../types.dart';

/// An inline keyboard that appears right next to the message it belongs to.
class InlineKeyboardMarkup extends ReplyMarkup {
  /// Array of button rows.
  ///
  /// Each represented by an Array of [InlineKeyboardButton] objects
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
    final outer = <dynamic, dynamic>{};
    for (var out in inlineKeyboard) {
      final inner = {};
      for (var inn in out) {
        inner.addAll(inn.toMap());
      }
      outer.addAll(inner);
    }
    return {'inline_keyboard': outer};
  }

  factory InlineKeyboardMarkup.fromMap(Map<String, dynamic> map) =>
      InlineKeyboardMarkup(
        inlineKeyboard:
            List<List<InlineKeyboardButton>>.from(map['inline_keyboard']),
      );

  String toJson() {
    var js = '{"inline_keyboard": [';
    var i = 0;
    for (var out in inlineKeyboard) {
      js += '[';
      for (var inn in out) {
        js += inn.toJson();
      }
      js += ']';
      if (i < (out.length)) {
        js += ',';
      }
      i++;
    }
    js += ']}';
    return js;
  }

  factory InlineKeyboardMarkup.fromJson(String source) =>
      InlineKeyboardMarkup.fromMap(json.decode(source));

  @override
  String toString() =>
      toJson(); //'InlineKeyboardMarkup(inlineKeyboard: $inlineKeyboard)';

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
