// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:vpn_app/App/AppRoutes/routes_names.dart';
import 'package:vpn_app/App/Splash%20and%20On%20Bording/on_bording.dart';
import 'package:vpn_app/App/Splash%20and%20On%20Bording/splash.dart';

import '../Authentication/View/login.dart';

class AppRoutes {
  static Route<dynamic> genrateRoutes(RouteSettings settings) {
    List arguments =
        settings.arguments != null ? (settings.arguments as List) : [];
    switch (settings.name) {
      case RouteName.splash:
        return MaterialPageRoute(
          builder: ((context) {
            return const SplashScreen();
          }),
        );
         case RouteName.onBording:
        return MaterialPageRoute(
          builder: ((context) {
            return const OnBordingScreen();
          }),
        );
        case RouteName.loginScreeen:
        return MaterialPageRoute(
          builder: ((context) {
            return const LoginScreeen();
          }),
        );
      default:
        {
          return MaterialPageRoute(
            builder: ((context) => Scaffold(
                  body: Container(
                    child: const Center(
                      child: Text(" Route Null "),
                    ),
                  ),
                )),
          );
        }
    }
  }
}
