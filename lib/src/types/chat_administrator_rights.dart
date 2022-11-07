part of '../types.dart';

class ChatAdministratorRights {
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

  ChatAdministratorRights({
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
