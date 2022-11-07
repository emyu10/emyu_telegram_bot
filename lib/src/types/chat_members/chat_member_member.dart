part of '../../types.dart';

class ChatMemberMember extends ChatMember {
  final String status;
  final User user;

  ChatMemberMember({
    required this.status,
    required this.user,
  });
}
