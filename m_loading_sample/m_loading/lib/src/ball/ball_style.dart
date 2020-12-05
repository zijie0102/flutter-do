import 'package:flutter/material.dart';

import 'ball.dart';

///
/// 球的样式
///
class BallStyle {
  ///
  /// 半径
  ///
  final double radius;

  ///
  /// 实心球颜色
  ///
  final Color color;

  ///
  /// 球的类型 [ BallType ]
  ///
  final BallType ballType;

  ///
  /// 边框宽
  ///
  final double borderWidth;

  ///
  /// 边框颜色
  ///
  final Color borderColor;

  const BallStyle(
      {this.radius,
      this.color,
      this.ballType,
      this.borderWidth,
      this.borderColor});

  BallStyle copyWith(
      {double radius,
      Color color,
      BallType ballType,
      double borderWidth,
      Color borderColor}) {
    return BallStyle(
        radius: radius ?? this.radius,
        color: color ?? this.color,
        ballType: ballType ?? this.ballType,
        borderWidth: borderWidth ?? this.borderWidth,
        borderColor: borderColor ?? this.borderColor);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is BallStyle &&
        other.radius == radius &&
        other.color == color &&
        other.ballType == ballType &&
        other.borderWidth == borderWidth &&
        other.borderColor == borderColor;
  }
}
