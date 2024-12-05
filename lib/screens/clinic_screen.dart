import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';

class ClinicScreen extends StatelessWidget {
  const ClinicScreen({
    super.key,
    required this.tittle,
    required this.icon,
  });
  final String tittle;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tittle,
              style: labelStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 32),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 15,
                backgroundImage: AssetImage(icon),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
