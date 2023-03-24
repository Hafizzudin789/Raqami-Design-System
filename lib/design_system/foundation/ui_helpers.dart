import 'package:flutter/material.dart';

///Horizontal spacing
const Widget horizontalSpaceTiny = SizedBox(width: 4);
const Widget horizontalSpaceSmall = SizedBox(width: 8);
const Widget horizontalSpaceRegular = SizedBox(width: 12);
const Widget horizontalSpaceMedium = SizedBox(width: 16);
const Widget horizontalSpaceLarge = SizedBox(width: 20);
const Widget horizontalSpaceXLarge = SizedBox(width: 24);
const Widget horizontalSpaceXXLarge = SizedBox(width: 28);
const Widget horizontalSpaceXXXLarge = SizedBox(width: 32);


///Vertical spacing
const Widget verticalSpaceTiny = SizedBox(height: 4.0);
const Widget verticalSpaceSmall = SizedBox(height: 8.0);
const Widget verticalSpaceRegular = SizedBox(height: 12.0);
const Widget verticalSpaceMedium = SizedBox(height: 16.0);
const Widget verticalSpaceLarge = SizedBox(height: 20.0);
const Widget verticalSpaceXLarge = SizedBox(height: 24.0);
const Widget verticalSpaceXXLarge = SizedBox(height: 28.0);
const Widget verticalSpaceXXXLarge = SizedBox(height: 32.0);
const Widget verticalSpaceXXxXLarge = SizedBox(height: 36.0);


///Screen size helpers
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenWidthPercentage(BuildContext context, {double percentage = 1}) =>
    MediaQuery.of(context).size.width * percentage;

double screenHeightPercentage(BuildContext context, {double percentage = 1}) =>
    MediaQuery.of(context).size.height * percentage;

