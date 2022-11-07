part of '../../types.dart';

class InputMediaAnimation extends InputMedia {
  InputFile? thumb;
  String? thumbStr;
  int? width;
  int? height;
  int? duration;

  InputMediaAnimation({required super.type, required super.media});
}
