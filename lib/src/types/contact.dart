part of '../types.dart';

class Contact {
  final String phoneNumber;
  final String firstName;
  String? lastName;
  int? userId;
  String? vcard;

  Contact({
    required this.phoneNumber,
    required this.firstName,
    this.lastName,
    this.userId,
    this.vcard,
  });

  Contact copyWith({
    String? phoneNumber,
    String? firstName,
    String? lastName,
    int? userId,
    String? vcard,
  }) {
    return Contact(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      userId: userId ?? this.userId,
      vcard: vcard ?? this.vcard,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'phoneNumber': phoneNumber,
      'firstName': firstName,
      'lastName': lastName,
      'userId': userId,
      'vcard': vcard,
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      phoneNumber: map['phoneNumber'] ?? '',
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'],
      userId: map['userId']?.toInt(),
      vcard: map['vcard'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Contact.fromJson(String source) =>
      Contact.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Contact(phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, userId: $userId, vcard: $vcard)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Contact &&
        other.phoneNumber == phoneNumber &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.userId == userId &&
        other.vcard == vcard;
  }

  @override
  int get hashCode {
    return phoneNumber.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        userId.hashCode ^
        vcard.hashCode;
  }
}
