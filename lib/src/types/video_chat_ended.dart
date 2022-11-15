part of '../types.dart';

class VideoChatEnded {
  final int duration;

  VideoChatEnded({
    required this.duration,
  });

  VideoChatEnded copyWith({
    int? duration,
  }) {
    return VideoChatEnded(
      duration: duration ?? this.duration,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'duration': duration,
    };
  }

  factory VideoChatEnded.fromMap(Map<String, dynamic> map) {
    return VideoChatEnded(
      duration: map['duration']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoChatEnded.fromJson(String source) =>
      VideoChatEnded.fromMap(json.decode(source));

  @override
  String toString() => 'VideoChatEnded(duration: $duration)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VideoChatEnded && other.duration == duration;
  }

  @override
  int get hashCode => duration.hashCode;
}
