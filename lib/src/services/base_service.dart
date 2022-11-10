part of '../services.dart';

abstract class BaseService {
  final HttpClient client = HttpClient(context: SecurityContext.defaultContext);
  final String _apiUrl;
  Function? successCallback;
  Function? failureCallback;

  BaseService({
    required String apiToken,
    this.successCallback,
    this.failureCallback,
  }) : _apiUrl = 'https://api.telegram.org/bot$apiToken/';
}
