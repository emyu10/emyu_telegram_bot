part of '../types.dart';

class WebAppInfo {
  final String url;

  WebAppInfo({
    required this.url,
  });

  WebAppInfo copyWith({
    String? url,
  }) {
    return WebAppInfo(
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'url': url,
    };
  }

  factory WebAppInfo.fromMap(Map<String, dynamic> map) {
    return WebAppInfo(
      url: map['url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory WebAppInfo.fromJson(String source) =>
      WebAppInfo.fromMap(json.decode(source));

  @override
  String toString() => 'WebAppInfo(url: $url)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WebAppInfo && other.url == url;
  }

  @override
  int get hashCode => url.hashCode;
}
