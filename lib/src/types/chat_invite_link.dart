part of '../types.dart';

/// Represents an invite link for a chat.
class ChatInviteLink {
  /// The invite link.
  ///
  /// If the link was created by another chat administrator,
  /// then the second part of the link will be replaced with “…”.
  final String inviteLink;

  /// Creator of the link.
  final User creator;

  /// True, if users joining the chat via the link need to be approved by
  /// chat administrators.
  final bool createsJoinRequest;

  /// True, if the link is primary.
  final bool isPrimary;

  /// True, if the link is revoked.
  final bool isRevoked;

  /// Invite link name.
  String? name;

  /// Point in time when the link will expire or has been expired.
  ///
  /// Unix timestamp.
  int? expireDate;

  /// The maximum number of users that can be members of the chat
  /// simultaneously after joining the chat via this invite link.
  ///
  /// Number between 1-99999.
  int? memberLimit;

  /// Number of pending join requests created using this link.
  int? pendingJoinRequest;

  ChatInviteLink({
    required this.inviteLink,
    required this.creator,
    required this.createsJoinRequest,
    required this.isPrimary,
    required this.isRevoked,
    this.name,
    this.expireDate,
    this.memberLimit,
    this.pendingJoinRequest,
  });

  ChatInviteLink copyWith({
    String? inviteLink,
    User? creator,
    bool? createsJoinRequest,
    bool? isPrimary,
    bool? isRevoked,
    String? name,
    int? expireDate,
    int? memberLimit,
    int? pendingJoinRequest,
  }) {
    return ChatInviteLink(
      inviteLink: inviteLink ?? this.inviteLink,
      creator: creator ?? this.creator,
      createsJoinRequest: createsJoinRequest ?? this.createsJoinRequest,
      isPrimary: isPrimary ?? this.isPrimary,
      isRevoked: isRevoked ?? this.isRevoked,
      name: name ?? this.name,
      expireDate: expireDate ?? this.expireDate,
      memberLimit: memberLimit ?? this.memberLimit,
      pendingJoinRequest: pendingJoinRequest ?? this.pendingJoinRequest,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'invite_link': inviteLink,
      'creator': creator.toMap(),
      'creates_join_request': createsJoinRequest,
      'is_primary': isPrimary,
      'is_revoked': isRevoked,
      'name': name,
      'expire_date': expireDate,
      'member_limit': memberLimit,
      'pending_join_request': pendingJoinRequest,
    };
  }

  factory ChatInviteLink.fromMap(Map<String, dynamic> map) {
    return ChatInviteLink(
      inviteLink: map['invite_link'] ?? '',
      creator: User.fromMap(map['creator']),
      createsJoinRequest: map['creates_join_request'] ?? false,
      isPrimary: map['is_primary'] ?? false,
      isRevoked: map['is_revoked'] ?? false,
      name: map['name'],
      expireDate: map['expire_date']?.toInt(),
      memberLimit: map['member_limit']?.toInt(),
      pendingJoinRequest: map['pending_join_request']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatInviteLink.fromJson(String source) =>
      ChatInviteLink.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ChatInviteLink(inviteLink: $inviteLink, creator: $creator, createsJoinRequest: $createsJoinRequest, isPrimary: $isPrimary, isRevoked: $isRevoked, name: $name, expireDate: $expireDate, memberLimit: $memberLimit, pendingJoinRequest: $pendingJoinRequest)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatInviteLink &&
        other.inviteLink == inviteLink &&
        other.creator == creator &&
        other.createsJoinRequest == createsJoinRequest &&
        other.isPrimary == isPrimary &&
        other.isRevoked == isRevoked &&
        other.name == name &&
        other.expireDate == expireDate &&
        other.memberLimit == memberLimit &&
        other.pendingJoinRequest == pendingJoinRequest;
  }

  @override
  int get hashCode {
    return inviteLink.hashCode ^
        creator.hashCode ^
        createsJoinRequest.hashCode ^
        isPrimary.hashCode ^
        isRevoked.hashCode ^
        name.hashCode ^
        expireDate.hashCode ^
        memberLimit.hashCode ^
        pendingJoinRequest.hashCode;
  }
}
