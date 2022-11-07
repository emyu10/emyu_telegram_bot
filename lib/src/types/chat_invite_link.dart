part of '../types.dart';

class ChatInviteLink {
  final String inviteLink;
  final User creator;
  final bool createsJoinRequest;
  final bool isPrimary;
  final bool isRevoked;
  String? name;
  int? expireDate;
  int? memberLimit;
  int? pendingJoinRequest;

  ChatInviteLink({
    required this.inviteLink,
    required this.creator,
    required this.createsJoinRequest,
    required this.isPrimary,
    required this.isRevoked,
  });
}
