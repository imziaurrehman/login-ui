import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_forms.dart';
import 'package:flutter_application_1/main.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  Login_Screen.routeName: (context) => const Login_Screen(),
  Login_Forms.RouteName: (context) => const Login_Forms(),
};
