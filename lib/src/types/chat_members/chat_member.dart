part of '../../types.dart';

/// This object contains information about one member of a chat.
///
/// Currently, the following 6 types of chat members are supported:
/// - [ChatMemberOwner]
/// - [ChatMemberAdministrator]
/// - [ChatMemberMember]
/// - [ChatMemberRestricted]
/// - [ChatMemberLeft]
/// - [ChatMemberBanned]
class ChatMember {
  ChatMember();

  Map toMap() => {};

  factory ChatMember.fromMap(Map map) => ChatMember();
}
