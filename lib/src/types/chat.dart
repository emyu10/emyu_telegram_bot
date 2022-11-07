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

  Chat({required this.id, required this.type});
}
