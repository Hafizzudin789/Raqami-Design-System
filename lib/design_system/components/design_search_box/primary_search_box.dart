import 'package:flutter/material.dart';
import '../../foundation/color_palette.dart';
import '../../foundation/font_size.dart';
import '../../helper_widgets/svg_image.dart';
import '../../raqami_assets/raqami_icons.dart';
import '../design_text_fields/text_field_colors.dart';

class PrimarySearchBox extends StatelessWidget {
  final String hint;
  // final String? note;
  final bool isEnabled;
  final TextEditingController? controller;
  // final bool hasError;
  const PrimarySearchBox({Key? key, required this.hint, this.isEnabled = true, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PrimaryTextFieldColor primaryTextFieldColor = Theme.of(context).extension<PrimaryTextFieldColor>()!;
    return TextField(
      controller: controller,
      cursorColor: primaryTextFieldColor.focusedBorderColor,
      style: TextStyle(color: primaryTextFieldColor.textColor, fontSize: FontSize.m, fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        hintText: hint,
        hintStyle: TextStyle(color: isEnabled
            ? primaryTextFieldColor.hintColor
            : primaryTextFieldColor.disableHintColor, fontSize: FontSize.m, fontWeight: FontWeight.w400),
        enabled: isEnabled,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: primaryTextFieldColor.enableBorderColor??ColorPalette.blackColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: primaryTextFieldColor.focusedBorderColor??ColorPalette.blackColor),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: primaryTextFieldColor.disableBorderColor?? ColorPalette.blackColor),
        ),
        suffixIconConstraints: const BoxConstraints(
          minHeight: 24,
          minWidth: 24,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SvgImage(imagePath: RaqamiIcons.search, size: const Size(24, 24), color: isEnabled? primaryTextFieldColor.hintColor!: primaryTextFieldColor.disableHintColor!),
        ),
      ),
    );
  }
}
