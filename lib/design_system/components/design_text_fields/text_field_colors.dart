import 'package:flutter/material.dart';

class PrimaryTextFieldColor extends ThemeExtension<PrimaryTextFieldColor>{
  final Color? labelColor;
  final Color? hintColor;
  final Color? disableHintColor;
  final Color? textColor;
  final Color? noteColor;

  final Color? enableBorderColor;
  final Color? disableBorderColor;
  final Color? focusedBorderColor;



  const PrimaryTextFieldColor({
    this.labelColor, this.hintColor, this.disableHintColor, this.textColor, this.noteColor,
    this.disableBorderColor, this.enableBorderColor, this.focusedBorderColor,
  });

  @override
  ThemeExtension<PrimaryTextFieldColor> copyWith() {
    return PrimaryTextFieldColor(labelColor: labelColor, textColor: textColor, hintColor: hintColor,
      noteColor: noteColor, disableHintColor: disableHintColor,
      disableBorderColor: disableBorderColor, enableBorderColor: enableBorderColor, focusedBorderColor: focusedBorderColor,
    );
  }

  @override
  ThemeExtension<PrimaryTextFieldColor> lerp(covariant ThemeExtension<PrimaryTextFieldColor>? other, double t) {
    if (other is! PrimaryTextFieldColor) {
      return this;
    }
    return PrimaryTextFieldColor(
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