part of '../services.dart';

class MessaageService {
  final Message message;

  MessaageService({required this.message});

  Future<void> send() {
    return Future.delayed(Duration(seconds: 10));
  }
}
