part of '../types.dart';

/// This class represents a message of any sort, received or sent by the bot.
class Message {
  final int messageId;

  /// Unique identifier of a message thread.
  ///
  /// To which the message belongs; for supergroups only
  int? messageThreadId;

  /// The user from which the message originated.
  User? from;

  /// Sender of the message, sent on behalf of a chat.
  ///
  /// For example, the channel itself for channel posts,
  /// the supergroup itself for messages from anonymous group administrators,
  /// the linked channel for messages automatically forwarded
  /// to the discussion group. For backward compatibility,
  /// the field from contains a fake sender user in non-channel chats,
  /// if the message was sent on behalf of a chat.
  Chat? senderChat;

  /// Date the message was sent in Unix time.
  final int date;

  /// Conversation the message belongs to.
  final Chat chat;

  /// For forwarded messages, sender of the original message.
  User? forwardFrom;

  /// For messages forwarded from channels or from anonymous administrators.
  Chat? forwardFromChat;

  /// For messages forwarded from channels, identifier of the original
  /// message in the channel.
  int? forwardFromMessageId;

  /// For forwarded messages that were originally sent in channels
  /// or by an anonymous chat administrator, signature of the message sender
  /// if present.
  String? forwardSignature;

  /// Sender's name for messages forwarded from users who disallow
  /// adding a link to their account in forwarded messages.
  String? forwardSenderName;

  /// For forwarded messages, date the original message was sent in Unix time.
  int? forwardDate;

  /// True, if the message is sent to a forum topic.
  bool? isTopicMessage;

  /// True, if the message is a channel post that was automatically
  /// forwarded to the connected discussion group.
  bool? isAutomaticForward;

  /// For replies, the original message.
  ///
  /// Note that the Message object in this field will not contain further
  /// reply_to_message fields even if it itself is a reply.
  Message? replyToMessage;

  /// Bot through which the message was sent.
  User? viaBot;

  /// Date the message was last edited in Unix time.
  int? editDate;

  /// True, if the message can't be forwarded.
  bool? hasProtectedContent;

  /// The unique identifier of a media message group this message belongs to.
  String? mediaGroupId;

  /// Signature of the post author.
  ///
  /// For messages in channels, or the custom title of
  /// an anonymous group administrator.
  String? authorSignature;

  /// For text messages, the actual UTF-8 text of the message.
  String? text;

  /// For text messages, special entities.
  ///
  /// Like usernames, URLs, bot commands, etc. that appear in the text.
  List<MessageEntity>? entities;

  /// Message is an animation.
  ///
  /// Information about the animation. For backward compatibility,
  /// when this field is set, the document field will also be set.
  Animation? animation;
  Audio? audio;
  Document? document;
  List<PhotoSize>? photo;
  Sticker? sticker;
  Video? video;
  VideoNote? videoNote;
  Voice? voice;
  String? caption;
  List<MessageEntity>? captionEntities;
  Contact? contact;
  Dice? dice;
  Game? game;
  Poll? poll;
  Venue? venue;
  Location? location;
  List<User>? newChatMembers;
  User? leftChatMember;
  String? newChatTitle;
  PhotoSize? newChatPhoto;
  bool? deleteChatPhoto;
  bool? groupChatCreated;
  bool? superGroupChatCreated;
  bool? channelChatCreated;
  MessageAutoDeleteTimerChanged? messageAutoDeleteTimerChanged;
  int? migrateToChatId;
  int? migrateFromChatId;
  Message? pinnedMessage;
  Invoice? invoice;
  SuccessfulPayment? successfulPayment;
  String? connectedWebsite;
  PassportData? passportData;
  ProximityAlertTriggered? proximityAlertTriggered;
  VideoChatScheduled? videoChatScheduled;
  VideoChatStarted? videoChatStarted;
  VideoChatEnded? videoChatEnded;
  VideoChatParticipantsInvited? videoChatParticipantsInvited;
  WebAppData? webAppData;
  InlineKeyboardMarkup? replyMarkup;

  Message({
    required this.messageId,
    this.messageThreadId,
    this.from,
    this.senderChat,
    required this.date,
    required this.chat,
    this.forwardFrom,
    this.forwardFromChat,
    this.forwardFromMessageId,
    this.forwardSignature,
    this.forwardSenderName,
    this.forwardDate,
    this.isTopicMessage,
    this.isAutomaticForward,
    this.viaBot,
    this.editDate,
    this.hasProtectedContent,
    this.mediaGroupId,
    this.authorSignature,
    this.text,
    this.entities,
    this.animation,
    this.audio,
    this.document,
    this.photo,
    this.sticker,
    this.video,
    this.videoNote,
    this.voice,
    this.caption,
    this.captionEntities,
    this.contact,
    this.dice,
    this.game,
    this.poll,
    this.venue,
    this.location,
    this.newChatMembers,
    this.leftChatMember,
    this.newChatTitle,
    this.newChatPhoto,
    this.deleteChatPhoto,
    this.groupChatCreated,
    this.superGroupChatCreated,
    this.channelChatCreated,
    this.migrateToChatId,
    this.migrateFromChatId,
    this.invoice,
    this.successfulPayment,
    this.connectedWebsite,
    this.passportData,
    this.proximityAlertTriggered,
    this.videoChatScheduled,
    this.videoChatStarted,
    this.videoChatEnded,
    this.videoChatParticipantsInvited,
    this.webAppData,
    this.replyMarkup,
  });

  Message copyWith({
    int? messageId,
    int? messageThreadId,
    User? from,
    Chat? senderChat,
    int? date,
    Chat? chat,
    User? forwardFrom,
    Chat? forwardFromChat,
    int? forwardFromMessageId,
    String? forwardSignature,
    String? forwardSenderName,
    int? forwardDate,
    bool? isTopicMessage,
    bool? isAutomaticForward,
    User? viaBot,
    int? editDate,
    bool? hasProtectedContent,
    String? mediaGroupId,
    String? authorSignature,
    String? text,
    List<MessageEntity>? entities,
    Animation? animation,
    Audio? audio,
    Document? document,
    List<PhotoSize>? photo,
    Sticker? sticker,
    Video? video,
    VideoNote? videoNote,
    Voice? voice,
    String? caption,
    List<MessageEntity>? captionEntities,
    Contact? contact,
    Dice? dice,
    Game? game,
    Poll? poll,
    Venue? venue,
    Location? location,
    List<User>? newChatMembers,
    User? leftChatMember,
    String? newChatTitle,
    PhotoSize? newChatPhoto,
    bool? deleteChatPhoto,
    bool? groupChatCreated,
    bool? superGroupChatCreated,
    bool? channelChatCreated,
    int? migrateToChatId,
    int? migrateFromChatId,
    Invoice? invoice,
    SuccessfulPayment? successfulPayment,
    String? connectedWebsite,
    PassportData? passportData,
    ProximityAlertTriggered? proximityAlertTriggered,
    VideoChatScheduled? videoChatScheduled,
    VideoChatStarted? videoChatStarted,
    VideoChatEnded? videoChatEnded,
    VideoChatParticipantsInvited? videoChatParticipantsInvited,
    WebAppData? webAppData,
    InlineKeyboardMarkup? replyMarkup,
  }) {
    return Message(
      messageId: messageId ?? this.messageId,
      messageThreadId: messageThreadId ?? this.messageThreadId,
      from: from ?? this.from,
      senderChat: senderChat ?? this.senderChat,
      date: date ?? this.date,
      chat: chat ?? this.chat,
      forwardFrom: forwardFrom ?? this.forwardFrom,
      forwardFromChat: forwardFromChat ?? this.forwardFromChat,
      forwardFromMessageId: forwardFromMessageId ?? this.forwardFromMessageId,
      forwardSignature: forwardSignature ?? this.forwardSignature,
      forwardSenderName: forwardSenderName ?? this.forwardSenderName,
      forwardDate: forwardDate ?? this.forwardDate,
      isTopicMessage: isTopicMessage ?? this.isTopicMessage,
      isAutomaticForward: isAutomaticForward ?? this.isAutomaticForward,
      viaBot: viaBot ?? this.viaBot,
      editDate: editDate ?? this.editDate,
      hasProtectedContent: hasProtectedContent ?? this.hasProtectedContent,
      mediaGroupId: mediaGroupId ?? this.mediaGroupId,
      authorSignature: authorSignature ?? this.authorSignature,
      text: text ?? this.text,
      entities: entities ?? this.entities,
      animation: animation ?? this.animation,
      audio: audio ?? this.audio,
      document: document ?? this.document,
      photo: photo ?? this.photo,
      sticker: sticker ?? this.sticker,
      video: video ?? this.video,
      videoNote: videoNote ?? this.videoNote,
      voice: voice ?? this.voice,
      caption: caption ?? this.caption,
      captionEntities: captionEntities ?? this.captionEntities,
      contact: contact ?? this.contact,
      dice: dice ?? this.dice,
      game: game ?? this.game,
      poll: poll ?? this.poll,
      venue: venue ?? this.venue,
      location: location ?? this.location,
      newChatMembers: newChatMembers ?? this.newChatMembers,
      leftChatMember: leftChatMember ?? this.leftChatMember,
      newChatTitle: newChatTitle ?? this.newChatTitle,
      newChatPhoto: newChatPhoto ?? this.newChatPhoto,
      deleteChatPhoto: deleteChatPhoto ?? this.deleteChatPhoto,
      groupChatCreated: groupChatCreated ?? this.groupChatCreated,
      superGroupChatCreated:
          superGroupChatCreated ?? this.superGroupChatCreated,
      channelChatCreated: channelChatCreated ?? this.channelChatCreated,
      migrateToChatId: migrateToChatId ?? this.migrateToChatId,
      migrateFromChatId: migrateFromChatId ?? this.migrateFromChatId,
      invoice: invoice ?? this.invoice,
      successfulPayment: successfulPayment ?? this.successfulPayment,
      connectedWebsite: connectedWebsite ?? this.connectedWebsite,
      passportData: passportData ?? this.passportData,
      proximityAlertTriggered:
          proximityAlertTriggered ?? this.proximityAlertTriggered,
      videoChatScheduled: videoChatScheduled ?? this.videoChatScheduled,
      videoChatStarted: videoChatStarted ?? this.videoChatStarted,
      videoChatEnded: videoChatEnded ?? this.videoChatEnded,
      videoChatParticipantsInvited:
          videoChatParticipantsInvited ?? this.videoChatParticipantsInvited,
      webAppData: webAppData ?? this.webAppData,
      replyMarkup: replyMarkup ?? this.replyMarkup,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'message_id': messageId,
      'message_thread_id': messageThreadId,
      'from': from?.toMap(),
      'sender_chat': senderChat?.toMap(),
      'date': date,
      'chat': chat.toMap(),
      'forward_from': forwardFrom?.toMap(),
      'forward_from_chat': forwardFromChat?.toMap(),
      'forward_from_message_id': forwardFromMessageId,
      'forward_signature': forwardSignature,
      'forward_sender_name': forwardSenderName,
      'forward_date': forwardDate,
      'is_topic_message': isTopicMessage,
      'is_automatic_forward': isAutomaticForward,
      'via_bot': viaBot?.toMap(),
      'edit_date': editDate,
      'has_protected_content': hasProtectedContent,
      'media_group_id': mediaGroupId,
      'author_signature': authorSignature,
      'text': text,
      'entities': entities?.map((x) => x?.toMap())?.toList(),
      'animation': animation?.toMap(),
      'audio': audio?.toMap(),
      'document': document?.toMap(),
      'photo': photo?.map((x) => x?.toMap())?.toList(),
      'sticker': sticker?.toMap(),
      'video': video?.toMap(),
      'video_note': videoNote?.toMap(),
      'voice': voice?.toMap(),
      'caption': caption,
      'caption_entities': captionEntities?.map((x) => x?.toMap())?.toList(),
      'contact': contact?.toMap(),
      'dice': dice?.toMap(),
      'game': game?.toMap(),
      'poll': poll?.toMap(),
      'venue': venue?.toMap(),
      'location': location?.toMap(),
      'new_chat_members': newChatMembers?.map((x) => x?.toMap())?.toList(),
      'left_chat_member': leftChatMember?.toMap(),
      'new_chat_title': newChatTitle,
      'new_chat_photo': newChatPhoto?.toMap(),
      'delete_chat_photo': deleteChatPhoto,
      'group_chat_created': groupChatCreated,
      'super_group_chat_created': superGroupChatCreated,
      'channel_chat_created': channelChatCreated,
      'migrate_to_chat_id': migrateToChatId,
      'migrate_from_chat_id': migrateFromChatId,
      'invoice': invoice?.toMap(),
      'successfulPayment': successfulPayment?.toMap(),
      'connectedWebsite': connectedWebsite,
      'passportData': passportData?.toMap(),
      'proximityAlertTriggered': proximityAlertTriggered?.toMap(),
      'videoChatScheduled': videoChatScheduled?.toMap(),
      'videoChatStarted': videoChatStarted?.toMap(),
      'videoChatEnded': videoChatEnded?.toMap(),
      'videoChatParticipantsInvited': videoChatParticipantsInvited?.toMap(),
      'webAppData': webAppData?.toMap(),
      'replyMarkup': replyMarkup?.toMap(),
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      messageId: map['messageId']?.toInt() ?? 0,
      messageThreadId: map['message_thread_id']?.toInt(),
      from: map['from'] != null ? User.fromMap(map['from']) : null,
      senderChat:
          map['senderChat'] != null ? Chat.fromMap(map['senderChat']) : null,
      date: map['date']?.toInt() ?? 0,
      chat: Chat.fromMap(map['chat']),
      forwardFrom:
          map['forwardFrom'] != null ? User.fromMap(map['forwardFrom']) : null,
      forwardFromChat: map['forwardFromChat'] != null
          ? Chat.fromMap(map['forwardFromChat'])
          : null,
      forwardFromMessageId: map['forwardFromMessageId']?.toInt(),
      forwardSignature: map['forwardSignature'],
      forwardSenderName: map['forwardSenderName'],
      forwardDate: map['forwardDate']?.toInt(),
      isTopicMessage: map['is_topic_message'],
      isAutomaticForward: map['isAutomaticForward'],
      viaBot: map['viaBot'] != null ? User.fromMap(map['viaBot']) : null,
      editDate: map['editDate']?.toInt(),
      hasProtectedContent: map['hasProtectedContent'],
      mediaGroupId: map['mediaGroupId'],
      authorSignature: map['authorSignature'],
      text: map['text'],
      entities: map['entities'] != null
          ? List<MessageEntity>.from(
              map['entities']?.map((x) => MessageEntity.fromMap(x)))
          : null,
      animation:
          map['animation'] != null ? Animation.fromMap(map['animation']) : null,
      audio: map['audio'] != null ? Audio.fromMap(map['audio']) : null,
      document:
          map['document'] != null ? Document.fromMap(map['document']) : null,
      photo: map['photo'] != null
          ? List<PhotoSize>.from(map['photo']?.map((x) => PhotoSize.fromMap(x)))
          : null,
      sticker: map['sticker'] != null ? Sticker.fromMap(map['sticker']) : null,
      video: map['video'] != null ? Video.fromMap(map['video']) : null,
      videoNote:
          map['videoNote'] != null ? VideoNote.fromMap(map['videoNote']) : null,
      voice: map['voice'] != null ? Voice.fromMap(map['voice']) : null,
      caption: map['caption'],
      captionEntities: map['captionEntities'] != null
          ? List<MessageEntity>.from(
              map['captionEntities']?.map((x) => MessageEntity.fromMap(x)))
          : null,
      contact: map['contact'] != null ? Contact.fromMap(map['contact']) : null,
      dice: map['dice'] != null ? Dice.fromMap(map['dice']) : null,
      game: map['game'] != null ? Game.fromMap(map['game']) : null,
      poll: map['poll'] != null ? Poll.fromMap(map['poll']) : null,
      venue: map['venue'] != null ? Venue.fromMap(map['venue']) : null,
      location:
          map['location'] != null ? Location.fromMap(map['location']) : null,
      newChatMembers: map['newChatMembers'] != null
          ? List<User>.from(map['newChatMembers']?.map((x) => User.fromMap(x)))
          : null,
      leftChatMember: map['leftChatMember'] != null
          ? User.fromMap(map['leftChatMember'])
          : null,
      newChatTitle: map['newChatTitle'],
      newChatPhoto: map['newChatPhoto'] != null
          ? PhotoSize.fromMap(map['newChatPhoto'])
          : null,
      deleteChatPhoto: map['deleteChatPhoto'],
      groupChatCreated: map['groupChatCreated'],
      superGroupChatCreated: map['superGroupChatCreated'],
      channelChatCreated: map['channelChatCreated'],
      migrateToChatId: map['migrateToChatId']?.toInt(),
      migrateFromChatId: map['migrateFromChatId']?.toInt(),
      invoice: map['invoice'] != null ? Invoice.fromMap(map['invoice']) : null,
      successfulPayment: map['successfulPayment'] != null
          ? SuccessfulPayment.fromMap(map['successfulPayment'])
          : null,
      connectedWebsite: map['connectedWebsite'],
      passportData: map['passportData'] != null
          ? PassportData.fromMap(map['passportData'])
          : null,
      proximityAlertTriggered: map['proximityAlertTriggered'] != null
          ? ProximityAlertTriggered.fromMap(map['proximityAlertTriggered'])
          : null,
      videoChatScheduled: map['videoChatScheduled'] != null
          ? VideoChatScheduled.fromMap(map['videoChatScheduled'])
          : null,
      videoChatStarted: map['videoChatStarted'] != null
          ? VideoChatStarted.fromMap(map['videoChatStarted'])
          : null,
      videoChatEnded: map['videoChatEnded'] != null
          ? VideoChatEnded.fromMap(map['videoChatEnded'])
          : null,
      videoChatParticipantsInvited: map['videoChatParticipantsInvited'] != null
          ? VideoChatParticipantsInvited.fromMap(
              map['videoChatParticipantsInvited'])
          : null,
      webAppData: map['webAppData'] != null
          ? WebAppData.fromMap(map['webAppData'])
          : null,
      replyMarkup: map['replyMarkup'] != null
          ? InlineKeyboardMarkup.fromMap(map['replyMarkup'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) =>
      Message.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Message(messageId: $messageId, messageThreadId: $messageThreadId, from: $from, senderChat: $senderChat, date: $date, chat: $chat, forwardFrom: $forwardFrom, forwardFromChat: $forwardFromChat, forwardFromMessageId: $forwardFromMessageId, forwardSignature: $forwardSignature, forwardSenderName: $forwardSenderName, forwardDate: $forwardDate, isTopicMessage: $isTopicMessage, isAutomaticForward: $isAutomaticForward, viaBot: $viaBot, editDate: $editDate, hasProtectedContent: $hasProtectedContent, mediaGroupId: $mediaGroupId, authorSignature: $authorSignature, text: $text, entities: $entities, animation: $animation, audio: $audio, document: $document, photo: $photo, sticker: $sticker, video: $video, videoNote: $videoNote, voice: $voice, caption: $caption, captionEntities: $captionEntities, contact: $contact, dice: $dice, game: $game, poll: $poll, venue: $venue, location: $location, newChatMembers: $newChatMembers, leftChatMember: $leftChatMember, newChatTitle: $newChatTitle, newChatPhoto: $newChatPhoto, deleteChatPhoto: $deleteChatPhoto, groupChatCreated: $groupChatCreated, superGroupChatCreated: $superGroupChatCreated, channelChatCreated: $channelChatCreated, migrateToChatId: $migrateToChatId, migrateFromChatId: $migrateFromChatId, invoice: $invoice, successfulPayment: $successfulPayment, connectedWebsite: $connectedWebsite, passportData: $passportData, proximityAlertTriggered: $proximityAlertTriggered, videoChatScheduled: $videoChatScheduled, videoChatStarted: $videoChatStarted, videoChatEnded: $videoChatEnded, videoChatParticipantsInvited: $videoChatParticipantsInvited, webAppData: $webAppData, replyMarkup: $replyMarkup)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Message &&
        other.messageId == messageId &&
        other.messageThreadId == messageThreadId &&
        other.from == from &&
        other.senderChat == senderChat &&
        other.date == date &&
        other.chat == chat &&
        other.forwardFrom == forwardFrom &&
        other.forwardFromChat == forwardFromChat &&
        other.forwardFromMessageId == forwardFromMessageId &&
        other.forwardSignature == forwardSignature &&
        other.forwardSenderName == forwardSenderName &&
        other.forwardDate == forwardDate &&
        other.isTopicMessage == isTopicMessage &&
        other.isAutomaticForward == isAutomaticForward &&
        other.viaBot == viaBot &&
        other.editDate == editDate &&
        other.hasProtectedContent == hasProtectedContent &&
        other.mediaGroupId == mediaGroupId &&
        other.authorSignature == authorSignature &&
        other.text == text &&
        listEquals(other.entities, entities) &&
        other.animation == animation &&
        other.audio == audio &&
        other.document == document &&
        listEquals(other.photo, photo) &&
        other.sticker == sticker &&
        other.video == video &&
        other.videoNote == videoNote &&
        other.voice == voice &&
        other.caption == caption &&
        listEquals(other.captionEntities, captionEntities) &&
        other.contact == contact &&
        other.dice == dice &&
        other.game == game &&
        other.poll == poll &&
        other.venue == venue &&
        other.location == location &&
        listEquals(other.newChatMembers, newChatMembers) &&
        other.leftChatMember == leftChatMember &&
        other.newChatTitle == newChatTitle &&
        other.newChatPhoto == newChatPhoto &&
        other.deleteChatPhoto == deleteChatPhoto &&
        other.groupChatCreated == groupChatCreated &&
        other.superGroupChatCreated == superGroupChatCreated &&
        other.channelChatCreated == channelChatCreated &&
        other.migrateToChatId == migrateToChatId &&
        other.migrateFromChatId == migrateFromChatId &&
        other.invoice == invoice &&
        other.successfulPayment == successfulPayment &&
        other.connectedWebsite == connectedWebsite &&
        other.passportData == passportData &&
        other.proximityAlertTriggered == proximityAlertTriggered &&
        other.videoChatScheduled == videoChatScheduled &&
        other.videoChatStarted == videoChatStarted &&
        other.videoChatEnded == videoChatEnded &&
        other.videoChatParticipantsInvited == videoChatParticipantsInvited &&
        other.webAppData == webAppData &&
        other.replyMarkup == replyMarkup;
  }

  @override
  int get hashCode {
    return messageId.hashCode ^
        messageThreadId.hashCode ^
        from.hashCode ^
        senderChat.hashCode ^
        date.hashCode ^
        chat.hashCode ^
        forwardFrom.hashCode ^
        forwardFromChat.hashCode ^
        forwardFromMessageId.hashCode ^
        forwardSignature.hashCode ^
        forwardSenderName.hashCode ^
        forwardDate.hashCode ^
        isTopicMessage.hashCode ^
        isAutomaticForward.hashCode ^
        viaBot.hashCode ^
        editDate.hashCode ^
        hasProtectedContent.hashCode ^
        mediaGroupId.hashCode ^
        authorSignature.hashCode ^
        text.hashCode ^
        entities.hashCode ^
        animation.hashCode ^
        audio.hashCode ^
        document.hashCode ^
        photo.hashCode ^
        sticker.hashCode ^
        video.hashCode ^
        videoNote.hashCode ^
        voice.hashCode ^
        caption.hashCode ^
        captionEntities.hashCode ^
        contact.hashCode ^
        dice.hashCode ^
        game.hashCode ^
        poll.hashCode ^
        venue.hashCode ^
        location.hashCode ^
        newChatMembers.hashCode ^
        leftChatMember.hashCode ^
        newChatTitle.hashCode ^
        newChatPhoto.hashCode ^
        deleteChatPhoto.hashCode ^
        groupChatCreated.hashCode ^
        superGroupChatCreated.hashCode ^
        channelChatCreated.hashCode ^
        migrateToChatId.hashCode ^
        migrateFromChatId.hashCode ^
        invoice.hashCode ^
        successfulPayment.hashCode ^
        connectedWebsite.hashCode ^
        passportData.hashCode ^
        proximityAlertTriggered.hashCode ^
        videoChatScheduled.hashCode ^
        videoChatStarted.hashCode ^
        videoChatEnded.hashCode ^
        videoChatParticipantsInvited.hashCode ^
        webAppData.hashCode ^
        replyMarkup.hashCode;
  }
}
