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
  bool? anReadAllGroupMessages;
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
    this.anReadAllGroupMessages,
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
      anReadAllGroupMessages:
          anReadAllGroupMessages ?? this.anReadAllGroupMessages,
      supportsInlineQueries:
          supportsInlineQueries ?? this.supportsInlineQueries,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'isBot': isBot,
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'languageCode': languageCode,
      'isPremium': isPremium,
      'addedToAttachmentMenu': addedToAttachmentMenu,
      'canJoinGroups': canJoinGroups,
      'anReadAllGroupMessages': anReadAllGroupMessages,
      'supportsInlineQueries': supportsInlineQueries,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      isBot: map['isBot'] ?? false,
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'],
      username: map['username'],
      languageCode: map['languageCode'],
      isPremium: map['isPremium'],
      addedToAttachmentMenu: map['addedToAttachmentMenu'],
      canJoinGroups: map['canJoinGroups'],
      anReadAllGroupMessages: map['anReadAllGroupMessages'],
      supportsInlineQueries: map['supportsInlineQueries'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, isBot: $isBot, firstName: $firstName, lastName: $lastName, username: $username, languageCode: $languageCode, isPremium: $isPremium, addedToAttachmentMenu: $addedToAttachmentMenu, canJoinGroups: $canJoinGroups, anReadAllGroupMessages: $anReadAllGroupMessages, supportsInlineQueries: $supportsInlineQueries)';
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
        other.anReadAllGroupMessages == anReadAllGroupMessages &&
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
        anReadAllGroupMessages.hashCode ^
        supportsInlineQueries.hashCode;
  }
}
