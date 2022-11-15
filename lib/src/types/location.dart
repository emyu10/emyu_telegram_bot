part of '../types.dart';

class Location {
  final double longitude;
  final double latitude;
  double? horizontalAccuracy;
  int? livePeriod;
  int? heading;
  int? proximityAlertRadius;

  Location({
    required this.longitude,
    required this.latitude,
    this.horizontalAccuracy,
    this.livePeriod,
    this.heading,
    this.proximityAlertRadius,
  });

  Location copyWith({
    double? longitude,
    double? latitude,
    double? horizontalAccuracy,
    int? livePeriod,
    int? heading,
    int? proximityAlertRadius,
  }) {
    return Location(
      longitude: longitude ?? this.longitude,
      latitude: latitude ?? this.latitude,
      horizontalAccuracy: horizontalAccuracy ?? this.horizontalAccuracy,
      livePeriod: livePeriod ?? this.livePeriod,
      heading: heading ?? this.heading,
      proximityAlertRadius: proximityAlertRadius ?? this.proximityAlertRadius,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'longitude': longitude,
      'latitude': latitude,
      'horizontal_accuracy': horizontalAccuracy,
      'live_period': livePeriod,
      'heading': heading,
      'proximity_alert_radius': proximityAlertRadius,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      longitude: map['longitude']?.toDouble() ?? 0.0,
      latitude: map['latitude']?.toDouble() ?? 0.0,
      horizontalAccuracy: map['horizontal_accuracy']?.toDouble(),
      livePeriod: map['live_period']?.toInt(),
      heading: map['heading']?.toInt(),
      proximityAlertRadius: map['proximity_alert_radius']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Location(longitude: $longitude, latitude: $latitude, horizontalAccuracy: $horizontalAccuracy, livePeriod: $livePeriod, heading: $heading, proximityAlertRadius: $proximityAlertRadius)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Location &&
        other.longitude == longitude &&
        other.latitude == latitude &&
        other.horizontalAccuracy == horizontalAccuracy &&
        other.livePeriod == livePeriod &&
        other.heading == heading &&
        other.proximityAlertRadius == proximityAlertRadius;
  }

  @override
  int get hashCode {
    return longitude.hashCode ^
        latitude.hashCode ^
        horizontalAccuracy.hashCode ^
        livePeriod.hashCode ^
        heading.hashCode ^
        proximityAlertRadius.hashCode;
  }
}
