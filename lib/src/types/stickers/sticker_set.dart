part of '../../types.dart';

class StickerSet {
  final String name;
  final String title;
  final String stickerType;
  final bool isAnimated;
  final bool isVideo;
  final List<Sticker> stickers;
  PhotoSize? thumb;

  StickerSet({
    required this.name,
    required this.title,
    required this.stickerType,
    required this.isAnimated,
    required this.isVideo,
    required this.stickers,
  });
}
