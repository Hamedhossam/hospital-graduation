import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';
import 'package:hospital/screens/home_screen.dart';

class CustomizedBotton extends StatelessWidget {
  const CustomizedBotton({
    super.key,
    required this.formKey,
    required this.tittle,
  });

  final GlobalKey<FormState> formKey;
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () {
          if (formKey.currentState!.validate()) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const HomeScreen();
            }));
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height / 16,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(255, 21, 91, 149),
          ),
          child: Center(
            child: Text(
              tittle,
              style: labelStyle,
            ),
          ),
        ),
      ),
    );
  }
}
