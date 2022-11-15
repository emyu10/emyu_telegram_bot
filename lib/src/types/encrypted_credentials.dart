part of '../types.dart';

class EncryptedCredentials {
  final String data;
  final String hash;
  final String secret;
  EncryptedCredentials({
    required this.data,
    required this.hash,
    required this.secret,
  });

  EncryptedCredentials copyWith({
    String? data,
    String? hash,
    String? secret,
  }) {
    return EncryptedCredentials(
      data: data ?? this.data,
      hash: hash ?? this.hash,
      secret: secret ?? this.secret,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': data,
      'hash': hash,
      'secret': secret,
    };
  }

  factory EncryptedCredentials.fromMap(Map<String, dynamic> map) {
    return EncryptedCredentials(
      data: map['data'] ?? '',
      hash: map['hash'] ?? '',
      secret: map['secret'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory EncryptedCredentials.fromJson(String source) =>
      EncryptedCredentials.fromMap(json.decode(source));

  @override
  String toString() =>
      'EncryptedCredentials(data: $data, hash: $hash, secret: $secret)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EncryptedCredentials &&
        other.data == data &&
        other.hash == hash &&
        other.secret == secret;
  }

  @override
  int get hashCode => data.hashCode ^ hash.hashCode ^ secret.hashCode;
}
