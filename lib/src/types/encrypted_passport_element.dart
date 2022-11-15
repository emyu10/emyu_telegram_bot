part of '../types.dart';

class EncryptedPassportElement {
  final String type;
  String? data;
  String? phoneNumber;
  String? email;
  List<PassportFile>? files;
  PassportFile? frontSide;
  PassportFile? reverseSide;
  PassportFile? selfie;
  List<PassportFile>? translation;
  final String hash;
  EncryptedPassportElement({
    required this.type,
    this.data,
    this.phoneNumber,
    this.email,
    this.files,
    this.frontSide,
    this.reverseSide,
    this.selfie,
    this.translation,
    required this.hash,
  });

  EncryptedPassportElement copyWith({
    String? type,
    String? data,
    String? phoneNumber,
    String? email,
    List<PassportFile>? files,
    PassportFile? frontSide,
    PassportFile? reverseSide,
    PassportFile? selfie,
    List<PassportFile>? translation,
    String? hash,
  }) {
    return EncryptedPassportElement(
      type: type ?? this.type,
      data: data ?? this.data,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      files: files ?? this.files,
      frontSide: frontSide ?? this.frontSide,
      reverseSide: reverseSide ?? this.reverseSide,
      selfie: selfie ?? this.selfie,
      translation: translation ?? this.translation,
      hash: hash ?? this.hash,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'data': data,
      'phoneNumber': phoneNumber,
      'email': email,
      'files': files?.map((x) => x?.toMap())?.toList(),
      'frontSide': frontSide?.toMap(),
      'reverseSide': reverseSide?.toMap(),
      'selfie': selfie?.toMap(),
      'translation': translation?.map((x) => x?.toMap())?.toList(),
      'hash': hash,
    };
  }

  factory EncryptedPassportElement.fromMap(Map<String, dynamic> map) {
    return EncryptedPassportElement(
      type: map['type'] ?? '',
      data: map['data'],
      phoneNumber: map['phoneNumber'],
      email: map['email'],
      files: map['files'] != null
          ? List<PassportFile>.from(
              map['files']?.map((x) => PassportFile.fromMap(x)))
          : null,
      frontSide: map['frontSide'] != null
          ? PassportFile.fromMap(map['frontSide'])
          : null,
      reverseSide: map['reverseSide'] != null
          ? PassportFile.fromMap(map['reverseSide'])
          : null,
      selfie:
          map['selfie'] != null ? PassportFile.fromMap(map['selfie']) : null,
      translation: map['translation'] != null
          ? List<PassportFile>.from(
              map['translation']?.map((x) => PassportFile.fromMap(x)))
          : null,
      hash: map['hash'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory EncryptedPassportElement.fromJson(String source) =>
      EncryptedPassportElement.fromMap(json.decode(source));

  @override
  String toString() {
    return 'EncryptedPassportElement(type: $type, data: $data, phoneNumber: $phoneNumber, email: $email, files: $files, frontSide: $frontSide, reverseSide: $reverseSide, selfie: $selfie, translation: $translation, hash: $hash)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is EncryptedPassportElement &&
        other.type == type &&
        other.data == data &&
        other.phoneNumber == phoneNumber &&
        other.email == email &&
        listEquals(other.files, files) &&
        other.frontSide == frontSide &&
        other.reverseSide == reverseSide &&
        other.selfie == selfie &&
        listEquals(other.translation, translation) &&
        other.hash == hash;
  }

  @override
  int get hashCode {
    return type.hashCode ^
        data.hashCode ^
        phoneNumber.hashCode ^
        email.hashCode ^
        files.hashCode ^
        frontSide.hashCode ^
        reverseSide.hashCode ^
        selfie.hashCode ^
        translation.hashCode ^
        hash.hashCode;
  }
}
