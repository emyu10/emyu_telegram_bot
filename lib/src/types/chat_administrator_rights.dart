part of '../types.dart';

/// Represents the rights of an administrator in a chat.
class ChatAdministratorRights {
  /// True, if the user's presence in the chat is hidden.
  final bool isAnonymous;

  /// True, if the administrator can access the
  /// - chat event log
  /// - chat statistics
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

  ChatAdministratorRights({
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
  });

  ChatAdministratorRights copyWith({
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
  }) {
    return ChatAdministratorRights(
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
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'is_anonymous': isAnonymous,
      'can_manage_chat': canManageChat,
      'can_delete_messages': canDeleteMessages,
      'can_manage_video_chats': canManageVideoChats,
      'can_restrict_members': canRestrictMembers,
      'can_promote_members': canPromoteMembers,
      'can_change_info': canChangeInfo,
      'can_invite_users': canInviteUsers,
      'can_post_messages': canPostMessages,
      'can_edit_messages': canEditMessages,
      'can_pin_messages': canPinMessages,
      'can_manage_topics': canManageTopics,
    };
  }

  factory ChatAdministratorRights.fromMap(Map<String, dynamic> map) {
    return ChatAdministratorRights(
      isAnonymous: map['is_anonymous'] ?? false,
      canManageChat: map['can_manage_chat'] ?? false,
      canDeleteMessages: map['can_delete_messages'] ?? false,
      canManageVideoChats: map['can_manage_video_chats'] ?? false,
      canRestrictMembers: map['can_restrict_members'] ?? false,
      canPromoteMembers: map['can_promote_members'] ?? false,
      canChangeInfo: map['can_change_info'] ?? false,
      canInviteUsers: map['can_invite_users'] ?? false,
      canPostMessages: map['can_post_messages'],
      canEditMessages: map['can_edit_messages'],
      canPinMessages: map['can_pin_messages'],
      canManageTopics: map['can_manage_topics'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatAdministratorRights.fromJson(String source) =>
      ChatAdministratorRights.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ChatAdministratorRights(isAnonymous: $isAnonymous, canManageChat: $canManageChat, canDeleteMessages: $canDeleteMessages, canManageVideoChats: $canManageVideoChats, canRestrictMembers: $canRestrictMembers, canPromoteMembers: $canPromoteMembers, canChangeInfo: $canChangeInfo, canInviteUsers: $canInviteUsers, canPostMessages: $canPostMessages, canEditMessages: $canEditMessages, canPinMessages: $canPinMessages, canManageTopics: $canManageTopics)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatAdministratorRights &&
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
        other.canManageTopics == canManageTopics;
  }

  @override
  int get hashCode {
    return isAnonymous.hashCode ^
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
        canManageTopics.hashCode;
  }
}
