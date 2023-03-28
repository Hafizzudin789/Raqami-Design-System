import 'package:flutter/material.dart';
import '../../assets/raqami_icons.dart';
import '../../foundation/colors.dart';
import '../../foundation/font_size.dart';
import '../../helper_widgets/svg_image.dart';
import '../text_fields/text_field_theme_colors.dart';


class RaqamiSearchBox extends StatelessWidget {
  final String hint;
  // final String? note;
  final bool isEnabled;
  final TextEditingController? controller;
  // final bool hasError;
  const RaqamiSearchBox({Key? key, required this.hint, this.isEnabled = true, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextFieldThemeColor primaryTextFieldColor = Theme.of(context).extension<TextFieldThemeColor>()!;
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
