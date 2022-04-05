import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Login"),
          Image.asset("assets/auth/img_login.png"),
          Text("data"),
          Text("data")
        ],
      ),
    );
  }
}
