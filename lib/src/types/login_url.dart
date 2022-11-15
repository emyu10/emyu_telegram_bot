part of '../types.dart';

class LoginUrl {
  final String url;
  String? forwardText;
  String? botUsername;
  bool? requestWriteAccess;

  LoginUrl({
    required this.url,
    this.forwardText,
    this.botUsername,
    this.requestWriteAccess,
  });

  LoginUrl copyWith({
    String? url,
    String? forwardText,
    String? botUsername,
    bool? requestWriteAccess,
  }) {
    return LoginUrl(
      url: url ?? this.url,
      forwardText: forwardText ?? this.forwardText,
      botUsername: botUsername ?? this.botUsername,
      requestWriteAccess: requestWriteAccess ?? this.requestWriteAccess,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'url': url,
      'forwardText': forwardText,
      'botUsername': botUsername,
      'requestWriteAccess': requestWriteAccess,
    };
  }

  factory LoginUrl.fromMap(Map<String, dynamic> map) {
    return LoginUrl(
      url: map['url'] ?? '',
      forwardText: map['forwardText'],
      botUsername: map['botUsername'],
      requestWriteAccess: map['requestWriteAccess'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginUrl.fromJson(String source) =>
      LoginUrl.fromMap(json.decode(source));

  @override
  String toString() {
    return 'LoginUrl(url: $url, forwardText: $forwardText, botUsername: $botUsername, requestWriteAccess: $requestWriteAccess)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginUrl &&
        other.url == url &&
        other.forwardText == forwardText &&
        other.botUsername == botUsername &&
        other.requestWriteAccess == requestWriteAccess;
  }

  @override
  int get hashCode {
    return url.hashCode ^
        forwardText.hashCode ^
        botUsername.hashCode ^
        requestWriteAccess.hashCode;
  }
}
