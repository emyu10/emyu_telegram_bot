part of '../types.dart';

/// Represents a location to which a chat is connected.
class ChatLocation {
  /// The location to which the supergroup is connected.
  ///
  /// Can't be a live location.
  final Location location;

  /// Location address; 1-64 characters, as defined by the chat owner.
  final String address;

  ChatLocation({
    required this.location,
    required this.address,
  });

  ChatLocation copyWith({
    Location? location,
    String? address,
  }) {
    return ChatLocation(
      location: location ?? this.location,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'location': location.toMap(),
      'address': address,
    };
  }

  factory ChatLocation.fromMap(Map<String, dynamic> map) {
    return ChatLocation(
      location: Location.fromMap(map['location']),
      address: map['address'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatLocation.fromJson(String source) =>
      ChatLocation.fromMap(json.decode(source));

  @override
  String toString() => 'ChatLocation(location: $location, address: $address)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatLocation &&
        other.location == location &&
        other.address == address;
  }

  @override
  int get hashCode => location.hashCode ^ address.hashCode;
}
