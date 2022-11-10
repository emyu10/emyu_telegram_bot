part of '../../types.dart';

class InlineQuery {
  final String id;
  final User from;
  final String query;
  final String offset;
  String? chatType;
  Location? location;

  InlineQuery({
    required this.id,
    required this.from,
    required this.query,
    required this.offset,
  });
}
