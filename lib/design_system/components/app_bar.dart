import 'package:design_system/design_system/foundation/font_size.dart';
import 'package:design_system/design_system/helper_widgets/svg_image.dart';
import 'package:flutter/material.dart';
import '../assets/raqami_icons.dart';


PreferredSizeWidget appBar(
    {required String title,
    VoidCallback? onPressedArrow,
    VoidCallback? onPressedClose,
    bool isStepper = false,
    bool hasLeadingArrowBackButton = false,
    bool hasTrailingCloseButton = false}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight),
    child: Builder(
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBar(
              title: Text(title, style: const TextStyle(fontSize: FontSize.l, fontWeight: FontWeight.w700),),
              centerTitle: true,
              leading: hasLeadingArrowBackButton
                  ? InkWell(
                      onTap: () {
                        if(onPressedArrow != null) {
                          onPressedArrow();
                        } else {
                          Navigator.pop(context);
                        }
                      },
                      child: Center(
                          child: SvgImage(
                              imagePath: RaqamiIcons.arrowBack,
                              size: const Size(20, 20),
                              color: Theme.of(context).appBarTheme.foregroundColor)))
                  : null,
              actions: [
                hasTrailingCloseButton
                    ? InkWell(
                        onTap: () {
                          if(onPressedClose != null) {
                            onPressedClose();
                          } else {
                            Navigator.pop(context);
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: SvgImage(imagePath: RaqamiIcons.close, size: const Size(16, 16), color: Theme.of(context).appBarTheme.foregroundColor),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
            isStepper
                ? Container(height: 4, color: Theme.of(context).appBarTheme.foregroundColor)
                : const SizedBox(),
          ],
        );
      }
    ),
  );
}
