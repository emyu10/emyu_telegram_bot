part of '../services.dart';

class GetUpdates extends BaseService {
  bool _open = true;
  int _offset = 0;

  GetUpdates({required super.apiToken});

  Stream<Update> getAll(
      {bool runForever = false,
      int? offset,
      int? limit,
      int? timeout,
      List<String>? allowedUpdates}) async* {
    if (offset != null) _offset = offset;
    do {
      try {
        final Map<String, String> body = <String, String>{};
        if (offset != null) {
          body.addAll({'offset': _offset.toString()});
        }
        if (limit != null) {
          body.addAll({'limit': limit.toString()});
        }
        if (timeout != null) {
          body.addAll({'timeout': timeout.toString()});
        }

        final response =
            (await http.post(Uri.parse('${_apiUrl}getUpdates'), body: body));

        final result = response.body;

        final Map updates = json.decode(result);
        for (var update in (updates['result'] as List)) {
          final u = Update.fromMap(update);
          if (offset != null && _offset <= u.updateId) {
            _offset = u.updateId + 1;
          }
          yield u;
        }
      } on Exception {
        throw GetUpdatesException();
      }
      await Future.delayed(Duration(microseconds: 500));
      _open = runForever;
    } while (_open);
  }

  void close() => _open = false;
}
