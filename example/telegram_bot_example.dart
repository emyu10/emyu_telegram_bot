import 'package:emyu_telegram_bot/telegram_bot.dart';

void main() {
  final getUpdates = GetUpdates(
    apiToken: '1901398808:AAESqUFFb_ER02evRJQjtm4eau2sOFV3BUU',
    handler: UpdateHandler(),
  );
  getUpdates.getNext();
}

class UpdateHandler implements UpdateHandlerInterface {
  @override
  void handle(Update u) {
    print('message handled');
  }
}
