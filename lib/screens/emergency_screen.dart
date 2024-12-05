import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "قسم الطوارئ",
          style: labelStyle,
        ),
      ),
    );
  }
}
