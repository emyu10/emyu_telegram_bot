part of '../../types.dart';

/// Represents a chat member that was banned in the chat and can't
/// return to the chat or view chat messages.
class ChatMemberBanned extends ChatMember {
  /// The member's status in the chat, always “kicked”.
  final String status;

  /// Information about the user.
  final User user;

  /// Date when restrictions will be lifted for this user.
  ///
  /// Unix time. If 0, then the user is banned forever.
  final int untilDate;
  ChatMemberBanned({
    required this.status,
    required this.user,
    required this.untilDate,
  });

  ChatMemberBanned copyWith({
    String? status,
    User? user,
    int? untilDate,
  }) {
    return ChatMemberBanned(
      status: status ?? this.status,
      user: user ?? this.user,
      untilDate: untilDate ?? this.untilDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'user': user.toMap(),
      'until_date': untilDate,
    };
  }

  factory ChatMemberBanned.fromMap(Map<String, dynamic> map) {
    return ChatMemberBanned(
      status: map['status'] ?? '',
      user: User.fromMap(map['user']),
      untilDate: map['until_date']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatMemberBanned.fromJson(String source) =>
      ChatMemberBanned.fromMap(json.decode(source));

  @override
  String toString() =>
      'ChatMemberBanned(status: $status, user: $user, untilDate: $untilDate)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatMemberBanned &&
        other.status == status &&
        other.user == user &&
        other.untilDate == untilDate;
  }

  @override
  int get hashCode => status.hashCode ^ user.hashCode ^ untilDate.hashCode;
}
