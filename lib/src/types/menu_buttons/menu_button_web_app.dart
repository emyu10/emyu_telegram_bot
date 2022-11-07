part of '../../types.dart';

class MenuButtonWebApp extends MenuButton {
  final String text;
  final WebAppInfo webApp;
  MenuButtonWebApp({
    required super.type,
    required this.text,
    required this.webApp,
  });
}
