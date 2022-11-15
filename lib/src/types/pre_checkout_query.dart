part of '../types.dart';

class PreCheckoutQuery {
  /// Unique query identifier.
  final String id;

  /// User who sent the query.
  final User from;

  /// Three-letter ISO 4217 currency code.
  final String currency;

  /// Total price in the smallest units of the currency.
  ///
  /// (integer, not float/double).
  /// For example, for a price of US$ 1.45 pass amount = 145.
  /// See the exp parameter in currencies.json, it shows the number of digits
  /// past the decimal point for each currency (2 for the majority of currencies).
  final int totalAmount;

  /// Bot specified invoice payload.
  final String invoicePayload;

  /// Identifier of the shipping option chosen by the user
  String? shippingOptionId;

  /// Order information provided by the user.
  OrderInfo? orderInfo;

  PreCheckoutQuery({
    required this.id,
    required this.from,
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
  });

  PreCheckoutQuery copyWith({
    String? id,
    User? from,
    String? currency,
    int? totalAmount,
    String? invoicePayload,
    String? shippingOptionId,
    OrderInfo? orderInfo,
  }) {
    return PreCheckoutQuery(
      id: id ?? this.id,
      from: from ?? this.from,
      currency: currency ?? this.currency,
      totalAmount: totalAmount ?? this.totalAmount,
      invoicePayload: invoicePayload ?? this.invoicePayload,
      shippingOptionId: shippingOptionId ?? this.shippingOptionId,
      orderInfo: orderInfo ?? this.orderInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'from': from.toMap(),
      'currency': currency,
      'total_amount': totalAmount,
      'invoice_payload': invoicePayload,
      'shipping_option_id': shippingOptionId,
      'order_info': orderInfo?.toMap(),
    };
  }

  factory PreCheckoutQuery.fromMap(Map<String, dynamic> map) {
    return PreCheckoutQuery(
      id: map['id'] ?? '',
      from: User.fromMap(map['from']),
      currency: map['currency'] ?? '',
      totalAmount: map['total_amount']?.toInt() ?? 0,
      invoicePayload: map['invoice_payload'] ?? '',
      shippingOptionId: map['shipping_option_id'],
      orderInfo: map['order_info'] != null
          ? OrderInfo.fromMap(map['order_info'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PreCheckoutQuery.fromJson(String source) =>
      PreCheckoutQuery.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PreCheckoutQuery(id: $id, from: $from, currency: $currency, totalAmount: $totalAmount, invoicePayload: $invoicePayload, shippingOptionId: $shippingOptionId, orderInfo: $orderInfo)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PreCheckoutQuery &&
        other.id == id &&
        other.from == from &&
        other.currency == currency &&
        other.totalAmount == totalAmount &&
        other.invoicePayload == invoicePayload &&
        other.shippingOptionId == shippingOptionId &&
        other.orderInfo == orderInfo;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        from.hashCode ^
        currency.hashCode ^
        totalAmount.hashCode ^
        invoicePayload.hashCode ^
        shippingOptionId.hashCode ^
        orderInfo.hashCode;
  }
}
