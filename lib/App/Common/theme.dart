import 'package:flutter/material.dart';

class AppColor {
  static const Color transparent = Color(0xff000000);
  static const Color backgroundColor = Color(0xFFF9F9F9);
  static const Color appBlack = Color(0xff131511);
  static const Color onboard = Color(0xff24E2B0);
  static const Color switchColor = Color(0xff6CDFB3);
  static const Color strokeGrey = Color(0xff343434);
  static const Color greyish = Color(0xffA6A6A6);
  static const Color lightGrey = Color(0xff68756F);
  static const Color tooLightGrey = Color(0xff979797);
  static const Color lightPurple = Color(0xffA6A0BB);
  static const Color darkPurple = Color(0xff1C1924);
  static const Color darkestBlack = Color(0xff272525);
  static const Color almostBlack = Color(0xff2A2A2A);
  static const Color unselectedTabColor = Color(0xffABB0BF);
  static const Color fieldStyle = Color(0xffC2C3CB);
  static const Color greyWhite = Color(0xffF3F6F8);
  static const Color lightGreen = Color(0xffCCF869);

// ! App BTN Colors
  static const Color userBTN = Color(0xff0EBE7E);
  static const Color doctorBTN = Color(0xff08A9E4);
  static const Color companyBTN = Color(0xffFF5050);
  static const Color lightGreenish = Color(0xff6CDA9C);
  static const Color lightestGrey = Color(0xff4F4F4F);

// ! App Colors
  static const Color border = Color(0xff856C3F);
  static const Color primaryColor = Color(0xff252525);
  static const Color secondaryColor = Color(0xfff4b733);
  static const Color textFieldBorder = Color(0x0ff67729);
  static const Color sheetTopBar = Color(0xffc4c4c4);

// !Rendom Colors
  static const Color white = Color(0xFFffffff);
  static const Color lightBlack = Color(0xFF232323);
  static const Color black = Color(0xFF000000);
  static const Color green = Color(0xFF379417);
  static const Color orange = Color(0xFFF7931A);
  static const Color red = Color(0xFFF84F31);
  static const Color deepRed = Color(0xFFDD4200);

// ! Text Colors
  static const Color darkText = Color(0xFF1D2733);
  static const Color greyText = Color(0xff999999);
  static const Color greyText2 = Color(0xff97ADB6);
  static const Color greyText3 = Color(0xffE2E6E9);
  static const Color greyText4 = Color(0xff829EAA);
  static const Color greyText5 = Color(0xff605E5E);
  static const Color appBlue = Color(0xff2973FF);
  static const Color greyLightShade = Color(0xff3C3C43);

  // ! TextField Colors
  static const Color textFieldColor = Color(0xffF9F9FC);
  // appcolors._();
}

class FontWeights {
  static const FontWeight thin = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}
