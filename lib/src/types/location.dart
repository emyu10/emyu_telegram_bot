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
  });
}
