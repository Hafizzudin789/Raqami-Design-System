import 'package:flutter/material.dart';

class BottomListColor extends ThemeExtension<BottomListColor>{
  final Color? labelColor;
  final Color? separatorColor;

  const BottomListColor({
    this.labelColor,
    this.separatorColor,
  });

  @override
  ThemeExtension<BottomListColor> copyWith() {
    return BottomListColor(labelColor: labelColor, separatorColor: separatorColor);
  }

  @override
  ThemeExtension<BottomListColor> lerp(covariant ThemeExtension<BottomListColor>? other, double t) {
    if (other is! BottomListColor) {
      return this;
    }
    return BottomListColor(
      labelColor: Color.lerp(labelColor, other.labelColor, t),
      separatorColor: Color.lerp(separatorColor, other.separatorColor, t),
    );
  }
}