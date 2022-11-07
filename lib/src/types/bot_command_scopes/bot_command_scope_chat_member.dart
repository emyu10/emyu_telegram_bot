part of '../../types.dart';

class BotCommandScopeChatMember extends BotCommandScope {
  final String chatId;
  final String userId;

  BotCommandScopeChatMember({
    required super.type,
    required this.chatId,
    required this.userId,
  });
}
