part of '../types.dart';

class Contact {
  final String phoneNumber;
  final String firstName;
  String? lastName;
  int? userId;
  String? vcard;

  Contact({
    required this.phoneNumber,
    required this.firstName,
  });
}
