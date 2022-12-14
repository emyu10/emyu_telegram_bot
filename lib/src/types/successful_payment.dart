part of '../types.dart';

class SuccessfulPayment {
  final String currency;
  final int totalAmount;
  final String invoicePayload;
  String? shippingOptionId;
  OrderInfo? orderInfo;
  final String telegramPaymentChargeId;
  final String providerPaymentChargeId;
  SuccessfulPayment({
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
    required this.telegramPaymentChargeId,
    required this.providerPaymentChargeId,
  });

  SuccessfulPayment copyWith({
    String? currency,
    int? totalAmount,
    String? invoicePayload,
    String? shippingOptionId,
    OrderInfo? orderInfo,
    String? telegramPaymentChargeId,
    String? providerPaymentChargeId,
  }) {
    return SuccessfulPayment(
      currency: currency ?? this.currency,
      totalAmount: totalAmount ?? this.totalAmount,
      invoicePayload: invoicePayload ?? this.invoicePayload,
      shippingOptionId: shippingOptionId ?? this.shippingOptionId,
      orderInfo: orderInfo ?? this.orderInfo,
      telegramPaymentChargeId:
          telegramPaymentChargeId ?? this.telegramPaymentChargeId,
      providerPaymentChargeId:
          providerPaymentChargeId ?? this.providerPaymentChargeId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'currency': currency,
      'total_amount': totalAmount,
      'invoice_payload': invoicePayload,
      'shipping_option_id': shippingOptionId,
      'order_info': orderInfo?.toMap(),
      'telegram_payment_charge_id': telegramPaymentChargeId,
      'provider_payment_charge_id': providerPaymentChargeId,
    };
  }

  factory SuccessfulPayment.fromMap(Map<String, dynamic> map) {
    return SuccessfulPayment(
      currency: map['currency'] ?? '',
      totalAmount: map['total_amount']?.toInt() ?? 0,
      invoicePayload: map['invoice_payload'] ?? '',
      shippingOptionId: map['shipping_option_id'],
      orderInfo: map['order_info'] != null
          ? OrderInfo.fromMap(map['order_info'])
          : null,
      telegramPaymentChargeId: map['telegram_payment_charge_id'] ?? '',
      providerPaymentChargeId: map['provider_payment_charge_id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SuccessfulPayment.fromJson(String source) =>
      SuccessfulPayment.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SuccessfulPayment(currency: $currency, totalAmount: $totalAmount, invoicePayload: $invoicePayload, shippingOptionId: $shippingOptionId, orderInfo: $orderInfo, telegramPaymentChargeId: $telegramPaymentChargeId, providerPaymentChargeId: $providerPaymentChargeId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SuccessfulPayment &&
        other.currency == currency &&
        other.totalAmount == totalAmount &&
        other.invoicePayload == invoicePayload &&
        other.shippingOptionId == shippingOptionId &&
        other.orderInfo == orderInfo &&
        other.telegramPaymentChargeId == telegramPaymentChargeId &&
        other.providerPaymentChargeId == providerPaymentChargeId;
  }

  @override
  int get hashCode {
    return currency.hashCode ^
        totalAmount.hashCode ^
        invoicePayload.hashCode ^
        shippingOptionId.hashCode ^
        orderInfo.hashCode ^
        telegramPaymentChargeId.hashCode ^
        providerPaymentChargeId.hashCode;
  }
}
