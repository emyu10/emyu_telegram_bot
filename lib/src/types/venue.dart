part of '../types.dart';

class Venue {
  final Location location;
  final String title;
  final String address;
  String? foursquareId;
  String? foursquareType;
  String? googlePlaceId;
  String? googlePlaceType;

  Venue({
    required this.location,
    required this.title,
    required this.address,
    this.foursquareId,
    this.foursquareType,
    this.googlePlaceId,
    this.googlePlaceType,
  });

  Venue copyWith({
    Location? location,
    String? title,
    String? address,
    String? foursquareId,
    String? foursquareType,
    String? googlePlaceId,
    String? googlePlaceType,
  }) {
    return Venue(
      location: location ?? this.location,
      title: title ?? this.title,
      address: address ?? this.address,
      foursquareId: foursquareId ?? this.foursquareId,
      foursquareType: foursquareType ?? this.foursquareType,
      googlePlaceId: googlePlaceId ?? this.googlePlaceId,
      googlePlaceType: googlePlaceType ?? this.googlePlaceType,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'location': location.toMap(),
      'title': title,
      'address': address,
      'foursquare_id': foursquareId,
      'foursquare_type': foursquareType,
      'google_place_id': googlePlaceId,
      'google_place_type': googlePlaceType,
    };
  }

  factory Venue.fromMap(Map<String, dynamic> map) {
    return Venue(
      location: Location.fromMap(map['location']),
      title: map['title'] ?? '',
      address: map['address'] ?? '',
      foursquareId: map['foursquare_id'],
      foursquareType: map['foursquare_type'],
      googlePlaceId: map['google_place_id'],
      googlePlaceType: map['google_place_type'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Venue.fromJson(String source) => Venue.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Venue(location: $location, title: $title, address: $address, foursquareId: $foursquareId, foursquareType: $foursquareType, googlePlaceId: $googlePlaceId, googlePlaceType: $googlePlaceType)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Venue &&
        other.location == location &&
        other.title == title &&
        other.address == address &&
        other.foursquareId == foursquareId &&
        other.foursquareType == foursquareType &&
        other.googlePlaceId == googlePlaceId &&
        other.googlePlaceType == googlePlaceType;
  }

  @override
  int get hashCode {
    return location.hashCode ^
        title.hashCode ^
        address.hashCode ^
        foursquareId.hashCode ^
        foursquareType.hashCode ^
        googlePlaceId.hashCode ^
        googlePlaceType.hashCode;
  }
}
