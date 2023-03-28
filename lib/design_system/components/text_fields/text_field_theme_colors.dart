import 'package:flutter/material.dart';

class TextFieldThemeColor extends ThemeExtension<TextFieldThemeColor>{
  final Color? labelColor;
  final Color? hintColor;
  final Color? disableHintColor;
  final Color? textColor;
  final Color? noteColor;

  final Color? enableBorderColor;
  final Color? disableBorderColor;
  final Color? focusedBorderColor;



  const TextFieldThemeColor({
    this.labelColor, this.hintColor, this.disableHintColor, this.textColor, this.noteColor,
    this.disableBorderColor, this.enableBorderColor, this.focusedBorderColor,
  });

  @override
  ThemeExtension<TextFieldThemeColor> copyWith() {
    return TextFieldThemeColor(labelColor: labelColor, textColor: textColor, hintColor: hintColor,
      noteColor: noteColor, disableHintColor: disableHintColor,
      disableBorderColor: disableBorderColor, enableBorderColor: enableBorderColor, focusedBorderColor: focusedBorderColor,
    );
  }

  @override
  ThemeExtension<TextFieldThemeColor> lerp(covariant ThemeExtension<TextFieldThemeColor>? other, double t) {
    if (other is! TextFieldThemeColor) {
      return this;
    }
    return TextFieldThemeColor(
      labelColor: Color.lerp(labelColor, other.labelColor, t),
      hintColor: Color.lerp(hintColor, other.hintColor, t),
      disableHintColor: Color.lerp(disableHintColor, other.disableHintColor, t),
      textColor: Color.lerp(textColor, other.textColor, t),
      noteColor: Color.lerp(noteColor, other.noteColor, t),

      enableBorderColor: Color.lerp(enableBorderColor, other.enableBorderColor, t),
      focusedBorderColor: Color.lerp(focusedBorderColor, other.focusedBorderColor, t),
      disableBorderColor: Color.lerp(disableBorderColor, other.disableBorderColor, t),
    );
  }
}