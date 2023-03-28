import 'package:design_system/design_system/components/design_bottom_list/bottom_list_color.dart';
import 'package:design_system/design_system/components/design_dropdown_fields/drop_down_field_color.dart';
import 'package:design_system/design_system/components/design_text_box/text_box_color.dart';
import 'package:design_system/design_system/foundation/color_palette.dart';
import 'package:design_system/design_system/foundation/font_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/design_buttons/button_colors.dart';
import '../components/design_text_fields/text_field_colors.dart';

class RaqamiThemes {

  ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSwatch(
      // primarySwatch: Colors.indigo,
      brightness: Brightness.light,
      backgroundColor: ColorPalette.pWhiteColor,
    ),
    appBarTheme: const AppBarTheme(
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
      elevation: 0,
    ),
    fontFamily: GoogleFonts.quicksand().fontFamily,
    textTheme: GoogleFonts.quicksandTextTheme().copyWith(
      bodyMedium: const TextStyle(color: Colors.black, fontSize: FontSize.m, fontWeight: FontWeight.w400),
    ),
    extensions: const <ThemeExtension<dynamic>>[
      SpecialButtonColor(
        color: ColorPalette.specialButtonColorL,
      ),
      PrimaryButtonColor(
        color: ColorPalette.pBlackColor,
      ),
      SecondaryButtonColor(
        color: ColorPalette.pBlackColor,
      ),
      TertiaryButtonColor(
        color: ColorPalette.pBlackColor,
      ),
      DisabledButtonColor(
        color: ColorPalette.pGray40Color,
        labelColor: ColorPalette.pWhiteColor,
      ),


      PrimaryTextFieldColor(
        labelColor: ColorPalette.pGray80Color,
        hintColor: ColorPalette.greyColor,
        disableHintColor: ColorPalette.pGray50Color,
        // textColor: ColorPalette.pGray80Color,
        textColor: ColorPalette.pGray100Color,
        noteColor: ColorPalette.pGray60Color,

        enableBorderColor: ColorPalette.pGray40Color,
        focusedBorderColor: ColorPalette.blackColor,
        disableBorderColor: ColorPalette.pGray20Color,
      ),
      DropDownFieldColor(
        labelColor: ColorPalette.pGray80Color,
        hintColor: ColorPalette.greyColor,
        disableHintColor: ColorPalette.pGray50Color,
        // textColor: ColorPalette.pGray80Color,
        textColor: ColorPalette.pGray100Color,
        noteColor: ColorPalette.pGray60Color,

        enableBorderColor: ColorPalette.pGray40Color,
        focusedBorderColor: ColorPalette.blackColor,
        disableBorderColor: ColorPalette.pGray20Color,

        arrowColor: ColorPalette.pBlackColor,
        disableArrowColor: ColorPalette.disabledButtonTextColor,
      ),

      TextBoxColor(
        color: ColorPalette.pWhiteColor,
        borderColor: ColorPalette.textBoxBorderColorL,
        textColor: ColorPalette.pGray80Color,
        labelColor: ColorPalette.greyColor,
      ),

      BottomListColor(
        labelColor: ColorPalette.valueColorL,
        separatorColor: ColorPalette.separatorColorL,
      ),
    ],
  );

  ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: ColorPalette.pGray100Color,
    colorScheme: ColorScheme.fromSwatch(
      // primarySwatch: Colors.indigo,
      brightness: Brightness.dark,
      backgroundColor: ColorPalette.pBlackColor,
    ),
    appBarTheme: const AppBarTheme(
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
      elevation: 0,
    ),
    fontFamily: GoogleFonts.quicksand().fontFamily,
    textTheme: GoogleFonts.quicksandTextTheme().copyWith(
      bodyMedium: const TextStyle(color: Colors.white, fontSize: FontSize.m, fontWeight: FontWeight.w400),
    ),
    extensions: const <ThemeExtension<dynamic>>[
      SpecialButtonColor(
        color: ColorPalette.specialButtonColorD,
      ),
      PrimaryButtonColor(
        color: ColorPalette.primaryButtonColorD,
      ),
      SecondaryButtonColor(
        color: ColorPalette.specialButtonColorD,
      ),
      TertiaryButtonColor(
        color: ColorPalette.blueColor,
      ),
      DisabledButtonColor(
        color: ColorPalette.disabledButtonColorD,
        labelColor: ColorPalette.disabledButtonTextColor,
      ),


      PrimaryTextFieldColor(
        labelColor: ColorPalette.specialButtonColorD,
        hintColor: ColorPalette.noteColorD,
        disableHintColor: ColorPalette.pGray80Color,
        textColor: ColorPalette.pWhiteColor,
        noteColor: ColorPalette.noteColorD,

        enableBorderColor: ColorPalette.pGray80Color,
        focusedBorderColor: ColorPalette.focusedBorderColorD,
        disableBorderColor: ColorPalette.pGray80Color,
      ),
      DropDownFieldColor(
        labelColor: ColorPalette.specialButtonColorD,
        hintColor: ColorPalette.noteColorD,
        disableHintColor: ColorPalette.pGray80Color,
        textColor: ColorPalette.pWhiteColor,
        noteColor: ColorPalette.noteColorD,

        enableBorderColor: ColorPalette.pGray80Color,
        focusedBorderColor: ColorPalette.focusedBorderColorD,
        disableBorderColor: ColorPalette.pGray80Color,

        arrowColor: ColorPalette.dropDownIconColorD,
        disableArrowColor: ColorPalette.pGray80Color,
      ),

      TextBoxColor(
        color: ColorPalette.pSpruceColor,
        borderColor: ColorPalette.primaryButtonColorD,
        textColor: ColorPalette.disabledButtonColorD,
        labelColor: ColorPalette.disabledButtonColorD,
      ),

      BottomListColor(
        labelColor: ColorPalette.pWhiteColor,
        separatorColor: ColorPalette.separatorColorD,
      ),
    ],
  );
}