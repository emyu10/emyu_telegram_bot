part of '../types.dart';

class ShippingAddress {
  final String countryCode;
  final String state;
  final String city;
  final String streetLine1;
  final String streetLine2;
  final String postCode;
  ShippingAddress({
    required this.countryCode,
    required this.state,
    required this.city,
    required this.streetLine1,
    required this.streetLine2,
    required this.postCode,
  });

  ShippingAddress copyWith({
    String? countryCode,
    String? state,
    String? city,
    String? streetLine1,
    String? streetLine2,
    String? postCode,
  }) {
    return ShippingAddress(
      countryCode: countryCode ?? this.countryCode,
      state: state ?? this.state,
      city: city ?? this.city,
      streetLine1: streetLine1 ?? this.streetLine1,
      streetLine2: streetLine2 ?? this.streetLine2,
      postCode: postCode ?? this.postCode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'countryCode': countryCode,
      'state': state,
      'city': city,
      'streetLine1': streetLine1,
      'streetLine2': streetLine2,
      'postCode': postCode,
    };
  }

  factory ShippingAddress.fromMap(Map<String, dynamic> map) {
    return ShippingAddress(
      countryCode: map['countryCode'] ?? '',
      state: map['state'] ?? '',
      city: map['city'] ?? '',
      streetLine1: map['streetLine1'] ?? '',
      streetLine2: map['streetLine2'] ?? '',
      postCode: map['postCode'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ShippingAddress.fromJson(String source) =>
      ShippingAddress.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ShippingAddress(countryCode: $countryCode, state: $state, city: $city, streetLine1: $streetLine1, streetLine2: $streetLine2, postCode: $postCode)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ShippingAddress &&
        other.countryCode == countryCode &&
        other.state == state &&
        other.city == city &&
        other.streetLine1 == streetLine1 &&
        other.streetLine2 == streetLine2 &&
        other.postCode == postCode;
  }

  @override
  int get hashCode {
    return countryCode.hashCode ^
        state.hashCode ^
        city.hashCode ^
        streetLine1.hashCode ^
        streetLine2.hashCode ^
        postCode.hashCode;
  }
}
