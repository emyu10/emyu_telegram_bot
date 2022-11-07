part of '../types.dart';

class ProximityAlertTriggered {
  final User traveler;
  final User watcher;
  final int distance;

  ProximityAlertTriggered({
    required this.traveler,
    required this.watcher,
    required this.distance,
  });
}
