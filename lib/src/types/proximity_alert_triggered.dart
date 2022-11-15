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

  ProximityAlertTriggered copyWith({
    User? traveler,
    User? watcher,
    int? distance,
  }) {
    return ProximityAlertTriggered(
      traveler: traveler ?? this.traveler,
      watcher: watcher ?? this.watcher,
      distance: distance ?? this.distance,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'traveler': traveler.toMap(),
      'watcher': watcher.toMap(),
      'distance': distance,
    };
  }

  factory ProximityAlertTriggered.fromMap(Map<String, dynamic> map) {
    return ProximityAlertTriggered(
      traveler: User.fromMap(map['traveler']),
      watcher: User.fromMap(map['watcher']),
      distance: map['distance']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProximityAlertTriggered.fromJson(String source) =>
      ProximityAlertTriggered.fromMap(json.decode(source));

  @override
  String toString() =>
      'ProximityAlertTriggered(traveler: $traveler, watcher: $watcher, distance: $distance)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProximityAlertTriggered &&
        other.traveler == traveler &&
        other.watcher == watcher &&
        other.distance == distance;
  }

  @override
  int get hashCode => traveler.hashCode ^ watcher.hashCode ^ distance.hashCode;
}
