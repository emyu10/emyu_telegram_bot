part of '../exceptions.dart';

class GetUpdatesException implements Exception {
  @override
  String toString() {
    return 'Could not get updates.';
  }
}
