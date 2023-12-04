import 'package:flutter/material.dart';
import 'package:mobile/view/pages/login_pages/view_body_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BodyLogin());
  }
}
