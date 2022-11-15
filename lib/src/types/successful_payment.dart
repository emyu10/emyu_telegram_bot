part of '../types.dart';

class SuccessfulPayment {
  final String currency;
  final int totalAmount;
  final String invoicePayload;
  String? shippingOptionId;
  OrderInfo? orderInfo;
  final String telegramPaymentChartId;
  final String providerPaymentChargeId;
  SuccessfulPayment({
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
    required this.telegramPaymentChartId,
    required this.providerPaymentChargeId,
  });

  SuccessfulPayment copyWith({
    String? currency,
    int? totalAmount,
    String? invoicePayload,
    String? shippingOptionId,
    OrderInfo? orderInfo,
    String? telegramPaymentChartId,
    String? providerPaymentChargeId,
  }) {
    return SuccessfulPayment(
      currency: currency ?? this.currency,
      totalAmount: totalAmount ?? this.totalAmount,
      invoicePayload: invoicePayload ?? this.invoicePayload,
      shippingOptionId: shippingOptionId ?? this.shippingOptionId,
      orderInfo: orderInfo ?? this.orderInfo,
      telegramPaymentChartId:
          telegramPaymentChartId ?? this.telegramPaymentChartId,
      providerPaymentChargeId:
          providerPaymentChargeId ?? this.providerPaymentChargeId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'currency': currency,
      'totalAmount': totalAmount,
      'invoicePayload': invoicePayload,
      'shippingOptionId': shippingOptionId,
      'orderInfo': orderInfo?.toMap(),
      'telegramPaymentChartId': telegramPaymentChartId,
      'providerPaymentChargeId': providerPaymentChargeId,
    };
  }

  factory SuccessfulPayment.fromMap(Map<String, dynamic> map) {
    return SuccessfulPayment(
      currency: map['currency'] ?? '',
      totalAmount: map['totalAmount']?.toInt() ?? 0,
      invoicePayload: map['invoicePayload'] ?? '',
      shippingOptionId: map['shippingOptionId'],
      orderInfo:
          map['orderInfo'] != null ? OrderInfo.fromMap(map['orderInfo']) : null,
      telegramPaymentChartId: map['telegramPaymentChartId'] ?? '',
      providerPaymentChargeId: map['providerPaymentChargeId'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SuccessfulPayment.fromJson(String source) =>
      SuccessfulPayment.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SuccessfulPayment(currency: $currency, totalAmount: $totalAmount, invoicePayload: $invoicePayload, shippingOptionId: $shippingOptionId, orderInfo: $orderInfo, telegramPaymentChartId: $telegramPaymentChartId, providerPaymentChargeId: $providerPaymentChargeId)';
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
        other.telegramPaymentChartId == telegramPaymentChartId &&
        other.providerPaymentChargeId == providerPaymentChargeId;
  }

  @override
  int get hashCode {
    return currency.hashCode ^
        totalAmount.hashCode ^
        invoicePayload.hashCode ^
        shippingOptionId.hashCode ^
        orderInfo.hashCode ^
        telegramPaymentChartId.hashCode ^
        providerPaymentChargeId.hashCode;
  }
}
