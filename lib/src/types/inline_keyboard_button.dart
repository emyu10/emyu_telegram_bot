part of '../types.dart';

class InlineKeyboardButton {
  final String text;
  String? url;
  String? callbackData;
  WebAppInfo? webApp;
  LoginUrl? loginUrl;
  String? switchInlineQuery;
  String? switchInlineQueryCurrentChat;
  CallbackGame? callbackGame;
  bool? pay;

  InlineKeyboardButton({
    required this.text,
    this.url,
    this.callbackData,
    this.webApp,
    this.loginUrl,
    this.switchInlineQuery,
    this.switchInlineQueryCurrentChat,
    this.callbackGame,
    this.pay,
  });

  InlineKeyboardButton copyWith({
    String? text,
    String? url,
    String? callbackData,
    WebAppInfo? webApp,
    LoginUrl? loginUrl,
    String? switchInlineQuery,
    String? switchInlineQueryCurrentChat,
    CallbackGame? callbackGame,
    bool? pay,
  }) {
    return InlineKeyboardButton(
      text: text ?? this.text,
      url: url ?? this.url,
      callbackData: callbackData ?? this.callbackData,
      webApp: webApp ?? this.webApp,
      loginUrl: loginUrl ?? this.loginUrl,
      switchInlineQuery: switchInlineQuery ?? this.switchInlineQuery,
      switchInlineQueryCurrentChat:
          switchInlineQueryCurrentChat ?? this.switchInlineQueryCurrentChat,
      callbackGame: callbackGame ?? this.callbackGame,
      pay: pay ?? this.pay,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'url': url,
      'callbackData': callbackData,
      'webApp': webApp?.toMap(),
      'loginUrl': loginUrl?.toMap(),
      'switchInlineQuery': switchInlineQuery,
      'switchInlineQueryCurrentChat': switchInlineQueryCurrentChat,
      'callbackGame': callbackGame?.toMap(),
      'pay': pay,
    };
  }

  factory InlineKeyboardButton.fromMap(Map<String, dynamic> map) {
    return InlineKeyboardButton(
      text: map['text'] ?? '',
      url: map['url'],
      callbackData: map['callbackData'],
      webApp: map['webApp'] != null ? WebAppInfo.fromMap(map['webApp']) : null,
      loginUrl:
          map['loginUrl'] != null ? LoginUrl.fromMap(map['loginUrl']) : null,
      switchInlineQuery: map['switchInlineQuery'],
      switchInlineQueryCurrentChat: map['switchInlineQueryCurrentChat'],
      callbackGame: map['callbackGame'] != null
          ? CallbackGame.fromMap(map['callbackGame'])
          : null,
      pay: map['pay'],
    );
  }

  String toJson() => json.encode(toMap());

  factory InlineKeyboardButton.fromJson(String source) =>
      InlineKeyboardButton.fromMap(json.decode(source));

  @override
  String toString() {
    return 'InlineKeyboardButton(text: $text, url: $url, callbackData: $callbackData, webApp: $webApp, loginUrl: $loginUrl, switchInlineQuery: $switchInlineQuery, switchInlineQueryCurrentChat: $switchInlineQueryCurrentChat, callbackGame: $callbackGame, pay: $pay)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is InlineKeyboardButton &&
        other.text == text &&
        other.url == url &&
        other.callbackData == callbackData &&
        other.webApp == webApp &&
        other.loginUrl == loginUrl &&
        other.switchInlineQuery == switchInlineQuery &&
        other.switchInlineQueryCurrentChat == switchInlineQueryCurrentChat &&
        other.callbackGame == callbackGame &&
        other.pay == pay;
  }

  @override
  int get hashCode {
    return text.hashCode ^
        url.hashCode ^
        callbackData.hashCode ^
        webApp.hashCode ^
        loginUrl.hashCode ^
        switchInlineQuery.hashCode ^
        switchInlineQueryCurrentChat.hashCode ^
        callbackGame.hashCode ^
        pay.hashCode;
  }
}
