import 'package:design_system/design_system/components/design_bottom_list/bottom_list_color.dart';
import 'package:design_system/design_system/components/design_bottom_list/country_model.dart';
import 'package:design_system/design_system/foundation/color_palette.dart';
import 'package:design_system/design_system/helper_widgets/svg_image.dart';
import 'package:design_system/design_system/raqami_assets/raqami_flags.dart';
import 'package:flutter/material.dart';
import '../../foundation/font_size.dart';


class DesignBottomList {

  showBottomList({
    required BuildContext context,
    required String title,
    bool isPhoneCode = false,
    bool isCurrency = false,
    bool isCountry = false,
  }) {
    final BottomListColor bottomListColor = Theme.of(context).extension<BottomListColor>()!;
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      backgroundColor: Theme.of(context).colorScheme.background,
      isScrollControlled: true,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.9,
      ),
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                height: 5,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: ColorPalette.pGray40Color,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(title, style: const TextStyle(fontSize: FontSize.m, fontWeight: FontWeight.w600), textAlign: TextAlign.left,),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(color: bottomListColor.separatorColor, thickness: 1),
                itemCount: RaqamiFlags.countryList.length,
                itemBuilder: (context, index) {
                  CountryModel country = RaqamiFlags.countryList[index];
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    leading: SvgImage(imagePath: country.flagPath, size: const Size(40, 40)),
                    title: Text(
                      isPhoneCode
                          ? country.phoneCode
                          : isCurrency
                            ? country.currency
                            : country.countryName,
                      style: TextStyle(color: bottomListColor.labelColor),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}