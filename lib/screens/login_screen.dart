import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/icons/hospital_icon.png"),
          const Text("أهلا بك في تطبيق مستشفلا الجامعة بطنــطا"),
          Container()
        ],
      ),
    );
  }
}
