import 'package:flutter/material.dart';

class SpecialButtonColor extends ThemeExtension<SpecialButtonColor>{
  final Color? color;

  const SpecialButtonColor({
    this.color,
  });

  @override
  ThemeExtension<SpecialButtonColor> copyWith() {
    return SpecialButtonColor(color: color);
  }

  @override
  ThemeExtension<SpecialButtonColor> lerp(covariant ThemeExtension<SpecialButtonColor>? other, double t) {
    if (other is! SpecialButtonColor) {
      return this;
    }
    return SpecialButtonColor(
      color: Color.lerp(color, other.color, t),
    );
  }
}



class PrimaryButtonColor extends ThemeExtension<PrimaryButtonColor>{
  final Color? color;

  const PrimaryButtonColor({
    this.color,
  });

  @override
  ThemeExtension<PrimaryButtonColor> copyWith() {
    return PrimaryButtonColor(color: color);
  }

  @override
  ThemeExtension<PrimaryButtonColor> lerp(covariant ThemeExtension<PrimaryButtonColor>? other, double t) {
    if (other is! PrimaryButtonColor) {
      return this;
    }
    return PrimaryButtonColor(
      color: Color.lerp(color, other.color, t),
    );
  }
}

class SecondaryButtonColor extends ThemeExtension<SecondaryButtonColor>{
  final Color? color;

  const SecondaryButtonColor({
    this.color,
  });

  @override
  ThemeExtension<SecondaryButtonColor> copyWith() {
    return SecondaryButtonColor(color: color);
  }

  @override
  ThemeExtension<SecondaryButtonColor> lerp(covariant ThemeExtension<SecondaryButtonColor>? other, double t) {
    if (other is! SecondaryButtonColor) {
      return this;
    }
    return SecondaryButtonColor(
      color: Color.lerp(color, other.color, t),
    );
  }
}

class TertiaryButtonColor extends ThemeExtension<TertiaryButtonColor>{
  final Color? color;

  const TertiaryButtonColor({
    this.color,
  });

  @override
  ThemeExtension<TertiaryButtonColor> copyWith() {
    return TertiaryButtonColor(color: color);
  }

  @override
  ThemeExtension<TertiaryButtonColor> lerp(covariant ThemeExtension<TertiaryButtonColor>? other, double t) {
    if (other is! TertiaryButtonColor) {
      return this;
    }
    return TertiaryButtonColor(
      color: Color.lerp(color, other.color, t),
    );
  }
}

class DisabledButtonColor extends ThemeExtension<DisabledButtonColor>{
  final Color? color;
  final Color? labelColor;

  const DisabledButtonColor({
    this.color,
    this.labelColor,
  });

  @override
  ThemeExtension<DisabledButtonColor> copyWith() {
    return DisabledButtonColor(color: color, labelColor: labelColor);
  }

  @override
  ThemeExtension<DisabledButtonColor> lerp(covariant ThemeExtension<DisabledButtonColor>? other, double t) {
    if (other is! DisabledButtonColor) {
      return this;
    }
    return DisabledButtonColor(
      color: Color.lerp(color, other.color, t),
      labelColor: Color.lerp(labelColor, other.labelColor, t),
    );
  }
}