import 'package:design_system/design_system/foundation/color_palette.dart';
import 'package:flutter/material.dart';

class PrimaryToggleButton extends StatelessWidget {
  const PrimaryToggleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: true,
      onChanged: (bool value) {},
      activeColor: ColorPalette.accentGreenColor,
      thumbColor: MaterialStateProperty.all(ColorPalette.accentGreenColor),
      trackColor: MaterialStateProperty.all(ColorPalette.pWhiteColor),
      activeTrackColor: ColorPalette.accentGreenColor,
      focusColor: Colors.red,
    );
  }
}
