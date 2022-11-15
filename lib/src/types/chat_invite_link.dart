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
