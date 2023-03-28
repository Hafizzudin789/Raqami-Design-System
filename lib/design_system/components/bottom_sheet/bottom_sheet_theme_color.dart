import 'package:flutter/material.dart';

class BottomSheetColor extends ThemeExtension<BottomSheetColor>{
  final Color? labelColor;
  final Color? separatorColor;

  const BottomSheetColor({
    this.labelColor,
    this.separatorColor,
  });

  @override
  ThemeExtension<BottomSheetColor> copyWith() {
    return BottomSheetColor(labelColor: labelColor, separatorColor: separatorColor);
  }

  @override
  ThemeExtension<BottomSheetColor> lerp(covariant ThemeExtension<BottomSheetColor>? other, double t) {
    if (other is! BottomSheetColor) {
      return this;
    }
    return BottomSheetColor(
      labelColor: Color.lerp(labelColor, other.labelColor, t),
      separatorColor: Color.lerp(separatorColor, other.separatorColor, t),
    );
  }
}