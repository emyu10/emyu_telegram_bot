part of '../../../types.dart';

class InputInvoiceMessageContent extends InputMessageContent {
  final String title;
  final String description;
  final String payload;
  final String providerToken;
  final String currency;
  List<LabeledPrice> prices;
  int? maxTipAmount;
  List<int>? suggestedTipAmounts;
  String? providerData;
  String? photoUrl;
  int? photoSize;
  int? photoWidth;
  int? photoHeight;
  bool? needName;
  bool? needPhoneNumber;
  bool? needEmail;
  bool? needShippingAddress;
  bool? sendPhoneNumberToProvider;
  bool? sendEmailToProvider;
  bool? isFlexible;
  InputInvoiceMessageContent({
    required this.title,
    required this.description,
    required this.payload,
    required this.providerToken,
    required this.currency,
    required this.prices,
    this.maxTipAmount,
    this.suggestedTipAmounts,
    this.providerData,
    this.photoUrl,
    this.photoSize,
    this.photoWidth,
    this.photoHeight,
    this.needName,
    this.needPhoneNumber,
    this.needEmail,
    this.needShippingAddress,
    this.sendPhoneNumberToProvider,
    this.sendEmailToProvider,
    this.isFlexible,
  });

  InputInvoiceMessageContent copyWith({
    String? title,
    String? description,
    String? payload,
    String? providerToken,
    String? currency,
    List<LabeledPrice>? prices,
    int? maxTipAmount,
    List<int>? suggestedTipAmounts,
    String? providerData,
    String? photoUrl,
    int? photoSize,
    int? photoWidth,
    int? photoHeight,
    bool? needName,
    bool? needPhoneNumber,
    bool? needEmail,
    bool? needShippingAddress,
    bool? sendPhoneNumberToProvider,
    bool? sendEmailToProvider,
    bool? isFlexible,
  }) {
    return InputInvoiceMessageContent(
      title: title ?? this.title,
      description: description ?? this.description,
      payload: payload ?? this.payload,
      providerToken: providerToken ?? this.providerToken,
      currency: currency ?? this.currency,
      prices: prices ?? this.prices,
      maxTipAmount: maxTipAmount ?? this.maxTipAmount,
      suggestedTipAmounts: suggestedTipAmounts ?? this.suggestedTipAmounts,
      providerData: providerData ?? this.providerData,
      photoUrl: photoUrl ?? this.photoUrl,
      photoSize: photoSize ?? this.photoSize,
      photoWidth: photoWidth ?? this.photoWidth,
      photoHeight: photoHeight ?? this.photoHeight,
      needName: needName ?? this.needName,
      needPhoneNumber: needPhoneNumber ?? this.needPhoneNumber,
      needEmail: needEmail ?? this.needEmail,
      needShippingAddress: needShippingAddress ?? this.needShippingAddress,
      sendPhoneNumberToProvider:
          sendPhoneNumberToProvider ?? this.sendPhoneNumberToProvider,
      sendEmailToProvider: sendEmailToProvider ?? this.sendEmailToProvider,
      isFlexible: isFlexible ?? this.isFlexible,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'payload': payload,
      'providerToken': providerToken,
      'currency': currency,
      'prices': prices.map((x) => x.toMap()).toList(),
      'maxTipAmount': maxTipAmount,
      'suggestedTipAmounts': suggestedTipAmounts,
      'providerData': providerData,
      'photoUrl': photoUrl,
      'photoSize': photoSize,
      'photoWidth': photoWidth,
      'photoHeight': photoHeight,
      'needName': needName,
      'needPhoneNumber': needPhoneNumber,
      'needEmail': needEmail,
      'needShippingAddress': needShippingAddress,
      'sendPhoneNumberToProvider': sendPhoneNumberToProvider,
      'sendEmailToProvider': sendEmailToProvider,
      'isFlexible': isFlexible,
    };
  }

  factory InputInvoiceMessageContent.fromMap(Map<String, dynamic> map) {
    return InputInvoiceMessageContent(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      payload: map['payload'] ?? '',
      providerToken: map['providerToken'] ?? '',
      currency: map['currency'] ?? '',
      prices: List<LabeledPrice>.from(
          map['prices']?.map((x) => LabeledPrice.fromMap(x))),
      maxTipAmount: map['maxTipAmount']?.toInt(),
      suggestedTipAmounts: List<int>.from(map['suggestedTipAmounts']),
      providerData: map['providerData'],
      photoUrl: map['photoUrl'],
      photoSize: map['photoSize']?.toInt(),
      photoWidth: map['photoWidth']?.toInt(),
      photoHeight: map['photoHeight']?.toInt(),
      needName: map['needName'],
      needPhoneNumber: map['needPhoneNumber'],
      needEmail: map['needEmail'],
      needShippingAddress: map['needShippingAddress'],
      sendPhoneNumberToProvider: map['sendPhoneNumberToProvider'],
      sendEmailToProvider: map['sendEmailToProvider'],
      isFlexible: map['isFlexible'],
    );
  }

  String toJson() => json.encode(toMap());

  factory InputInvoiceMessageContent.fromJson(String source) =>
      InputInvoiceMessageContent.fromMap(json.decode(source));

  @override
  String toString() {
    return 'InputInvoiceMessageContent(title: $title, description: $description, payload: $payload, providerToken: $providerToken, currency: $currency, prices: $prices, maxTipAmount: $maxTipAmount, suggestedTipAmounts: $suggestedTipAmounts, providerData: $providerData, photoUrl: $photoUrl, photoSize: $photoSize, photoWidth: $photoWidth, photoHeight: $photoHeight, needName: $needName, needPhoneNumber: $needPhoneNumber, needEmail: $needEmail, needShippingAddress: $needShippingAddress, sendPhoneNumberToProvider: $sendPhoneNumberToProvider, sendEmailToProvider: $sendEmailToProvider, isFlexible: $isFlexible)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is InputInvoiceMessageContent &&
        other.title == title &&
        other.description == description &&
        other.payload == payload &&
        other.providerToken == providerToken &&
        other.currency == currency &&
        listEquals(other.prices, prices) &&
        other.maxTipAmount == maxTipAmount &&
        listEquals(other.suggestedTipAmounts, suggestedTipAmounts) &&
        other.providerData == providerData &&
        other.photoUrl == photoUrl &&
        other.photoSize == photoSize &&
        other.photoWidth == photoWidth &&
        other.photoHeight == photoHeight &&
        other.needName == needName &&
        other.needPhoneNumber == needPhoneNumber &&
        other.needEmail == needEmail &&
        other.needShippingAddress == needShippingAddress &&
        other.sendPhoneNumberToProvider == sendPhoneNumberToProvider &&
        other.sendEmailToProvider == sendEmailToProvider &&
        other.isFlexible == isFlexible;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        description.hashCode ^
        payload.hashCode ^
        providerToken.hashCode ^
        currency.hashCode ^
        prices.hashCode ^
        maxTipAmount.hashCode ^
        suggestedTipAmounts.hashCode ^
        providerData.hashCode ^
        photoUrl.hashCode ^
        photoSize.hashCode ^
        photoWidth.hashCode ^
        photoHeight.hashCode ^
        needName.hashCode ^
        needPhoneNumber.hashCode ^
        needEmail.hashCode ^
        needShippingAddress.hashCode ^
        sendPhoneNumberToProvider.hashCode ^
        sendEmailToProvider.hashCode ^
        isFlexible.hashCode;
  }
}
