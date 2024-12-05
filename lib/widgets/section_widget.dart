import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';
import 'package:hospital/models/section_model.dart';
import 'package:hospital/screens/clinic_screen.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    super.key,
    required this.sectionModel,
  });
  final SectionModel sectionModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ClinicScreen(
            tittle: sectionModel.name,
            icon: sectionModel.icon,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Container(
          width: 160,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: mainColor,
                  radius: 45,
                  backgroundImage: AssetImage(sectionModel.icon),
                ),
                Text(
                  sectionModel.name,
                  style: labelStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
