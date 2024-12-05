import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';
import 'package:hospital/models/section_model.dart';
import 'package:hospital/widgets/section_widget.dart';

class ClinicsScreen extends StatelessWidget {
  const ClinicsScreen({
    super.key,
    required this.sectionsList,
  });
  final List<SectionModel> sectionsList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "العيـادات",
          style: labelStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 items per row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: sectionsList.length,
          itemBuilder: (context, index) {
            return SectionWidget(sectionModel: sectionsList[index]);
          },
        ),
      ),
    );
  }
}
