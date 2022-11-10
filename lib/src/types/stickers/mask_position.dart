part of '../../types.dart';

class MaskPosition {
  final String point;
  final double xShift;
  final double yShift;
  final double scale;

  MaskPosition({
    required this.point,
    required this.xShift,
    required this.yShift,
    required this.scale,
  });

  MaskPosition copyWith({
    String? point,
    double? xShift,
    double? yShift,
    double? scale,
  }) {
    return MaskPosition(
      point: point ?? this.point,
      xShift: xShift ?? this.xShift,
      yShift: yShift ?? this.yShift,
      scale: scale ?? this.scale,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'point': point,
      'xShift': xShift,
      'yShift': yShift,
      'scale': scale,
    };
  }

  factory MaskPosition.fromMap(Map<String, dynamic> map) {
    return MaskPosition(
      point: map['point'] ?? '',
      xShift: map['xShift']?.toDouble() ?? 0.0,
      yShift: map['yShift']?.toDouble() ?? 0.0,
      scale: map['scale']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory MaskPosition.fromJson(String source) =>
      MaskPosition.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MaskPosition(point: $point, xShift: $xShift, yShift: $yShift, scale: $scale)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MaskPosition &&
        other.point == point &&
        other.xShift == xShift &&
        other.yShift == yShift &&
        other.scale == scale;
  }

  @override
  int get hashCode {
    return point.hashCode ^ xShift.hashCode ^ yShift.hashCode ^ scale.hashCode;
  }
}
