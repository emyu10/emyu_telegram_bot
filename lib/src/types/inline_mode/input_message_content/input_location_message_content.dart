part of '../../../types.dart';

class InputLocationMessageContent extends InputMessageContent {
  final double latitude;
  final double longitude;
  double? horizontalAccuracy;
  int? livePeriod;
  int? heading;
  int? proximityAlertRadius;
  InputLocationMessageContent({
    required this.latitude,
    required this.longitude,
    this.horizontalAccuracy,
    this.livePeriod,
    this.heading,
    this.proximityAlertRadius,
  });

  InputLocationMessageContent copyWith({
    double? latitude,
    double? longitude,
    double? horizontalAccuracy,
    int? livePeriod,
    int? heading,
    int? proximityAlertRadius,
  }) {
    return InputLocationMessageContent(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      horizontalAccuracy: horizontalAccuracy ?? this.horizontalAccuracy,
      livePeriod: livePeriod ?? this.livePeriod,
      heading: heading ?? this.heading,
      proximityAlertRadius: proximityAlertRadius ?? this.proximityAlertRadius,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'horizontalAccuracy': horizontalAccuracy,
      'livePeriod': livePeriod,
      'heading': heading,
      'proximityAlertRadius': proximityAlertRadius,
    };
  }

  factory InputLocationMessageContent.fromMap(Map<String, dynamic> map) {
    return InputLocationMessageContent(
      latitude: map['latitude']?.toDouble() ?? 0.0,
      longitude: map['longitude']?.toDouble() ?? 0.0,
      horizontalAccuracy: map['horizontalAccuracy']?.toDouble(),
      livePeriod: map['livePeriod']?.toInt(),
      heading: map['heading']?.toInt(),
      proximityAlertRadius: map['proximityAlertRadius']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory InputLocationMessageContent.fromJson(String source) =>
      InputLocationMessageContent.fromMap(json.decode(source));

  @override
  String toString() {
    return 'InputLocationMessageContent(latitude: $latitude, longitude: $longitude, horizontalAccuracy: $horizontalAccuracy, livePeriod: $livePeriod, heading: $heading, proximityAlertRadius: $proximityAlertRadius)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is InputLocationMessageContent &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.horizontalAccuracy == horizontalAccuracy &&
        other.livePeriod == livePeriod &&
        other.heading == heading &&
        other.proximityAlertRadius == proximityAlertRadius;
  }

  @override
  int get hashCode {
    return latitude.hashCode ^
        longitude.hashCode ^
        horizontalAccuracy.hashCode ^
        livePeriod.hashCode ^
        heading.hashCode ^
        proximityAlertRadius.hashCode;
  }
}
