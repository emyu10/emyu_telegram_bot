part of '../../../types.dart';

class InputVenueMessageContent extends InputMessageContent {
  final double latitude;
  final double longitude;
  final String title;
  final String address;
  String? foursquareId;
  String? foursquareType;
  String? googlePlaceId;
  String? googlePlaceType;
  InputVenueMessageContent({
    required this.latitude,
    required this.longitude,
    required this.title,
    required this.address,
    this.foursquareId,
    this.foursquareType,
    this.googlePlaceId,
    this.googlePlaceType,
  });

  InputVenueMessageContent copyWith({
    double? latitude,
    double? longitude,
    String? title,
    String? address,
    String? foursquareId,
    String? foursquareType,
    String? googlePlaceId,
    String? googlePlaceType,
  }) {
    return InputVenueMessageContent(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
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
      'latitude': latitude,
      'longitude': longitude,
      'title': title,
      'address': address,
      'foursquareId': foursquareId,
      'foursquareType': foursquareType,
      'googlePlaceId': googlePlaceId,
      'googlePlaceType': googlePlaceType,
    };
  }

  factory InputVenueMessageContent.fromMap(Map<String, dynamic> map) {
    return InputVenueMessageContent(
      latitude: map['latitude']?.toDouble() ?? 0.0,
      longitude: map['longitude']?.toDouble() ?? 0.0,
      title: map['title'] ?? '',
      address: map['address'] ?? '',
      foursquareId: map['foursquareId'],
      foursquareType: map['foursquareType'],
      googlePlaceId: map['googlePlaceId'],
      googlePlaceType: map['googlePlaceType'],
    );
  }

  String toJson() => json.encode(toMap());

  factory InputVenueMessageContent.fromJson(String source) =>
      InputVenueMessageContent.fromMap(json.decode(source));

  @override
  String toString() {
    return 'InputVenueMessageContent(latitude: $latitude, longitude: $longitude, title: $title, address: $address, foursquareId: $foursquareId, foursquareType: $foursquareType, googlePlaceId: $googlePlaceId, googlePlaceType: $googlePlaceType)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is InputVenueMessageContent &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.title == title &&
        other.address == address &&
        other.foursquareId == foursquareId &&
        other.foursquareType == foursquareType &&
        other.googlePlaceId == googlePlaceId &&
        other.googlePlaceType == googlePlaceType;
  }

  @override
  int get hashCode {
    return latitude.hashCode ^
        longitude.hashCode ^
        title.hashCode ^
        address.hashCode ^
        foursquareId.hashCode ^
        foursquareType.hashCode ^
        googlePlaceId.hashCode ^
        googlePlaceType.hashCode;
  }
}
