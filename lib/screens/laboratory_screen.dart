import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';

class LaboratoryScreen extends StatelessWidget {
  const LaboratoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "المعامــل والوحـدات",
          style: labelStyle,
        ),
      ),
    );
  }
}
