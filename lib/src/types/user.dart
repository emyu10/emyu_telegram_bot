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

  User({required this.id, required this.isBot, required this.firstName});
}
