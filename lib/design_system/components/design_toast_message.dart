import 'package:design_system/design_system/foundation/color_palette.dart';
import 'package:design_system/design_system/foundation/font_size.dart';
import 'package:design_system/design_system/foundation/ui_helpers.dart';
import 'package:design_system/design_system/helper_widgets/svg_image.dart';
import 'package:design_system/design_system/raqami_assets/raqami_icons.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastMessage {
  final String message;
  final BuildContext context;

  final Color backgroundColor;
  final String imagePath;
  final String title;

  ToastMessage.success(this.context, this.message)
      : backgroundColor = ColorPalette.greenColor,
        imagePath = RaqamiIcons.success,
        title = "Success";

  ToastMessage.warning(this.context, this.message)
      : backgroundColor = ColorPalette.yellowColor,
        imagePath = RaqamiIcons.warning,
        title = "Warning";

  ToastMessage.error(this.context, this.message)
      : backgroundColor = ColorPalette.redColor,
        imagePath = RaqamiIcons.error,
        title = "Error";

  show() {
    final fToast = FToast().init(context);
    Widget toast = Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: backgroundColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgImage(imagePath: imagePath, size: const Size(24, 24)),
          horizontalSpaceMedium,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: FontSize.m,
                    fontWeight: FontWeight.w700,
                    color: ColorPalette.pWhiteColor,
                  ),
                ),
                Text(
                  message,
                  style: const TextStyle(
                    fontSize: FontSize.s,
                    fontWeight: FontWeight.w500,
                    color: ColorPalette.pWhiteColor,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    fToast.showToast(
      child: toast,
      gravity: ToastGravity.TOP,
    );
  }


  // showWithoutContext() {
  //   Fluttertoast.showToast(
  //     msg: message,
  //     toastLength: Toast.LENGTH_SHORT,
  //     gravity: ToastGravity.TOP,
  //     timeInSecForIosWeb: 2,
  //     backgroundColor: backgroundColor,
  //     textColor: ColorPalette.pWhiteColor,
  //     fontSize: FontSize.m,
  //   );
  // }


}