import 'package:flutter/material.dart';

class DropDownTextFieldThemeColor extends ThemeExtension<DropDownTextFieldThemeColor>{
  final Color? labelColor;
  final Color? hintColor;
  final Color? disableHintColor;
  final Color? textColor;
  final Color? noteColor;

  final Color? enableBorderColor;
  final Color? disableBorderColor;
  final Color? focusedBorderColor;

  final Color? arrowColor;
  final Color? disableArrowColor;



  const DropDownTextFieldThemeColor({
    this.labelColor, this.hintColor, this.disableHintColor, this.textColor, this.noteColor,
    this.disableBorderColor, this.enableBorderColor, this.focusedBorderColor, this.arrowColor, this.disableArrowColor
  });

  @override
  ThemeExtension<DropDownTextFieldThemeColor> copyWith() {
    return DropDownTextFieldThemeColor(labelColor: labelColor, textColor: textColor, hintColor: hintColor,
      noteColor: noteColor, disableHintColor: disableHintColor,
      disableBorderColor: disableBorderColor, enableBorderColor: enableBorderColor, focusedBorderColor: focusedBorderColor,
      arrowColor: arrowColor, disableArrowColor: disableArrowColor,
    );
  }

  @override
  ThemeExtension<DropDownTextFieldThemeColor> lerp(covariant ThemeExtension<DropDownTextFieldThemeColor>? other, double t) {
    if (other is! DropDownTextFieldThemeColor) {
      return this;
    }
    return DropDownTextFieldThemeColor(
      labelColor: Color.lerp(labelColor, other.labelColor, t),
      hintColor: Color.lerp(hintColor, other.hintColor, t),
      disableHintColor: Color.lerp(disableHintColor, other.disableHintColor, t),
      textColor: Color.lerp(textColor, other.textColor, t),
      noteColor: Color.lerp(noteColor, other.noteColor, t),

      enableBorderColor: Color.lerp(enableBorderColor, other.enableBorderColor, t),
      focusedBorderColor: Color.lerp(focusedBorderColor, other.focusedBorderColor, t),
      disableBorderColor: Color.lerp(disableBorderColor, other.disableBorderColor, t),

      arrowColor: Color.lerp(arrowColor, other.arrowColor, t),
      disableArrowColor: Color.lerp(disableArrowColor, other.disableArrowColor, t),
    );
  }
}