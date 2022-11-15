part of '../types.dart';

class User {
  final int id;
  final bool isBot;
  final String firstName;
  String? lastName;
  String? username;
  String? languageCode;
  bool? isPremium;
  bool? addedToAttachmentMenu;
  bool? canJoinGroups;
  bool? canReadAllGroupMessages;
  bool? supportsInlineQueries;

  User({
    required this.id,
    required this.isBot,
    required this.firstName,
    this.lastName,
    this.username,
    this.languageCode,
    this.isPremium,
    this.addedToAttachmentMenu,
    this.canJoinGroups,
    this.canReadAllGroupMessages,
    this.supportsInlineQueries,
  });

  User copyWith({
    int? id,
    bool? isBot,
    String? firstName,
    String? lastName,
    String? username,
    String? languageCode,
    bool? isPremium,
    bool? addedToAttachmentMenu,
    bool? canJoinGroups,
    bool? anReadAllGroupMessages,
    bool? supportsInlineQueries,
  }) {
    return User(
      id: id ?? this.id,
      isBot: isBot ?? this.isBot,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      username: username ?? this.username,
      languageCode: languageCode ?? this.languageCode,
      isPremium: isPremium ?? this.isPremium,
      addedToAttachmentMenu:
          addedToAttachmentMenu ?? this.addedToAttachmentMenu,
      canJoinGroups: canJoinGroups ?? this.canJoinGroups,
      canReadAllGroupMessages:
          canReadAllGroupMessages ?? canReadAllGroupMessages,
      supportsInlineQueries:
          supportsInlineQueries ?? this.supportsInlineQueries,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'is_bot': isBot,
      'first_name': firstName,
      'last_name': lastName,
      'username': username,
      'language_code': languageCode,
      'is_premium': isPremium,
      'added_to_attachment_menu': addedToAttachmentMenu,
      'can_join_groups': canJoinGroups,
      'can_read_all_group_messages': canReadAllGroupMessages,
      'supports_inline_queries': supportsInlineQueries,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      isBot: map['is_bot'] ?? false,
      firstName: map['first_name'] ?? '',
      lastName: map['last_name'],
      username: map['username'],
      languageCode: map['language_code'],
      isPremium: map['is_premium'],
      addedToAttachmentMenu: map['added_to_attachment_menu'],
      canJoinGroups: map['can_join_groups'],
      canReadAllGroupMessages: map['can_read_all_group_messages'],
      supportsInlineQueries: map['supports_inline_queries'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, isBot: $isBot, firstName: $firstName, lastName: $lastName, username: $username, languageCode: $languageCode, isPremium: $isPremium, addedToAttachmentMenu: $addedToAttachmentMenu, canJoinGroups: $canJoinGroups, canReadAllGroupMessages: $canReadAllGroupMessages, supportsInlineQueries: $supportsInlineQueries)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.isBot == isBot &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.username == username &&
        other.languageCode == languageCode &&
        other.isPremium == isPremium &&
        other.addedToAttachmentMenu == addedToAttachmentMenu &&
        other.canJoinGroups == canJoinGroups &&
        other.canReadAllGroupMessages == canReadAllGroupMessages &&
        other.supportsInlineQueries == supportsInlineQueries;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        isBot.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        username.hashCode ^
        languageCode.hashCode ^
        isPremium.hashCode ^
        addedToAttachmentMenu.hashCode ^
        canJoinGroups.hashCode ^
        canReadAllGroupMessages.hashCode ^
        supportsInlineQueries.hashCode;
  }
}
