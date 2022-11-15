part of '../types.dart';

class LabeledPrice {
  final String label;
  final int amount;
  LabeledPrice({
    required this.label,
    required this.amount,
  });

  LabeledPrice copyWith({
    String? label,
    int? amount,
  }) {
    return LabeledPrice(
      label: label ?? this.label,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'label': label,
      'amount': amount,
    };
  }

  factory LabeledPrice.fromMap(Map<String, dynamic> map) {
    return LabeledPrice(
      label: map['label'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory LabeledPrice.fromJson(String source) =>
      LabeledPrice.fromMap(json.decode(source));

  @override
  String toString() => 'LabeledPrice(label: $label, amount: $amount)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LabeledPrice &&
        other.label == label &&
        other.amount == amount;
  }

  @override
  int get hashCode => label.hashCode ^ amount.hashCode;
}
