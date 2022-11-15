part of '../types.dart';

class PassportData {
  final List<EncryptedPassportElement> data;
  final EncryptedCredentials credentials;
  PassportData({
    required this.data,
    required this.credentials,
  });

  PassportData copyWith({
    List<EncryptedPassportElement>? data,
    EncryptedCredentials? credentials,
  }) {
    return PassportData(
      data: data ?? this.data,
      credentials: credentials ?? this.credentials,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': data.map((x) => x.toMap()).toList(),
      'credentials': credentials.toMap(),
    };
  }

  factory PassportData.fromMap(Map<String, dynamic> map) {
    return PassportData(
      data: List<EncryptedPassportElement>.from(
          map['data']?.map((x) => EncryptedPassportElement.fromMap(x))),
      credentials: EncryptedCredentials.fromMap(map['credentials']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PassportData.fromJson(String source) =>
      PassportData.fromMap(json.decode(source));

  @override
  String toString() => 'PassportData(data: $data, credentials: $credentials)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is PassportData &&
        listEquals(other.data, data) &&
        other.credentials == credentials;
  }

  @override
  int get hashCode => data.hashCode ^ credentials.hashCode;
}
