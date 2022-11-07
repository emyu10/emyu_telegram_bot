part of '../../types.dart';

class BotCommandScopeChatAdministrators extends BotCommandScope {
  final String chatId;
  BotCommandScopeChatAdministrators({
    required super.type,
    required this.chatId,
  });
}
