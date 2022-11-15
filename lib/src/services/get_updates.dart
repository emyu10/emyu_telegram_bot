part of '../services.dart';

class GetUpdates extends BaseService {
  final UpdateHandlerInterface handler;

  GetUpdates({
    required super.apiToken,
    required this.handler,
  });

  void getNext() async {
    try {
      final result = (await http.get(Uri.parse('${_apiUrl}getUpdates'))).body;
      final Map m = json.decode(result);
      await _handle(m['result']);
    } on Exception {
      throw GetUpdatesException();
    }
  }

  Future<void> _handle(Map<String, dynamic> update) async {
    print(update);
  }
}
