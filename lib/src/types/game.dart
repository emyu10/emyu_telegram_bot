part of '../types.dart';

class Game {
  final String title;
  final String description;
  final List<PhotoSize> photo;
  String? text;
  List<MessageEntity>? textEntities;
  Animation? animation;
  Game({
    required this.title,
    required this.description,
    required this.photo,
    this.text,
    this.textEntities,
    this.animation,
  });

  Game copyWith({
    String? title,
    String? description,
    List<PhotoSize>? photo,
    String? text,
    List<MessageEntity>? textEntities,
    Animation? animation,
  }) {
    return Game(
      title: title ?? this.title,
      description: description ?? this.description,
      photo: photo ?? this.photo,
      text: text ?? this.text,
      textEntities: textEntities ?? this.textEntities,
      animation: animation ?? this.animation,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'photo': photo.map((x) => x.toMap()).toList(),
      'text': text,
      'text_entities': textEntities?.map((x) => x.toMap()).toList(),
      'animation': animation?.toMap(),
    };
  }

  factory Game.fromMap(Map<String, dynamic> map) {
    return Game(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      photo:
          List<PhotoSize>.from(map['photo']?.map((x) => PhotoSize.fromMap(x))),
      text: map['text'],
      textEntities: map['text_entities'] != null
          ? List<MessageEntity>.from(
              map['text_entities']?.map((x) => MessageEntity.fromMap(x)))
          : null,
      animation:
          map['animation'] != null ? Animation.fromMap(map['animation']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Game.fromJson(String source) => Game.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Game(title: $title, description: $description, photo: $photo, text: $text, textEntities: $textEntities, animation: $animation)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Game &&
        other.title == title &&
        other.description == description &&
        listEquals(other.photo, photo) &&
        other.text == text &&
        listEquals(other.textEntities, textEntities) &&
        other.animation == animation;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        description.hashCode ^
        photo.hashCode ^
        text.hashCode ^
        textEntities.hashCode ^
        animation.hashCode;
  }
}
