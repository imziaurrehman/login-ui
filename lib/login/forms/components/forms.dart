import 'package:flutter/material.dart';

class Forms_Body extends StatelessWidget {
  const Forms_Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Form(
          child: SingleChildScrollView(
        child: Column(
          children: [
            _buildEmailFormfield(),
            SizedBox(
              height: 25,
            ),
            _buildPasswordFormfield(),
          ],
        ),
      )),
    );
  }

  TextFormField _buildEmailFormfield() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Email",
      ),
    );
  }

  TextFormField _buildPasswordFormfield() {
    return TextFormField(
      decoration: InputDecoration(hintText: "Password"),
    );
  }
}
