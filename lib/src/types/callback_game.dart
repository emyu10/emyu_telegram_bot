part of '../types.dart';

/// A placeholder, currently holds no information.
///
/// Use BotFather to set up your game.
class CallbackGame {
  CallbackGame();

  factory CallbackGame.fromMap(Map map) {
    return CallbackGame();
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{};
  }
}
