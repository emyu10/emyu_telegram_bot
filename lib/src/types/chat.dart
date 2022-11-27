part of '../types.dart';

/// This object represents a chat.
class Chat {
  /// Unique identifier for this chat.
  ///
  /// This number may have more than 32 significant bits.
  /// It has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this identifier.
  final int id;

  /// Type of chat, can be either “private”, “group”, “supergroup” or “channel”.
  final String type;

  /// Title, for supergroups, channels and group chats.
  String? title;

  /// Username, for private chats, supergroups and channels if available.
  String? username;

  /// First name of the other party in a private chat.
  String? fistName;

  /// Last name of the other party in a private chat.
  String? lastName;

  /// True, if the supergroup chat is a forum (has topics enabled)
  bool? isForum;

  /// Chat photo. Returned only in getChat.
  ChatPhoto? photo;

  /// If non-empty, the list of all active chat usernames.
  ///
  /// For private chats, supergroups and channels.
  /// Returned only in getChat.
  List<String>? activeUsernames;

  /// Custom emoji identifier of emoji status of the other party in a private chat.
  ///
  /// Returned only in getChat.
  String? emojiStatusCustomEmojiId;

  /// Bio of the other party in a private chat. Returned only in getChat.
  String? bio;

  /// True, if privacy settings of the other party in the private
  /// chat allows to use tg://user?id=<user_id> links only in chats with the user.
  ///
  /// Returned only in getChat.
  bool? hasPrivateForwards;

  /// True, if the privacy settings of the other party restrict sending
  /// voice and video note messages in the private chat.
  ///
  /// Returned only in getChat.
  bool? hasRestrictedVoiceAndVideoMessages;

  /// True, if users need to join the supergroup before they can send messages.
  ///
  /// Returned only in getChat.
  bool? joinToSendMessages;

  /// True, if all users directly joining the supergroup need to be approved
  /// by supergroup administrators. Returned only in getChat.
  bool? joinByRequest;

  /// Description, for groups, supergroups and channel chats.
  ///
  /// Returned only in getChat.
  String? description;

  /// Primary invite link, for groups, supergroups and channel chats.
  ///
  /// Returned only in getChat.
  String? inviteLink;

  /// The most recent pinned message (by sending date).
  ///
  /// Returned only in getChat.
  Message? pinnedMessage;

  /// Default chat member permissions, for groups and supergroups.
  ///
  /// Returned only in getChat.
  ChatPermissions? permissions;

  /// For supergroups, the minimum allowed delay between consecutive messages
  /// sent by each unpriviledged user; in seconds.
  ///
  /// Returned only in getChat.
  int? slowModeDelay;

  /// The time after which all messages sent to the chat will be
  /// automatically deleted; in seconds.
  ///
  /// Returned only in getChat.
  int? messageAutoDeleteTime;

  /// True, if messages from the chat can't be forwarded to other chats.
  ///
  /// Returned only in getChat.
  bool? hasProtectedContent;

  /// For supergroups, name of group sticker set.
  ///
  /// Returned only in getChat.
  String? stickerSetName;

  /// True, if the bot can change the group sticker set.
  ///
  /// Returned only in getChat.
  bool? canSetStickerSet;

  /// Unique identifier for the linked chat, i.e. the discussion group
  /// identifier for a channel and vice versa; for supergroups
  /// and channel chats.
  ///
  /// This number may have more than 32 significant bits.
  /// It has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this identifier.
  int? linkedChatId;

  /// For supergroups, the location to which the supergroup is connected.
  ///
  /// Returned only in getChat.
  ChatLocation? location;

  Chat({
    required this.id,
    required this.type,
    this.title,
    this.username,
    this.fistName,
    this.lastName,
    this.isForum,
    this.photo,
    this.activeUsernames,
    this.emojiStatusCustomEmojiId,
    this.bio,
    this.hasPrivateForwards,
    this.hasRestrictedVoiceAndVideoMessages,
    this.joinToSendMessages,
    this.joinByRequest,
    this.description,
    this.inviteLink,
    this.pinnedMessage,
    this.slowModeDelay,
    this.messageAutoDeleteTime,
    this.hasProtectedContent,
    this.stickerSetName,
    this.canSetStickerSet,
    this.linkedChatId,
  });

  Chat copyWith({
    int? id,
    String? type,
    String? title,
    String? username,
    String? fistName,
    String? lastName,
    bool? isForum,
    ChatPhoto? photo,
    List<String>? activeUsernames,
    String? emojiStatusCustomEmojiId,
    String? bio,
    bool? hasPrivateForwards,
    bool? hasRestrictedVoiceAndVideoMessages,
    bool? joinToSendMessages,
    bool? joinByRequest,
    String? description,
    String? inviteLink,
    Message? pinnedMessage,
    int? slowModeDelay,
    int? messageAutoDeleteTime,
    bool? hasProtectedContent,
    String? stickerSetName,
    bool? canSetStickerSet,
    int? linkedChatId,
  }) {
    return Chat(
      id: id ?? this.id,
      type: type ?? this.type,
      title: title ?? this.title,
      username: username ?? this.username,
      fistName: fistName ?? this.fistName,
      lastName: lastName ?? this.lastName,
      isForum: isForum ?? this.isForum,
      photo: photo ?? this.photo,
      activeUsernames: activeUsernames ?? this.activeUsernames,
      emojiStatusCustomEmojiId:
          emojiStatusCustomEmojiId ?? this.emojiStatusCustomEmojiId,
      bio: bio ?? this.bio,
      hasPrivateForwards: hasPrivateForwards ?? this.hasPrivateForwards,
      hasRestrictedVoiceAndVideoMessages: hasRestrictedVoiceAndVideoMessages ??
          this.hasRestrictedVoiceAndVideoMessages,
      joinToSendMessages: joinToSendMessages ?? this.joinToSendMessages,
      joinByRequest: joinByRequest ?? this.joinByRequest,
      description: description ?? this.description,
      inviteLink: inviteLink ?? this.inviteLink,
      pinnedMessage: pinnedMessage ?? this.pinnedMessage,
      slowModeDelay: slowModeDelay ?? this.slowModeDelay,
      messageAutoDeleteTime:
          messageAutoDeleteTime ?? this.messageAutoDeleteTime,
      hasProtectedContent: hasProtectedContent ?? this.hasProtectedContent,
      stickerSetName: stickerSetName ?? this.stickerSetName,
      canSetStickerSet: canSetStickerSet ?? this.canSetStickerSet,
      linkedChatId: linkedChatId ?? this.linkedChatId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'title': title,
      'username': username,
      'fist_name': fistName,
      'last_name': lastName,
      'is_forum': isForum,
      'photo': photo?.toMap(),
      'active_usernames': activeUsernames,
      'emoji_status_custom_emoji_id': emojiStatusCustomEmojiId,
      'bio': bio,
      'has_private_forwards': hasPrivateForwards,
      'has_restricted_voice_and_video_messages':
          hasRestrictedVoiceAndVideoMessages,
      'join_to_send_messages': joinToSendMessages,
      'join_by_request': joinByRequest,
      'description': description,
      'invite_link': inviteLink,
      'pinned_message': pinnedMessage?.toMap(),
      'slow_mode_delay': slowModeDelay,
      'message_auto_delete_time': messageAutoDeleteTime,
      'has_protected_content': hasProtectedContent,
      'sticker_set_name': stickerSetName,
      'can_set_sticker_set': canSetStickerSet,
      'linked_chat_id': linkedChatId,
    };
  }

  factory Chat.fromMap(Map<String, dynamic> map) {
    return Chat(
      id: map['id']?.toInt() ?? 0,
      type: map['type'] ?? '',
      title: map['title'],
      username: map['username'],
      fistName: map['fist_name'],
      lastName: map['last_name'],
      isForum: map['is_forum'],
      photo: map['photo'] != null ? ChatPhoto.fromMap(map['photo']) : null,
      activeUsernames: map['active_usernames'] != null
          ? List<String>.from(map['active_usernames'])
          : null,
      emojiStatusCustomEmojiId: map['emoji_status_custom_emoji_id'],
      bio: map['bio'],
      hasPrivateForwards: map['has_private_forwards'],
      hasRestrictedVoiceAndVideoMessages:
          map['has_restricted_voice_and_video_messages'],
      joinToSendMessages: map['join_to_send_messages'],
      joinByRequest: map['join_by_request'],
      description: map['description'],
      inviteLink: map['invite_link'],
      pinnedMessage: map['pinned_message'] != null
          ? Message.fromMap(map['pinned_message'])
          : null,
      slowModeDelay: map['slow_mode_delay']?.toInt(),
      messageAutoDeleteTime: map['message_auto_delete_time']?.toInt(),
      hasProtectedContent: map['has_protected_content'],
      stickerSetName: map['sticker_set_name'],
      canSetStickerSet: map['can_set_sticker_set'],
      linkedChatId: map['linked_chat_id']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Chat.fromJson(String source) => Chat.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Chat(id: $id, type: $type, title: $title, username: $username, fistName: $fistName, lastName: $lastName, isForum: $isForum, photo: $photo, activeUsernames: $activeUsernames, emojiStatusCustomEmojiId: $emojiStatusCustomEmojiId, bio: $bio, hasPrivateForwards: $hasPrivateForwards, hasRestrictedVoiceAndVideoMessages: $hasRestrictedVoiceAndVideoMessages, joinToSendMessages: $joinToSendMessages, joinByRequest: $joinByRequest, description: $description, inviteLink: $inviteLink, pinnedMessage: $pinnedMessage, slowModeDelay: $slowModeDelay, messageAutoDeleteTime: $messageAutoDeleteTime, hasProtectedContent: $hasProtectedContent, stickerSetName: $stickerSetName, canSetStickerSet: $canSetStickerSet, linkedChatId: $linkedChatId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Chat &&
        other.id == id &&
        other.type == type &&
        other.title == title &&
        other.username == username &&
        other.fistName == fistName &&
        other.lastName == lastName &&
        other.isForum == isForum &&
        other.photo == photo &&
        other.activeUsernames == activeUsernames &&
        other.emojiStatusCustomEmojiId == emojiStatusCustomEmojiId &&
        other.bio == bio &&
        other.hasPrivateForwards == hasPrivateForwards &&
        other.hasRestrictedVoiceAndVideoMessages ==
            hasRestrictedVoiceAndVideoMessages &&
        other.joinToSendMessages == joinToSendMessages &&
        other.joinByRequest == joinByRequest &&
        other.description == description &&
        other.inviteLink == inviteLink &&
        other.pinnedMessage == pinnedMessage &&
        other.slowModeDelay == slowModeDelay &&
        other.messageAutoDeleteTime == messageAutoDeleteTime &&
        other.hasProtectedContent == hasProtectedContent &&
        other.stickerSetName == stickerSetName &&
        other.canSetStickerSet == canSetStickerSet &&
        other.linkedChatId == linkedChatId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        type.hashCode ^
        title.hashCode ^
        username.hashCode ^
        fistName.hashCode ^
        lastName.hashCode ^
        isForum.hashCode ^
        photo.hashCode ^
        activeUsernames.hashCode ^
        emojiStatusCustomEmojiId.hashCode ^
        bio.hashCode ^
        hasPrivateForwards.hashCode ^
        hasRestrictedVoiceAndVideoMessages.hashCode ^
        joinToSendMessages.hashCode ^
        joinByRequest.hashCode ^
        description.hashCode ^
        inviteLink.hashCode ^
        pinnedMessage.hashCode ^
        slowModeDelay.hashCode ^
        messageAutoDeleteTime.hashCode ^
        hasProtectedContent.hashCode ^
        stickerSetName.hashCode ^
        canSetStickerSet.hashCode ^
        linkedChatId.hashCode;
  }
}
