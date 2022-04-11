import 'package:flutter/material.dart';
import 'package:git_intro/constants/r.dart';
import 'package:git_intro/view/login_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return LoginPage();
          }));
        },
        child: Center(
          child: Image.asset(
            R.assets.icSplash,
            width: MediaQuery.of(context).size.width * 0.5,
          ),
        ),
      ),
      backgroundColor: R.colors.primary,
    );
  }
}
