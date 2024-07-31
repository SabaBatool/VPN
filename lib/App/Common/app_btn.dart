import 'package:flutter/material.dart';
import 'package:vpn_app/App/Common/app_text.dart';
import 'package:vpn_app/App/Common/theme.dart';


class PrimaryBTN extends StatelessWidget {
  final double width;
  final String title;
  final VoidCallback? callback;
  final double height;
  final double fontSize;
  final double borderRadius;
  final bool isBorder;
  final bool isSecondary;
  final Color color;
  final Color textCLR;
  final FontWeight fontWeight;
  const PrimaryBTN({
    super.key,
    this.borderRadius = 10,
    this.isSecondary = false,
    required this.callback,
    this.color = AppColor.primaryColor,
    this.fontSize = 14,
    this.fontWeight = FontWeights.semiBold,
    this.height = 56,
    this.isBorder = false,
    this.textCLR = AppColor.white,
    required this.title,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: isSecondary || isBorder ? AppColor.white : color,
            border: isBorder
                ? Border.all(
                    color: AppColor.greyText,
                    width: 1,
                  )
                : const Border(),
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Center(
          child: CustomText(
              title: title,
              color: isSecondary
                  ? AppColor.greyText
                  : isBorder
                      ? color
                      : AppColor.white,
              size: fontSize,
              fontWeight: fontWeight),
        ),
      ),
    );
  }
}
