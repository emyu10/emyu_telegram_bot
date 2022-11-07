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
  });
}
