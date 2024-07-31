// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:vpn_app/App/AppRoutes/routes_names.dart';
import 'package:vpn_app/App/Constant/app_config.dart';
import 'package:vpn_app/App/Constant/custom_assets.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 3000),(){
      Navigator.pushNamedAndRemoveUntil(
        context,RouteName.onBording,
        (route)=>false
      );
    }); 
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        width: AppConfig(context).width,
        height: AppConfig(context).height,
        image: const AssetImage(AppAssets.splash),
        fit: BoxFit.fill,
      ),
    );
  }
}
