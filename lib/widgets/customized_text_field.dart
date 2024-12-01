import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';

class CustomizedTextField extends StatelessWidget {
  const CustomizedTextField({
    required this.hint,
    super.key,
  });
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8,
      ),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return "قم بإدخال الرقم أولا";
          } else if (value.length != 11) {
            return "قم بإدخال رقم صحيح";
          } else {
            return null;
          }
        },
        style: labelStyle,
        textAlign: TextAlign.left,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          suffixIcon: const Icon(Icons.phone_android),
          hintText: hint,
          hintStyle: normalStyle,
          hintTextDirection: TextDirection.ltr,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.orange,
              width: 2.0,
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
    );
  }
}
