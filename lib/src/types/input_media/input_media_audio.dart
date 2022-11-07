part of '../../types.dart';

class InputMediaAudio extends InputMedia {
  InputFile? thumb;
  String? thumbStr;
  int? duration;
  String? performer;
  String? title;

  InputMediaAudio({required super.type, required super.media});
}
