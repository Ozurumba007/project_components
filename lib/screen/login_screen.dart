import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileView(),
      desktop: (context) => WebsiteView(),
    );
  }

  // =============== M O B I L E ================

  Widget MobileView() {
    return Scaffold();
  }

  // =============== M O B I L E ================

  Widget WebsiteView() {
    return Scaffold();
  }
}
