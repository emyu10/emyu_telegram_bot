part of '../services.dart';

abstract class BaseService {
  final HttpClient client = HttpClient(context: SecurityContext.defaultContext);
  final String _apiUrl;

  BaseService({
    required String apiToken,
  }) : _apiUrl = 'https://api.telegram.org/bot$apiToken/';
}
