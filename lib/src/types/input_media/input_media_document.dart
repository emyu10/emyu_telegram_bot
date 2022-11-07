part of '../../types.dart';

class InputMediaDocument extends InputMedia {
  InputFile? thumb;
  String? thumbStr;
  bool? disableContentTypeDetection;

  InputMediaDocument({required super.type, required super.media});
}
