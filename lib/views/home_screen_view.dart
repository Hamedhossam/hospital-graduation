import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';
import 'package:hospital/widgets/news_widget.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "عرض الكــل",
                style: normalStyle,
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                "العيـادات الصحــية",
                style: labelStyle,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height / 6.5,
              width: double.maxFinite,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
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
                              const Icon(
                                Icons.location_city,
                                size: 90,
                              ),
                              Text(
                                sections[index],
                                style: labelStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "المزيد",
                style: normalStyle,
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                "اخر الأخبــار",
                style: labelStyle,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height / 1.90,
              width: double.maxFinite,
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return const NewsWidget();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
