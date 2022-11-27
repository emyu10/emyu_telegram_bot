part of '../exceptions.dart';

/// Throw this exception if a message has a problem.
///
/// For example if the message does not contain the text property when you are
/// trying to send it as a text message.
class MessageException implements Exception {
  final String? message;

  MessageException(this.message);

  @override
  String toString() =>
      message == null ? 'Message Exception' : 'Message Exception: $message';
}
