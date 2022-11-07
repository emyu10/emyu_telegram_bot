part of '../types.dart';

class UserProfilePhotos {
  final int totalCount;
  final List<PhotoSize> photos;

  UserProfilePhotos({
    required this.totalCount,
    required this.photos,
  });
}
