import 'package:flutter/material.dart';
import 'package:mobile/routes/app_pages.dart';
import 'package:mobile/view/pages/login/body.dart';
import 'package:mobile/view/pages/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppPages.routes,
      home: SplashScreen(),
    );
  }
}
