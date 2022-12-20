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
    String? callbackData,
    this.webApp,
    this.loginUrl,
    this.switchInlineQuery,
    this.switchInlineQueryCurrentChat,
    this.callbackGame,
    this.pay,
  }) : this.callbackData = callbackData ?? text;

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
      'callback_data': callbackData,
      'web_app': webApp?.toMap(),
      'login_url': loginUrl?.toMap(),
      'switch_inline_query': switchInlineQuery,
      'switch_inline_query_current_chat': switchInlineQueryCurrentChat,
      'callback_game': callbackGame?.toMap(),
      'pay': pay,
    };
  }

  factory InlineKeyboardButton.fromMap(Map<String, dynamic> map) {
    return InlineKeyboardButton(
      text: map['text'] ?? '',
      url: map['url'],
      callbackData: map['callback_data'],
      webApp:
          map['web_app'] != null ? WebAppInfo.fromMap(map['web_app']) : null,
      loginUrl:
          map['login_url'] != null ? LoginUrl.fromMap(map['login_url']) : null,
      switchInlineQuery: map['switch_inline_query'],
      switchInlineQueryCurrentChat: map['switch_inline_query_current_chat'],
      callbackGame: map['callback_game'] != null
          ? CallbackGame.fromMap(map['callback_game'])
          : null,
      pay: map['pay'],
    );
  }

  String toJson() {
    final m = toMap();
    if (url == null) {
      m.remove('url');
    }

    return json.encode(m);
  }

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
