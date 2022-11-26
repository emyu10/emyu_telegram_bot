part of '../../types.dart';

/// Represents a chat member that has some additional privileges.
class ChatMemberAdministrator extends ChatMember {
  /// The member's status in the chat, always “administrator”.
  final String status;

  /// Information about the user.
  final User user;

  /// True, if the bot is allowed to edit administrator privileges of that user.
  final bool canBeEdited;

  /// True, if the user's presence in the chat is hidden.
  final bool isAnonymous;

  /// True, if the administrator can
  /// - access the
  ///   - chat event log
  ///   - chat statistics
  /// - message statistics in channels
  /// - see channel members
  /// - see anonymous administrators in supergroups
  /// - ignore slow mode
  ///
  /// Implied by any other administrator privilege.
  final bool canManageChat;

  /// True, if the administrator can delete messages of other users.
  final bool canDeleteMessages;

  /// True, if the administrator can manage video chats.
  final bool canManageVideoChats;

  /// True, if the administrator can restrict, ban or unban chat members.
  final bool canRestrictMembers;

  /// True, if the administrator can add new administrators with
  /// a subset of their own privileges or demote administrators
  /// that he has promoted, directly or indirectly
  /// (promoted by administrators that were appointed by the user).
  final bool canPromoteMembers;

  /// True, if the user is allowed to change the chat title,
  /// photo and other settings.
  final bool canChangeInfo;

  /// True, if the user is allowed to invite new users to the chat.
  final bool canInviteUsers;

  /// True, if the administrator can post in the channel; channels only.
  bool? canPostMessages;

  /// True, if the administrator can edit messages of other users
  /// and can pin messages; channels only.
  bool? canEditMessages;

  /// True, if the user is allowed to pin messages; groups and supergroups only.
  bool? canPinMessages;

  /// True, if the user is allowed to create, rename, close,
  /// and reopen forum topics; supergroups only.
  bool? canManageTopics;

  /// Custom title for this user.
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
    this.canPostMessages,
    this.canEditMessages,
    this.canPinMessages,
    this.canManageTopics,
    this.customTitle,
  });

  ChatMemberAdministrator copyWith({
    String? status,
    User? user,
    bool? canBeEdited,
    bool? isAnonymous,
    bool? canManageChat,
    bool? canDeleteMessages,
    bool? canManageVideoChats,
    bool? canRestrictMembers,
    bool? canPromoteMembers,
    bool? canChangeInfo,
    bool? canInviteUsers,
    bool? canPostMessages,
    bool? canEditMessages,
    bool? canPinMessages,
    bool? canManageTopics,
    String? customTitle,
  }) {
    return ChatMemberAdministrator(
      status: status ?? this.status,
      user: user ?? this.user,
      canBeEdited: canBeEdited ?? this.canBeEdited,
      isAnonymous: isAnonymous ?? this.isAnonymous,
      canManageChat: canManageChat ?? this.canManageChat,
      canDeleteMessages: canDeleteMessages ?? this.canDeleteMessages,
      canManageVideoChats: canManageVideoChats ?? this.canManageVideoChats,
      canRestrictMembers: canRestrictMembers ?? this.canRestrictMembers,
      canPromoteMembers: canPromoteMembers ?? this.canPromoteMembers,
      canChangeInfo: canChangeInfo ?? this.canChangeInfo,
      canInviteUsers: canInviteUsers ?? this.canInviteUsers,
      canPostMessages: canPostMessages ?? this.canPostMessages,
      canEditMessages: canEditMessages ?? this.canEditMessages,
      canPinMessages: canPinMessages ?? this.canPinMessages,
      canManageTopics: canManageTopics ?? this.canManageTopics,
      customTitle: customTitle ?? this.customTitle,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'user': user.toMap(),
      'canBeEdited': canBeEdited,
      'isAnonymous': isAnonymous,
      'canManageChat': canManageChat,
      'canDeleteMessages': canDeleteMessages,
      'canManageVideoChats': canManageVideoChats,
      'canRestrictMembers': canRestrictMembers,
      'canPromoteMembers': canPromoteMembers,
      'canChangeInfo': canChangeInfo,
      'canInviteUsers': canInviteUsers,
      'canPostMessages': canPostMessages,
      'canEditMessages': canEditMessages,
      'canPinMessages': canPinMessages,
      'canManageTopics': canManageTopics,
      'customTitle': customTitle,
    };
  }

  factory ChatMemberAdministrator.fromMap(Map<String, dynamic> map) {
    return ChatMemberAdministrator(
      status: map['status'] ?? '',
      user: User.fromMap(map['user']),
      canBeEdited: map['canBeEdited'] ?? false,
      isAnonymous: map['isAnonymous'] ?? false,
      canManageChat: map['canManageChat'] ?? false,
      canDeleteMessages: map['canDeleteMessages'] ?? false,
      canManageVideoChats: map['canManageVideoChats'] ?? false,
      canRestrictMembers: map['canRestrictMembers'] ?? false,
      canPromoteMembers: map['canPromoteMembers'] ?? false,
      canChangeInfo: map['canChangeInfo'] ?? false,
      canInviteUsers: map['canInviteUsers'] ?? false,
      canPostMessages: map['canPostMessages'],
      canEditMessages: map['canEditMessages'],
      canPinMessages: map['canPinMessages'],
      canManageTopics: map['canManageTopics'],
      customTitle: map['customTitle'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatMemberAdministrator.fromJson(String source) =>
      ChatMemberAdministrator.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ChatMemberAdministrator(status: $status, user: $user, canBeEdited: $canBeEdited, isAnonymous: $isAnonymous, canManageChat: $canManageChat, canDeleteMessages: $canDeleteMessages, canManageVideoChats: $canManageVideoChats, canRestrictMembers: $canRestrictMembers, canPromoteMembers: $canPromoteMembers, canChangeInfo: $canChangeInfo, canInviteUsers: $canInviteUsers, canPostMessages: $canPostMessages, canEditMessages: $canEditMessages, canPinMessages: $canPinMessages, canManageTopics: $canManageTopics, customTitle: $customTitle)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatMemberAdministrator &&
        other.status == status &&
        other.user == user &&
        other.canBeEdited == canBeEdited &&
        other.isAnonymous == isAnonymous &&
        other.canManageChat == canManageChat &&
        other.canDeleteMessages == canDeleteMessages &&
        other.canManageVideoChats == canManageVideoChats &&
        other.canRestrictMembers == canRestrictMembers &&
        other.canPromoteMembers == canPromoteMembers &&
        other.canChangeInfo == canChangeInfo &&
        other.canInviteUsers == canInviteUsers &&
        other.canPostMessages == canPostMessages &&
        other.canEditMessages == canEditMessages &&
        other.canPinMessages == canPinMessages &&
        other.canManageTopics == canManageTopics &&
        other.customTitle == customTitle;
  }

  @override
  int get hashCode {
    return status.hashCode ^
        user.hashCode ^
        canBeEdited.hashCode ^
        isAnonymous.hashCode ^
        canManageChat.hashCode ^
        canDeleteMessages.hashCode ^
        canManageVideoChats.hashCode ^
        canRestrictMembers.hashCode ^
        canPromoteMembers.hashCode ^
        canChangeInfo.hashCode ^
        canInviteUsers.hashCode ^
        canPostMessages.hashCode ^
        canEditMessages.hashCode ^
        canPinMessages.hashCode ^
        canManageTopics.hashCode ^
        customTitle.hashCode;
  }
}
