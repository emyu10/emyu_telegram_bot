import 'dart:io';

import 'package:emyu_telegram_bot/emyu_telegram_bot.dart';

late final String apiToken;

late final GetUpdates getUpdates;

/// dart run main.dart <your api token>
void main(List<String> args) async {
  if (args.isEmpty || args[0].isEmpty) {
    print('Please provide the API_TOKEN');
    return;
  }
  apiToken = args[0];
  // getUpdates = GetUpdates(
  //   apiToken: apiToken,
  // );
  // getUpdates.getAll().listen(
  //   (update) {
  //     // do something with the update
  //     print(update);
  //   },
  //   onError: (error) => print('error: $error'),
  // );
  // // getUpdates.close();

  final sender = MessageSender(
    apiToken: apiToken,
    message: Message(
        messageId: 0,
        chat: Chat(id: 1905752566, type: 'private'),
        text: 'this is a text _message_`code`',
        date: DateTime.now().millisecond),
  );
  // sender
  //     .sendMessage(
  //         parseMode: 'MarkdownV2',
  //         replyMarkup: InlineKeyboardMarkup(inlineKeyboard: [
  //           [InlineKeyboardButton(text: 'test button')]
  //         ]))
  //     .then(print);
  InlineKeyboardMarkup m = InlineKeyboardMarkup(inlineKeyboard: [
    [InlineKeyboardButton(text: 'test button')]
  ]);
  print(m.toMap().toString());
}
