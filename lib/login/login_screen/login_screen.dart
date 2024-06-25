import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/login_screen/components/login_ui.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({Key? key}) : super(key: key);
  static const routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(247, 255, 252, 252), body: Login_UI());
  }
}
