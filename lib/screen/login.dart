import 'package:components/screen/coming_soon.dart';
import 'package:components/screen/login_signup.dart';
import 'package:flutter/material.dart';

import '../widgets/header.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ComingSoon(),
          // Header(),
          // LoginScreen(),
        ],
      ),
    );
  }
}
