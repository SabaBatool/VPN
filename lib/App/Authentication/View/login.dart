import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vpn_app/App/Common/app_btn.dart';
import 'package:vpn_app/App/Common/app_text.dart';
import 'package:vpn_app/App/Common/theme.dart';
import 'package:vpn_app/App/Constant/app_config.dart';
import 'package:vpn_app/App/Constant/custom_assets.dart';

class LoginScreeen extends StatefulWidget {
  const LoginScreeen({super.key});

  @override
  State<LoginScreeen> createState() => _LoginScreeenState();
}

class _LoginScreeenState extends State<LoginScreeen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColor.black,
        body: Padding(
          padding: EdgeInsets.only(top: 150, left: 30, right: 30),
          child: Column(
            children: [
              Center(
                child: CustomText(
                  title: 'Welcome Back!',
                  color: AppColor.white,
                  fontWeight: FontWeight.w800,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 18),
                child: Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    title:
                        'You will get 7 days free trial on creating new account. ',
                    color: AppColor.white,
                    fontWeight: FontWeight.w300,
                    size: 10,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                child: Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    title: 'Make sure you use correct informations ',
                    color: AppColor.white,
                    fontWeight: FontWeight.w300,
                    size: 10,
                  ),
                ),
              ),
              PrimaryBTN(
                  callback: () {
                  },
                  title: 'Continue',
                  height: 56,
                  borderRadius: 10),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ));
  }
}
