part of '../types.dart';

class PollOption {
  String? text;
  final int voterCount;

  PollOption({
    this.text,
    required this.voterCount,
  });

  PollOption copyWith({
    String? text,
    int? voterCount,
  }) {
    return PollOption(
      text: text ?? this.text,
      voterCount: voterCount ?? this.voterCount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'voterCount': voterCount,
    };
  }

  factory PollOption.fromMap(Map<String, dynamic> map) {
    return PollOption(
      text: map['text'],
      voterCount: map['voterCount']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PollOption.fromJson(String source) =>
      PollOption.fromMap(json.decode(source));

  @override
  String toString() => 'PollOption(text: $text, voterCount: $voterCount)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PollOption &&
        other.text == text &&
        other.voterCount == voterCount;
  }

  @override
  int get hashCode => text.hashCode ^ voterCount.hashCode;
}
