part of '../types.dart';

/// Represents one button of the reply keyboard.
///
/// For simple text buttons String can be used instead of this object
/// to specify text of the button.
///
/// Optional fields webApp, requestContact, requestLocation, and requestPoll
/// are mutually exclusive.
class KeyboardButton {
  /// Text of the button.
  ///
  /// If none of the optional fields are used,
  /// it will be sent as a message when the button is pressed.
  final String text;

  /// If True, the user's phone number will be sent as a contact
  /// when the button is pressed.
  ///
  /// Available in private chats only.
  bool? requestContact;

  /// If True, the user's current location will be sent
  /// when the button is pressed.
  ///
  /// Available in private chats only.
  bool? requestLocation;

  /// If specified, the user will be asked to create a poll and send it to
  /// the bot when the button is pressed.
  ///
  /// Available in private chats only.
  KeyboardButtonPollType? requestPoll;

  /// If specified, the described Web App will be launched
  /// when the button is pressed.
  ///
  /// The Web App will be able to send a [WebAppData] service message.
  /// Available in private chats only.
  WebAppInfo? webApp;

  KeyboardButton({
    required this.text,
    this.requestContact,
    this.requestLocation,
    this.requestPoll,
    this.webApp,
  });

  KeyboardButton copyWith({
    String? text,
    bool? requestContact,
    bool? requestLocation,
    KeyboardButtonPollType? requestPoll,
    WebAppInfo? webApp,
  }) {
    return KeyboardButton(
      text: text ?? this.text,
      requestContact: requestContact ?? this.requestContact,
      requestLocation: requestLocation ?? this.requestLocation,
      requestPoll: requestPoll ?? this.requestPoll,
      webApp: webApp ?? this.webApp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'request_contact': requestContact,
      'request_location': requestLocation,
      'request_poll': requestPoll?.toMap(),
      'web_app': webApp?.toMap(),
    };
  }

  factory KeyboardButton.fromMap(Map<String, dynamic> map) {
    return KeyboardButton(
      text: map['text'] ?? '',
      requestContact: map['request_contact'],
      requestLocation: map['request_location'],
      requestPoll: map['request_poll'] != null
          ? KeyboardButtonPollType.fromMap(map['request_poll'])
          : null,
      webApp:
          map['web_app'] != null ? WebAppInfo.fromMap(map['web_app']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory KeyboardButton.fromJson(String source) =>
      KeyboardButton.fromMap(json.decode(source));

  @override
  String toString() {
    return 'KeyboardButton(text: $text, requestContact: $requestContact, requestLocation: $requestLocation, requestPoll: $requestPoll, webApp: $webApp)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is KeyboardButton &&
        other.text == text &&
        other.requestContact == requestContact &&
        other.requestLocation == requestLocation &&
        other.requestPoll == requestPoll &&
        other.webApp == webApp;
  }

  @override
  int get hashCode {
    return text.hashCode ^
        requestContact.hashCode ^
        requestLocation.hashCode ^
        requestPoll.hashCode ^
        webApp.hashCode;
  }
}
