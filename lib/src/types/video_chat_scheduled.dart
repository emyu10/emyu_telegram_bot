part of '../types.dart';

class VideoChatScheduled {
  final int startDate;

  VideoChatScheduled({
    required this.startDate,
  });

  VideoChatScheduled copyWith({
    int? startDate,
  }) {
    return VideoChatScheduled(
      startDate: startDate ?? this.startDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'start_date': startDate,
    };
  }

  factory VideoChatScheduled.fromMap(Map<String, dynamic> map) {
    return VideoChatScheduled(
      startDate: map['start_date']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoChatScheduled.fromJson(String source) =>
      VideoChatScheduled.fromMap(json.decode(source));

  @override
  String toString() => 'VideoChatScheduled(startDate: $startDate)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VideoChatScheduled && other.startDate == startDate;
  }

  @override
  int get hashCode => startDate.hashCode;
}
