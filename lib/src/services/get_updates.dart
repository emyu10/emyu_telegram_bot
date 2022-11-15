part of '../services.dart';

class GetUpdates extends BaseService {
  final UpdateHandlerInterface handler;

  GetUpdates({
    required super.apiToken,
    required this.handler,
  });

  void getNext() async {
    final result = (await http.get(Uri.parse('${_apiUrl}getUpdates'))).body;
    final Map m = json.decode(result);
    print(m['result'] as List);
  }
}
