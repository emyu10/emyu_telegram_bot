part of '../types.dart';

class ShippingQuery {
  /// Unique query identifier.
  final String id;

  /// User who sent the query.
  final User user;

  /// Bot specified invoice payload.
  final String invoicePayload;

  /// User specified shipping address.
  final ShippingAddress shippingAddress;

  ShippingQuery({
    required this.id,
    required this.user,
    required this.invoicePayload,
    required this.shippingAddress,
  });

  ShippingQuery copyWith({
    String? id,
    User? user,
    String? invoicePayload,
    ShippingAddress? shippingAddress,
  }) {
    return ShippingQuery(
      id: id ?? this.id,
      user: user ?? this.user,
      invoicePayload: invoicePayload ?? this.invoicePayload,
      shippingAddress: shippingAddress ?? this.shippingAddress,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'user': user.toMap(),
      'invoice_payload': invoicePayload,
      'shipping_address': shippingAddress.toMap(),
    };
  }

  factory ShippingQuery.fromMap(Map<String, dynamic> map) {
    return ShippingQuery(
      id: map['id'] ?? '',
      user: User.fromMap(map['user']),
      invoicePayload: map['invoice_payload'] ?? '',
      shippingAddress: ShippingAddress.fromMap(map['shipping_address']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ShippingQuery.fromJson(String source) =>
      ShippingQuery.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ShippingQuery(id: $id, user: $user, invoicePayload: $invoicePayload, shippingAddress: $shippingAddress)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ShippingQuery &&
        other.id == id &&
        other.user == user &&
        other.invoicePayload == invoicePayload &&
        other.shippingAddress == shippingAddress;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        user.hashCode ^
        invoicePayload.hashCode ^
        shippingAddress.hashCode;
  }
}
