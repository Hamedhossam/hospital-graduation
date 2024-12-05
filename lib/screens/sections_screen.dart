import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';

class SectionsScreen extends StatelessWidget {
  const SectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "الأقسـام",
          style: labelStyle,
        ),
      ),
    );
  }
}
