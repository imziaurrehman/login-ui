import 'package:flutter/material.dart';
import './routes.dart';
import 'login/login_screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Login_Screen.routeName,
      routes: routes,
    );
  }
}


/*

 1. git add .
→ 2. git commit -m "description"
→ 3. git push -u origin branchName

*/