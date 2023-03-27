import 'package:design_system/design_system/foundation/font_size.dart';
import 'package:design_system/design_system/helper_widgets/svg_image.dart';
import 'package:flutter/material.dart';
import '../raqami_assets/raqami_icons.dart';

class DesignHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onPressedArrow;
  final VoidCallback? onPressedClose;
  final bool isStepper;
  final bool hasLeadingArrowBackButton;
  final bool hasTrailingCloseButton;

  const DesignHeader({
    super.key,
    required this.title,
    this.hasLeadingArrowBackButton = false,
    this.hasTrailingCloseButton = false,
    this.onPressedArrow,
    this.onPressedClose,
    this.isStepper = false
  });
      // : assert(
      //       (!hasLeadingArrowBackButton || onPressedArrow != null) &&
      //           (!hasTrailingCloseButton || onPressedClose != null),
      //       "If hasLeadingArrowBackButton == true\nonPressedArrow != null\n\n"
      //           "If hasTrailingCloseButton == true\nonPressedClose != null");

  @override
  Widget build(BuildContext context) {
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
                      onPressedArrow!();
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
                        onPressedClose!();
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
}
