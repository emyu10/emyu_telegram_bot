part of '../types.dart';

class ChatMemberUpdated {
  final Chat chat;
  final User from;
  final int date;
  final ChatMember oldChatMember;
  final ChatMember newChatMember;
  ChatInviteLink? inviteLink;

  ChatMemberUpdated({
    required this.chat,
    required this.from,
    required this.date,
    required this.oldChatMember,
    required this.newChatMember,
    this.inviteLink,
  });

  ChatMemberUpdated copyWith({
    Chat? chat,
    User? from,
    int? date,
    ChatMember? oldChatMember,
    ChatMember? newChatMember,
    ChatInviteLink? inviteLink,
  }) {
    return ChatMemberUpdated(
      chat: chat ?? this.chat,
      from: from ?? this.from,
      date: date ?? this.date,
      oldChatMember: oldChatMember ?? this.oldChatMember,
      newChatMember: newChatMember ?? this.newChatMember,
      inviteLink: inviteLink ?? this.inviteLink,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'chat': chat.toMap(),
      'from': from.toMap(),
      'date': date,
      'old_chat_member': oldChatMember.toMap(),
      'new_chat_member': newChatMember.toMap(),
      'invite_link': inviteLink?.toMap(),
    };
  }

  factory ChatMemberUpdated.fromMap(Map<String, dynamic> map) {
    return ChatMemberUpdated(
      chat: Chat.fromMap(map['chat']),
      from: User.fromMap(map['from']),
      date: map['date']?.toInt() ?? 0,
      oldChatMember: ChatMember.fromMap(map['old_chat_member']),
      newChatMember: ChatMember.fromMap(map['new_chat_member']),
      inviteLink: map['invite_link'] != null
          ? ChatInviteLink.fromMap(map['invite_link'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatMemberUpdated.fromJson(String source) =>
      ChatMemberUpdated.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ChatMemberUpdated(chat: $chat, from: $from, date: $date, oldChatMember: $oldChatMember, newChatMember: $newChatMember, inviteLink: $inviteLink)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatMemberUpdated &&
        other.chat == chat &&
        other.from == from &&
        other.date == date &&
        other.oldChatMember == oldChatMember &&
        other.newChatMember == newChatMember &&
        other.inviteLink == inviteLink;
  }

  @override
  int get hashCode {
    return chat.hashCode ^
        from.hashCode ^
        date.hashCode ^
        oldChatMember.hashCode ^
        newChatMember.hashCode ^
        inviteLink.hashCode;
  }
}
