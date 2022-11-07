part of '../../types.dart';

class InputMediaVideo extends InputMedia {
  InputFile? thumb;
  String? thumbStr;
  int? width;
  int? height;
  int? duration;
  bool? supportsStreaming;

  InputMediaVideo({required super.type, required super.media});
}
