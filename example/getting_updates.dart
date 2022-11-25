import 'dart:io';

import 'package:emyu_telegram_bot/emyu_telegram_bot.dart';

/// dart run getting_updates.dart --define=API_TOKEN=<your api token>
final apiToken = String.fromEnvironment(
  'API_TOKEN',
  defaultValue: Platform.environment['API_TOKEN']!,
);
final getUpdates = GetUpdates(
  apiToken: apiToken,
);

void main() {
  getUpdates.getAll().listen(
    (update) {
      // do something with the update
      print(update.message?.sticker?.toJson());
    },
    onError: (error) => print('error: $error'),
  );
  // getUpdates.close();
}
