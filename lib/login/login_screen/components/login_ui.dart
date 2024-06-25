import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/forms/components/forms.dart';
import 'package:dotted_border/dotted_border.dart';

class Login_UI extends StatelessWidget {
  const Login_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(alignment: Alignment.topRight, child: iconbutton()),
              LoginText(),
              const SizedBox(
                height: 40,
              ),
              const Forms_Body(),
              const SizedBox(
                height: 66,
              ),
              loginbutton(),
              const SizedBox(
                height: 40,
              ),
              facebookbutton(),
              const SizedBox(
                height: 14,
              ),
              googlebutton(),
              const SizedBox(
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
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 71, 126, 151),
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: const Text("Login"),
    );
  }

  DottedBorder facebookbutton() {
    return DottedBorder(
      borderType: BorderType.RRect,
      color: Colors.blue,
      radius: const Radius.circular(30),
      padding: EdgeInsets.zero,
      strokeWidth: 6,
      strokeCap: StrokeCap.butt,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(237, 255, 255, 255),
            padding: const EdgeInsets.symmetric(horizontal: 74, vertical: 15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          child: const Text(
            "Facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

//Border.all(color: Color.fromARGB(255, 211, 84, 75), width: 3)
  DottedBorder googlebutton() {
    return DottedBorder(
      borderType: BorderType.RRect,
      color: const Color.fromARGB(255, 211, 84, 75),
      radius: const Radius.circular(30),
      padding: EdgeInsets.zero,
      strokeWidth: 6,
      strokeCap: StrokeCap.butt,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(237, 255, 255, 255),
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          child: const Text(
            "Google",
            style: TextStyle(
              color: Color.fromARGB(255, 211, 84, 75),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector iconbutton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
          width: 22,
          alignment: Alignment.topRight,
          margin: const EdgeInsets.only(right: 30, top: 15),
          child: Image.asset(
            "assets/imgs/cross2.png",
            colorBlendMode: BlendMode.overlay,
            fit: BoxFit.cover,
          )),
    );
  }

  Container LoginText() {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      alignment: Alignment.center,
      child: const Text(
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
