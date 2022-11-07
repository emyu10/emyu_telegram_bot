part of '../../types.dart';

class ChatMemberAdministrator extends ChatMember {
  final String status;
  final User user;
  final bool canBeEdited;
  final bool isAnonymous;
  final bool canManageChat;
  final bool canDeleteMessages;
  final bool canManageVideoChats;
  final bool canRestrictMembers;
  final bool canPromoteMembers;
  final bool canChangeInfo;
  final bool canInviteUsers;
  final bool canPostMessages;
  final bool canEditMessages;
  final bool canPinMessages;
  String? customTitle;

  ChatMemberAdministrator({
    required this.status,
    required this.user,
    required this.canBeEdited,
    required this.isAnonymous,
    required this.canManageChat,
    required this.canDeleteMessages,
    required this.canManageVideoChats,
    required this.canRestrictMembers,
    required this.canPromoteMembers,
    required this.canChangeInfo,
    required this.canInviteUsers,
    required this.canPostMessages,
    required this.canEditMessages,
    required this.canPinMessages,
  });
}
