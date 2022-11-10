part of '../types.dart';

class WebAppData {
  final String data;
  final String buttonText;

  WebAppData({
    required this.data,
    required this.buttonText,
  });

  WebAppData copyWith({
    String? data,
    String? buttonText,
  }) {
    return WebAppData(
      data: data ?? this.data,
      buttonText: buttonText ?? this.buttonText,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': data,
      'buttonText': buttonText,
    };
  }

  factory WebAppData.fromMap(Map<String, dynamic> map) {
    return WebAppData(
      data: map['data'] ?? '',
      buttonText: map['buttonText'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory WebAppData.fromJson(String source) =>
      WebAppData.fromMap(json.decode(source));

  @override
  String toString() => 'WebAppData(data: $data, buttonText: $buttonText)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WebAppData &&
        other.data == data &&
        other.buttonText == buttonText;
  }

  @override
  int get hashCode => data.hashCode ^ buttonText.hashCode;
}
