part of '../types.dart';

class LoginUrl {
  final String url;
  String? forwardText;
  String? botUsername;
  bool? requestWriteAccess;

  LoginUrl({required this.url});
}
