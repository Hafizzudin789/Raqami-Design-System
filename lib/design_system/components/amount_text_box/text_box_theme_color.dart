import 'package:flutter/material.dart';

class TextBoxColor extends ThemeExtension<TextBoxColor>{
  final Color? color;
  final Color? borderColor;
  final Color? textColor;
  final Color? labelColor;


  const TextBoxColor({
    this.color,
    this.borderColor,
    this.textColor,
    this.labelColor,
  });

  @override
  ThemeExtension<TextBoxColor> copyWith() {
    return TextBoxColor(color: color, borderColor: borderColor, textColor: textColor, labelColor: labelColor);
  }

  @override
  ThemeExtension<TextBoxColor> lerp(covariant ThemeExtension<TextBoxColor>? other, double t) {
    if (other is! TextBoxColor) {
      return this;
    }
    return TextBoxColor(
      color: Color.lerp(color, other.color, t),
      borderColor: Color.lerp(borderColor, other.borderColor, t),
      textColor: Color.lerp(textColor, other.textColor, t),
      labelColor: Color.lerp(labelColor, other.labelColor, t),
    );
  }
}