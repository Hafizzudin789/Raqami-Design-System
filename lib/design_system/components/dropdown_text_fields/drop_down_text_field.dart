import 'package:design_system/design_system/foundation/colors.dart';
import 'package:design_system/design_system/helper_widgets/svg_image.dart';
import 'package:flutter/material.dart';
import '../../assets/raqami_flags.dart';
import '../../assets/raqami_icons.dart';
import '../../foundation/font_size.dart';
import 'dropdown_text_field_theme_color.dart';


///TODO improvise this component
class RaqamiDropDownTextField extends StatelessWidget {
  final String hint;
  final String label;
  final String? note;
  final bool isEnabled;
  final bool hasError;
  final String? prefixImagePath;
  final VoidCallback? onTap;
  const RaqamiDropDownTextField({Key? key, required this.hint,
    required this.label, this.note, this.isEnabled = true,
    this.hasError = false, this.prefixImagePath, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DropDownTextFieldThemeColor dropDownFieldColor = Theme.of(context).extension<DropDownTextFieldThemeColor>()!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(label, style: TextStyle(fontSize: FontSize.m, fontWeight: FontWeight.w400, color: isEnabled?dropDownFieldColor.labelColor: dropDownFieldColor.disableHintColor),),
        ),
        TextField(
          readOnly: true,
          onTap: onTap,
          cursorColor: dropDownFieldColor.focusedBorderColor,
          style: TextStyle(color: dropDownFieldColor.textColor, fontSize: FontSize.l, fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: prefixImagePath == null?24:0),
            hintText: hint,
            hintStyle: TextStyle(color: isEnabled
                ? dropDownFieldColor.hintColor
                : dropDownFieldColor.disableHintColor, fontSize: FontSize.l, fontWeight: FontWeight.w400),
            enabled: isEnabled,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: hasError ? ColorPalette.errorRedColor: dropDownFieldColor.enableBorderColor!),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: hasError ? ColorPalette.errorRedColor: dropDownFieldColor.focusedBorderColor!),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: dropDownFieldColor.disableBorderColor!),
            ),
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: ColorPalette.errorRedColor),
            ),
            prefixIconConstraints: const BoxConstraints(
              minHeight: 24,
              minWidth: 24,
            ),
            prefixIcon: prefixImagePath != null
                ? const Padding(
                    padding: EdgeInsets.only(left: 24.0, right: 8),
                    child: SvgImage(imagePath: RaqamiFlags.pakistan, size: Size(24, 24)),
                  )
                : null,
            suffixIconConstraints: const BoxConstraints(
              minHeight: 6,
              minWidth: 12,
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: SvgImage(imagePath: RaqamiIcons.dropDown, size: const Size(12, 6), color: isEnabled? dropDownFieldColor.arrowColor!: dropDownFieldColor.disableArrowColor!),
            ),
            // suffixIcon: Icon(Icons.pin_drop, size: 10,)
          ),
        ),
        note != null
            ? Padding(
                padding: const EdgeInsets.only(top: 8, right: 24, left: 24),
                child: Text(
                  note!,
                  style: TextStyle(
                    color: hasError ? ColorPalette.errorRedColor : dropDownFieldColor.noteColor,
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