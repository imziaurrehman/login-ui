import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/forms/login_forms.dart';
import 'login/login_screen/login_screen.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  Login_Screen.routeName: (context) => const Login_Screen(),
  Login_Forms.RouteName: (context) => const Login_Forms(),
};
