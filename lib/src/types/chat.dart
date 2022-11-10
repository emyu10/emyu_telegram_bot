part of '../types.dart';

class Chat {
  final int id;
  final String type;
  String? title;
  String? username;
  String? fistName;
  String? lastName;
  ChatPhoto? photo;
  String? bio;
  bool? hasPrivateForwards;
  bool? hasRestrictedVoiceAndVideoMessages;
  bool? joinToSendMessages;
  bool? joinByRequest;
  String? description;
  String? inviteLink;
  Message? pinnedMessage;
  ChatPermissions? permissions;
  int? slowModeDelay;
  int? messageAutoDeleteTime;
  bool? hasProtectedContent;
  String? stickerSetName;
  bool? canSetStickerSet;
  int? linkedChatId;
  ChatLocation? location;

  Chat({
    required this.id,
    required this.type,
    this.title,
    this.username,
    this.fistName,
    this.lastName,
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
      'fistName': fistName,
      'lastName': lastName,
      'bio': bio,
      'hasPrivateForwards': hasPrivateForwards,
      'hasRestrictedVoiceAndVideoMessages': hasRestrictedVoiceAndVideoMessages,
      'joinToSendMessages': joinToSendMessages,
      'joinByRequest': joinByRequest,
      'description': description,
      'inviteLink': inviteLink,
      'pinnedMessage': pinnedMessage?.toMap(),
      'slowModeDelay': slowModeDelay,
      'messageAutoDeleteTime': messageAutoDeleteTime,
      'hasProtectedContent': hasProtectedContent,
      'stickerSetName': stickerSetName,
      'canSetStickerSet': canSetStickerSet,
      'linkedChatId': linkedChatId,
    };
  }

  factory Chat.fromMap(Map<String, dynamic> map) {
    return Chat(
      id: map['id']?.toInt() ?? 0,
      type: map['type'] ?? '',
      title: map['title'],
      username: map['username'],
      fistName: map['fistName'],
      lastName: map['lastName'],
      bio: map['bio'],
      hasPrivateForwards: map['hasPrivateForwards'],
      hasRestrictedVoiceAndVideoMessages:
          map['hasRestrictedVoiceAndVideoMessages'],
      joinToSendMessages: map['joinToSendMessages'],
      joinByRequest: map['joinByRequest'],
      description: map['description'],
      inviteLink: map['inviteLink'],
      pinnedMessage: map['pinnedMessage'] != null
          ? Message.fromMap(map['pinnedMessage'])
          : null,
      slowModeDelay: map['slowModeDelay']?.toInt(),
      messageAutoDeleteTime: map['messageAutoDeleteTime']?.toInt(),
      hasProtectedContent: map['hasProtectedContent'],
      stickerSetName: map['stickerSetName'],
      canSetStickerSet: map['canSetStickerSet'],
      linkedChatId: map['linkedChatId']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Chat.fromJson(String source) => Chat.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Chat(id: $id, type: $type, title: $title, username: $username, fistName: $fistName, lastName: $lastName, bio: $bio, hasPrivateForwards: $hasPrivateForwards, hasRestrictedVoiceAndVideoMessages: $hasRestrictedVoiceAndVideoMessages, joinToSendMessages: $joinToSendMessages, joinByRequest: $joinByRequest, description: $description, inviteLink: $inviteLink, pinnedMessage: $pinnedMessage, slowModeDelay: $slowModeDelay, messageAutoDeleteTime: $messageAutoDeleteTime, hasProtectedContent: $hasProtectedContent, stickerSetName: $stickerSetName, canSetStickerSet: $canSetStickerSet, linkedChatId: $linkedChatId)';
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
