part of '../types.dart';

class VideoChatParticipantsInvited {
  final List<User> users;

  VideoChatParticipantsInvited({
    required this.users,
  });

  VideoChatParticipantsInvited copyWith({
    List<User>? users,
  }) {
    return VideoChatParticipantsInvited(
      users: users ?? this.users,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'users': users.map((x) => x.toMap()).toList(),
    };
  }

  factory VideoChatParticipantsInvited.fromMap(Map<String, dynamic> map) {
    return VideoChatParticipantsInvited(
      users: List<User>.from(map['users']?.map((x) => User.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoChatParticipantsInvited.fromJson(String source) =>
      VideoChatParticipantsInvited.fromMap(json.decode(source));

  @override
  String toString() => 'VideoChatParticipantsInvited(users: $users)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is VideoChatParticipantsInvited &&
        listEquals(other.users, users);
  }

  @override
  int get hashCode => users.hashCode;
}
