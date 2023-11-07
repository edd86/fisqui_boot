import 'package:fisqui_bot/pages/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      title: 'FisQuiBoot',
      routes: AppRoutes.routes(context),
      initialRoute: AppRoutes.splashPage,
      //home: SplashPage(),
    );
  }
}
