part of '../../types.dart';

class ChatMemberBanned extends ChatMember {
  final String status;
  final User user;
  final int untilDate;

  ChatMemberBanned({
    required this.status,
    required this.user,
    required this.untilDate,
  });
}
