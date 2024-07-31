// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vpn_app/App/AppRoutes/routes_names.dart';
import 'package:vpn_app/App/Constant/custom_assets.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
@override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 3000),(){
      Navigator.pushNamedAndRemoveUntil(
        context,RouteName.loginScreeen,
        (route)=>false
      );
    }); 
  }
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Image(
        image: const AssetImage(AppAssets.Onboarding)),
    );
  }
}