import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';

class TechnicalSupportScreen extends StatelessWidget {
  const TechnicalSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "الدعم الفنــي",
          style: labelStyle,
        ),
      ),
    );
  }
}
