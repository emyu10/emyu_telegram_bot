part of '../types.dart';

class MessageAutoDeleteTimerChanged {
  final int messageAutoDeleteTime;

  MessageAutoDeleteTimerChanged({
    required this.messageAutoDeleteTime,
  });

  MessageAutoDeleteTimerChanged copyWith({
    int? messageAutoDeleteTime,
  }) {
    return MessageAutoDeleteTimerChanged(
      messageAutoDeleteTime:
          messageAutoDeleteTime ?? this.messageAutoDeleteTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'message_auto_delete_time': messageAutoDeleteTime,
    };
  }

  factory MessageAutoDeleteTimerChanged.fromMap(Map<String, dynamic> map) {
    return MessageAutoDeleteTimerChanged(
      messageAutoDeleteTime: map['message_auto_delete_time']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory MessageAutoDeleteTimerChanged.fromJson(String source) =>
      MessageAutoDeleteTimerChanged.fromMap(json.decode(source));

  @override
  String toString() =>
      'MessageAutoDeleteTimerChanged(messageAutoDeleteTime: $messageAutoDeleteTime)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MessageAutoDeleteTimerChanged &&
        other.messageAutoDeleteTime == messageAutoDeleteTime;
  }

  @override
  int get hashCode => messageAutoDeleteTime.hashCode;
}
