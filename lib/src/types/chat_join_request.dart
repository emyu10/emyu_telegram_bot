part of '../types.dart';

class ChatJoinRequest {
  final Chat chat;
  final User from;
  final int date;
  String? bio;
  ChatInviteLink? inviteLink;

  ChatJoinRequest({
    required this.chat,
    required this.from,
    required this.date,
    this.bio,
    this.inviteLink,
  });

  ChatJoinRequest copyWith({
    Chat? chat,
    User? from,
    int? date,
    String? bio,
    ChatInviteLink? inviteLink,
  }) {
    return ChatJoinRequest(
      chat: chat ?? this.chat,
      from: from ?? this.from,
      date: date ?? this.date,
      bio: bio ?? this.bio,
      inviteLink: inviteLink ?? this.inviteLink,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'chat': chat.toMap(),
      'from': from.toMap(),
      'date': date,
      'bio': bio,
      'invite_link': inviteLink?.toMap(),
    };
  }

  factory ChatJoinRequest.fromMap(Map<String, dynamic> map) {
    return ChatJoinRequest(
      chat: Chat.fromMap(map['chat']),
      from: User.fromMap(map['from']),
      date: map['date']?.toInt() ?? 0,
      bio: map['bio'],
      inviteLink: map['invite_link'] != null
          ? ChatInviteLink.fromMap(map['invite_link'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatJoinRequest.fromJson(String source) =>
      ChatJoinRequest.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ChatJoinRequest(chat: $chat, from: $from, date: $date, bio: $bio, inviteLink: $inviteLink)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatJoinRequest &&
        other.chat == chat &&
        other.from == from &&
        other.date == date &&
        other.bio == bio &&
        other.inviteLink == inviteLink;
  }

  @override
  int get hashCode {
    return chat.hashCode ^
        from.hashCode ^
        date.hashCode ^
        bio.hashCode ^
        inviteLink.hashCode;
  }
}
