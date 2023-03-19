import 'package:design_system/design_system/components/design_buttons/button_size.dart';
import 'package:design_system/design_system/components/design_buttons/button_colors.dart';
import 'package:design_system/design_system/foundation/font_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../helper_widgets/svg_image.dart';


class SecondaryButton extends StatelessWidget {
  final String label;
  final String? icon;
  final Color? buttonColor;
  final VoidCallback? onPressed;
  final ButtonSize buttonSize;

  /// xs size button
  const SecondaryButton.xs({super.key, required this.label, this.icon, this.buttonColor, this.onPressed})
      : buttonSize = ButtonSize.xs;

  /// s size button
  const SecondaryButton.s({super.key, required this.label, this.icon, this.buttonColor, this.onPressed})
      : buttonSize = ButtonSize.s;

  /// m size button
  const SecondaryButton.m({super.key, required this.label, this.icon, this.buttonColor, this.onPressed})
      : buttonSize = ButtonSize.m;

  /// l size button
  const SecondaryButton.l({super.key, required this.label, this.icon, this.buttonColor, this.onPressed})
      : buttonSize = ButtonSize.l;

  @override
  Widget build(BuildContext context) {
    final SecondaryButtonColor secondaryButtonColor = Theme.of(context).extension<SecondaryButtonColor>()!;

    final child = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) SvgImage(imagePath: icon!, size: getIconSize(), color: buttonColor??secondaryButtonColor.color!),
        if (icon != null) const SizedBox(width: 8),
        Text(label, textAlign: TextAlign.center, style: getLabelStyle()),
      ],
    );

    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        foregroundColor: MaterialStateProperty.all(buttonColor??secondaryButtonColor.color),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: buttonColor??secondaryButtonColor.color!))),
        padding: MaterialStateProperty.all(getButtonPadding()),
      ),
      child: child,
    );
  }

  TextStyle getLabelStyle() {
    switch(buttonSize) {
      case ButtonSize.xs: {
        //return const TextStyle(fontSize: FontSize.s, fontWeight: FontWeight.w700, letterSpacing: 1);
        return GoogleFonts.quicksand(fontSize: FontSize.s, fontWeight: FontWeight.w700, letterSpacing: 1);
      }
      case ButtonSize.s: {
        // return const TextStyle(fontSize: FontSize.m, fontWeight: FontWeight.w500);
        return GoogleFonts.quicksand(fontSize: FontSize.m, fontWeight: FontWeight.w500);
      }
      case ButtonSize.m: {
        // return const TextStyle(fontSize: FontSize.l, fontWeight: FontWeight.w600);
        return GoogleFonts.quicksand(fontSize: FontSize.m, fontWeight: FontWeight.w600);
      }
      case ButtonSize.l: {
        // return const TextStyle(fontSize: FontSize.l, fontWeight: FontWeight.w600);
        return GoogleFonts.quicksand(fontSize: FontSize.l, fontWeight: FontWeight.w600);
      }
      default: {
        // return const TextStyle(fontSize: FontSize.l, fontWeight: FontWeight.w600);
        return GoogleFonts.quicksand(fontSize: FontSize.l, fontWeight: FontWeight.w600);
      }
    }
  }

  EdgeInsets getButtonPadding() {
    switch(buttonSize) {
      case ButtonSize.xs: {
        return const EdgeInsets.symmetric(horizontal: 8, vertical: 4);
      }
      case ButtonSize.s: {
        return const EdgeInsets.symmetric(horizontal: 22, vertical: 10);
      }
      case ButtonSize.m: {
        return const EdgeInsets.symmetric(horizontal: 22, vertical: 12);
      }
      case ButtonSize.l: {
        return const EdgeInsets.symmetric(horizontal: 22, vertical: 16);
      }
      default: {
        return const EdgeInsets.symmetric(horizontal: 22, vertical: 16);
      }
    }
  }

  Size getIconSize() {
    switch(buttonSize) {
      case ButtonSize.xs: {
        return const Size(8, 8);
      }
      default: {
        return const Size(12, 12);
      }
    }
  }
}