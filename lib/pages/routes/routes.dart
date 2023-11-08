
import 'package:fisqui_bot/pages/pages.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String homePage = '/';
  static const String splashPage = '/splashPage';
  static const String physicPage = '/physicPage';
  static const String chemistryPage = '/chemistryPage';
  static const String commandPage = '/commandPage';

  static Map<String, WidgetBuilder> routes(BuildContext context) {
    return {
      splashPage : (context) => const SplashPage(),
      homePage : (context) => const HomePage(),
      physicPage : (context) => const PhysicPage(),
      chemistryPage : (context) => const ChemistryPage(),
    };
  }
}