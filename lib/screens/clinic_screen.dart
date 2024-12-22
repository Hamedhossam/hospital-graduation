import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';

class ClinicScreen extends StatefulWidget {
  const ClinicScreen({
    super.key,
    required this.tittle,
    required this.icon,
  });
  final String tittle;
  final String icon;

  @override
  State<ClinicScreen> createState() => _ClinicScreenState();
}

class _ClinicScreenState extends State<ClinicScreen> {
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
              widget.tittle,
              style: labelStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 32),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 15,
                backgroundImage: AssetImage(widget.icon),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 200),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  numberOfNowPatiant,
                  style: specialStyle?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
                Text(
                  "  : رقم الحالي",
                  style: specialStyle,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  numberOfPatiant,
                  style: specialStyle?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
                Text(
                  "  : رقمك",
                  style: specialStyle,
                ),
              ],
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                setState(() {
                  numberOfPatiant =
                      (int.parse(numberOfNowPatiant) + 8).toString();
                });
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '✅ تم حجز الرقم ',
                                  style: labelStyle,
                                )
                              ],
                            ),
                            const SizedBox(height: 60),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'رقمــك هو',
                                  style: specialStyle,
                                )
                              ],
                            ),
                            const SizedBox(height: 30),
                            Text(
                              (int.parse(numberOfNowPatiant) + 8).toString(),
                              style: specialStyle?.copyWith(
                                color: Colors.green,
                                fontSize: 30,
                              ),
                            )
                          ],
                        ),
                      );
                    });
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
                    'حجز رقم',
                    style: labelStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
