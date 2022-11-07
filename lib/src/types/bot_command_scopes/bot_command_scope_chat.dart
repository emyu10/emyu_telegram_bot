part of '../../types.dart';

class BotCommandScopeChat extends BotCommandScope {
  final String chatId;
  BotCommandScopeChat({required super.type, required this.chatId});
}
