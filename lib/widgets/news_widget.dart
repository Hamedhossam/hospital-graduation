import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 120, 119, 119),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Color.fromARGB(255, 209, 209, 209),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 45,
                    width: 175,
                    child: Text(
                        textAlign: TextAlign.right,
                        maxLines: 2,
                        style: normalStyle,
                        overflow: TextOverflow.ellipsis,
                        " إدارة مستشفيات جامعة طنطا والسادة أعضاء هيئة التدريس ومعاونيهم والسادة العاملين وهيئة التمريض، بخالص التهاني القلبية"),
                  ),
                  const SizedBox(
                    height: 45,
                    width: 175,
                    child: Text(
                        style: TextStyle(
                          fontFamily: "NotoKufiArabic",
                          fontSize: 14,
                          color: Color.fromARGB(179, 255, 255, 255),
                        ),
                        textAlign: TextAlign.right,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        " لتعيين سيادته مشرفاً عاماً على مستشفيات جامعة طنطا."),
                  ),
                ],
              ),
              Container(
                height: 90,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://hospital2.tanta.edu.eg/images/photo.jpg"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
