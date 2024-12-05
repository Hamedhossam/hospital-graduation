import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';

class BloodBankScreen extends StatelessWidget {
  const BloodBankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "بنــك الدم",
          style: labelStyle,
        ),
      ),
    );
  }
}
