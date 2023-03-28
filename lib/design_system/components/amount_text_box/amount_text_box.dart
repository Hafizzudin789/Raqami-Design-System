import 'package:design_system/design_system/components/amount_text_box/text_box_theme_color.dart';
import 'package:design_system/design_system/foundation/font_size.dart';
import 'package:design_system/design_system/foundation/ui_helpers.dart';
import 'package:flutter/material.dart';

class AmountTextBox extends StatelessWidget {
  final String? label;
  final double amountValue;
  final double verticalPadding;
  final double horizontalPadding;
  const AmountTextBox.small({super.key, this.label, required this.amountValue}) : verticalPadding = 16, horizontalPadding = 40;

  const AmountTextBox.large({super.key, this.label, required this.amountValue}) : verticalPadding = 24, horizontalPadding = 30;

  @override
  Widget build(BuildContext context) {
    final TextBoxColor textBoxColor = Theme.of(context).extension<TextBoxColor>()!;
    return Container(
      padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
      decoration: BoxDecoration(
        color: textBoxColor.color!,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: textBoxColor.borderColor!),
      ),
      alignment: Alignment.center,
      child: label != null
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(label!, style: TextStyle(fontSize: FontSize.s, fontWeight: FontWeight.w400, color: textBoxColor.labelColor),),
                verticalSpaceTiny,
                Text("PKR $amountValue", style: TextStyle(fontSize: FontSize.xxxxl, fontWeight: FontWeight.w700, color: textBoxColor.textColor),)
              ],
            )
          : Text("PKR $amountValue", style: TextStyle(fontSize: FontSize.m, fontWeight: FontWeight.w700, color: textBoxColor.textColor),),
      );
  }
}
