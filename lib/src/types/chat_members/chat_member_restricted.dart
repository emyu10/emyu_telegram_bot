part of '../../types.dart';

class ChatMemberRestricted extends ChatMember {
  final String status;
  final User user;
  final bool isMember;
  final bool canChangeInfo;
  final bool canInviteUsers;
  final bool canPinMessages;
  final bool canSendMessages;
  final bool canSendMediaMessages;
  final bool canSendPolls;
  final bool canSendOtherMessages;
  final bool canAddWebPagePreviews;
  final int untilDate;

  ChatMemberRestricted({
    required this.status,
    required this.user,
    required this.isMember,
    required this.canChangeInfo,
    required this.canInviteUsers,
    required this.canPinMessages,
    required this.canSendMessages,
    required this.canSendMediaMessages,
    required this.canSendPolls,
    required this.canSendOtherMessages,
    required this.canAddWebPagePreviews,
    required this.untilDate,
  });
}
