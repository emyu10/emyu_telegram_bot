part of '../types.dart';

class OrderInfo {
  String? name;
  String? phoneNumber;
  String? email;
  ShippingAddress? shippingAddress;
  OrderInfo({
    this.name,
    this.phoneNumber,
    this.email,
    this.shippingAddress,
  });

  OrderInfo copyWith({
    String? name,
    String? phoneNumber,
    String? email,
    ShippingAddress? shippingAddress,
  }) {
    return OrderInfo(
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      shippingAddress: shippingAddress ?? this.shippingAddress,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
      'email': email,
      'shippingAddress': shippingAddress?.toMap(),
    };
  }

  factory OrderInfo.fromMap(Map<String, dynamic> map) {
    return OrderInfo(
      name: map['name'],
      phoneNumber: map['phoneNumber'],
      email: map['email'],
      shippingAddress: map['shippingAddress'] != null
          ? ShippingAddress.fromMap(map['shippingAddress'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderInfo.fromJson(String source) =>
      OrderInfo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OrderInfo(name: $name, phoneNumber: $phoneNumber, email: $email, shippingAddress: $shippingAddress)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrderInfo &&
        other.name == name &&
        other.phoneNumber == phoneNumber &&
        other.email == email &&
        other.shippingAddress == shippingAddress;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        phoneNumber.hashCode ^
        email.hashCode ^
        shippingAddress.hashCode;
  }
}
