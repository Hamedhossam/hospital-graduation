import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';
import 'package:hospital/widgets/customized_botton.dart';
import 'package:hospital/widgets/customized_text_field.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundImage:
                          const AssetImage("assets/icons/hospital_icon.jpg"),
                      radius: MediaQuery.sizeOf(context).height / 8,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "أهلا بك في تطبيق مستشفى الجامعة بطنــطا",
                    style: specialStyle,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const SizedBox(height: 32),
                  Text(
                    textAlign: TextAlign.center,
                    "تسجيــل الدخول",
                    style: specialStyle,
                  ),
                  const CustomizedTextField(
                    hint: 'أدخل رقم الهاتف هنــا',
                  ),
                  CustomizedBotton(
                    formKey: formKey,
                    tittle: "إدخــال",
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      Text(
                        "* قم بالتسجيل عن طريق الهــــاتف المحمــول",
                        style: labelStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "* تمتع بالخدمات الطبية خلال التطبيق",
                        style: labelStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
