part of '../../types.dart';

class ChatMemberLeft extends ChatMember {
  final String status;
  final User user;

  ChatMemberLeft({
    required this.status,
    required this.user,
  });
}
