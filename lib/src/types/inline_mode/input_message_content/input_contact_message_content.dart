part of '../../../types.dart';

class InputContactMessageContent extends InputMessageContent {
  final String phoneNumber;
  final String firstName;
  String? lastName;
  String? vcard;
  InputContactMessageContent({
    required this.phoneNumber,
    required this.firstName,
    this.lastName,
    this.vcard,
  });

  InputContactMessageContent copyWith({
    String? phoneNumber,
    String? firstName,
    String? lastName,
    String? vcard,
  }) {
    return InputContactMessageContent(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      vcard: vcard ?? this.vcard,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'phoneNumber': phoneNumber,
      'firstName': firstName,
      'lastName': lastName,
      'vcard': vcard,
    };
  }

  factory InputContactMessageContent.fromMap(Map<String, dynamic> map) {
    return InputContactMessageContent(
      phoneNumber: map['phoneNumber'] ?? '',
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'],
      vcard: map['vcard'],
    );
  }

  String toJson() => json.encode(toMap());

  factory InputContactMessageContent.fromJson(String source) =>
      InputContactMessageContent.fromMap(json.decode(source));

  @override
  String toString() {
    return 'InputContactMessageContent(phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, vcard: $vcard)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is InputContactMessageContent &&
        other.phoneNumber == phoneNumber &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.vcard == vcard;
  }

  @override
  int get hashCode {
    return phoneNumber.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        vcard.hashCode;
  }
}
