import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_forms.dart';
import './routes.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

class Login_Screen extends StatelessWidget {
  const Login_Screen({Key? key}) : super(key: key);
  static const routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // ),
      backgroundColor: Color.fromARGB(237, 255, 255, 255),
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              iconbutton(),
              LoginText(),
              SizedBox(
                height: 40,
              ),
              Forms_Body(),
              SizedBox(
                height: 66,
              ),
              loginbutton(),
              SizedBox(
                height: 40,
              ),
              facebookbutton(),
              SizedBox(
                height: 12,
              ),
              googlebutton(),
              SizedBox(
                height: 50,
              ),
              InkWell(
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                ),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton loginbutton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text("Login"),
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 71, 126, 151),
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
  }

  Container facebookbutton() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 3),
          borderRadius: BorderRadius.circular(30)),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Facebook",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(237, 255, 255, 255),
          padding: EdgeInsets.symmetric(horizontal: 74, vertical: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }

  Container googlebutton() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 211, 84, 75), width: 3),
          borderRadius: BorderRadius.circular(30)),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Google",
          style: TextStyle(
            color: Color.fromARGB(255, 211, 84, 75),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(237, 255, 255, 255),
          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }

  Container iconbutton() {
    return Container(
        // width: 40,
        // height: 40,
        child: Image.asset("assets/imgs/cross.png"),
        alignment: Alignment.topRight,
        margin: EdgeInsets.only(right: 0, top: 15));
  }

  Container LoginText() {
    return Container(
      margin: EdgeInsets.only(top: 60),
      alignment: Alignment.center,
      child: Text(
        "Login",
        textScaleFactor: 2.2,
        style: TextStyle(
          color: Color.fromARGB(255, 44, 110, 140),
          // fontSize: 28,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
