import 'package:design_system/design_system/assets/raqami_icons.dart';
import 'package:design_system/design_system/components/buttons/primary_button.dart';
import 'package:design_system/design_system/foundation/colors.dart';
import 'package:design_system/design_system/foundation/font_size.dart';
import 'package:design_system/design_system/helper_widgets/svg_image.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
              color: Theme.of(context).cardColor,
              child: Column(
                children: const [
                  SizedBox(height: 32),
                  SvgImage(imagePath: RaqamiIcons.successLight, size: Size(96, 96)),
                  SizedBox(height: 24),
                  //ColorPalette.pGray100Color light
                  Text("Great!", style: TextStyle(fontSize: FontSize.xxxxl, fontWeight: FontWeight.w500),),
                  SizedBox(height: 16),
                  //ColorPalette.separatorColorD light
                  Text("Your transaction is successful", style: TextStyle(fontSize: FontSize.l, fontWeight: FontWeight.w400),),
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorPalette.borderColorL, width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _rowWidget("From", "Current Account"),
                            const SizedBox(height: 16),
                            _rowWidget("Date", "18 Sep 2022"),
                            const SizedBox(height: 16),
                            _rowWidget("Status", "Successful"),
                          ],
                        ),
                      ),
                      const Divider(height: 0, thickness: 1),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: _rowWidget("Ref ID", "19827340221039"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: PrimaryButton.l(label: "Done", onPressed: () {
                Navigator.pop(context);
              },),
            )
          ],
        ),
      ),
    );
  }

  Widget _rowWidget(String label, String value) {
    return   Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            label,
            style: const TextStyle(
                fontSize: FontSize.m,
                fontWeight: FontWeight.w400,
                // color: ColorPalette.pGray60Color,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.end,
            style: TextStyle(
                fontSize: FontSize.m,
                fontWeight: FontWeight.w500,
                color: value == "Successful"
                    ? ColorPalette.accentGreenColor
                    : null,
                    // : ColorPalette.pGray80Color,
            ),
          ),
        ),
      ],
    );
  }
}
