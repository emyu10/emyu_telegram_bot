part of '../../types.dart';

class ChatMemberOwner extends ChatMember {
  final String status;
  final User user;
  final bool isAnonymous;
  String? customTitle;

  ChatMemberOwner({
    required this.status,
    required this.user,
    required this.isAnonymous,
  });
}
