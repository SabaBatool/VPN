import 'package:flutter/material.dart';
import 'package:vpn_app/App/Common/theme.dart';

class CustomText extends StatelessWidget {
  final String title;
  final TextAlign alignment;
  final TextOverflow txtOverFlow;
  final FontStyle style;
  final double letterSpacce;
  final Color color;
  final TextDecoration textDecoration;
  final FontWeight fontWeight;
  final double size;
  final double height;
  final int maxLine;
  final FontFamily fontFamily;
  const CustomText({
    super.key,
    this.maxLine = 100,
    this.size = 14,
    this.fontWeight = FontWeights.regular,
    this.textDecoration = TextDecoration.none,
    this.color = Colors.black,
    this.letterSpacce = 0,
    this.style = FontStyle.normal,
    this.alignment = TextAlign.start,
    this.txtOverFlow = TextOverflow.ellipsis,
    this.height = 1.0,
    this.fontFamily = FontFamily.poppins,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: alignment,
      maxLines: maxLine,
      style: TextStyle(
          overflow: txtOverFlow,
          fontStyle: style,
          letterSpacing: letterSpacce,
          fontFamily: fontFamily == FontFamily.poppins
              ? 'Poppins'
              : fontFamily == FontFamily.ukNumberPlate
                  ? "UKNumberPlate"
                  : "Poppins",
          color: color,
          decoration: textDecoration,
          fontWeight: fontWeight,
          fontSize: size,
          height: height),
    );
  }
}

enum FontFamily {
  poppins,
  ukNumberPlate,
}
