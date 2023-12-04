import 'package:flutter/material.dart';
import 'package:mobile/routes/app_pages.dart';
import 'package:mobile/view/pages/login_pages/view_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppPages.routes,
      home: LoginPage(),
    );
  }
}
