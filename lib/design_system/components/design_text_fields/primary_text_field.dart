import 'package:design_system/design_system/components/design_text_fields/text_field_colors.dart';
import 'package:design_system/design_system/foundation/color_palette.dart';
import 'package:flutter/material.dart';
import '../../foundation/font_size.dart';

class PrimaryTextField extends StatelessWidget {
  final String hint;
  final String label;
  final String? note;
  final bool isEnabled;
  final bool hasError;
  final TextEditingController? controller;
  const PrimaryTextField({Key? key, required this.hint, required this.label, this.note,
    this.isEnabled = true, this.hasError = false, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PrimaryTextFieldColor primaryTextFieldColor = Theme.of(context).extension<PrimaryTextFieldColor>()!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(label, style: TextStyle(fontSize: FontSize.m, fontWeight: FontWeight.w400, color: isEnabled?primaryTextFieldColor.labelColor: primaryTextFieldColor.disableHintColor),),
        ),
        TextField(
          controller: controller,
          cursorColor: primaryTextFieldColor.focusedBorderColor,
          style: TextStyle(color: primaryTextFieldColor.textColor, fontSize: FontSize.l, fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            hintText: hint,
            hintStyle: TextStyle(color: isEnabled
                ? primaryTextFieldColor.hintColor
                : primaryTextFieldColor.disableHintColor, fontSize: FontSize.l, fontWeight: FontWeight.w400),
            enabled: isEnabled,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: hasError ? ColorPalette.redColor: primaryTextFieldColor.enableBorderColor??ColorPalette.blackColor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: hasError ? ColorPalette.redColor: primaryTextFieldColor.focusedBorderColor??ColorPalette.blackColor),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: primaryTextFieldColor.disableBorderColor?? ColorPalette.blackColor),
            ),
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: ColorPalette.redColor),
            ),
          ),
        ),
        note != null
            ? Padding(
                padding: const EdgeInsets.only(top: 8, right: 24, left: 24),
                child: Text(
                  note!,
                  style: TextStyle(
                    color: hasError ? ColorPalette.redColor : primaryTextFieldColor.noteColor,
                    fontSize: FontSize.s,
                    fontWeight: FontWeight.w400,
                    height: 1.4,
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}