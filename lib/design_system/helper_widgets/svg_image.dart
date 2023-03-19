import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage extends StatelessWidget {
  final String imagePath;
  final Size size;
  final Color color;
  const SvgImage({Key? key, required this.imagePath, required this.size, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(imagePath, height: size.height, width: size.width, colorFilter: ColorFilter.mode(color, BlendMode.srcIn),);
  }
}