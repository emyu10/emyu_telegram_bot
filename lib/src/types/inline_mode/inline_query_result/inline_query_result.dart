part of '../../../types.dart';

abstract class InlineQueryResult {
  final String type;
  final String id;

  InlineQueryResult({
    required this.type,
    required this.id,
  });
}
