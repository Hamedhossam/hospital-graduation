import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';
import 'package:hospital/screens/home_screen.dart';

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
                  SizedBox(
                      height: MediaQuery.sizeOf(context).height / 4,
                      child: Image.asset("assets/icons/hospital_icon.png")),
                  Text(
                    textAlign: TextAlign.center,
                    "أهلا بك في تطبيق مستشفى الجامعة بطنــطا",
                    style: specialStyle,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
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
                  const SizedBox(height: 80),
                  Text(
                    textAlign: TextAlign.center,
                    "تسجيــل الدخول",
                    style: specialStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
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
                        hintText: 'ادخل رقم الهاتف هنــا',
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
                  ),
                  Padding(
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
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(255, 21, 91, 149)),
                        child: Center(
                          child: Text(
                            "إدخــال",
                            style: labelStyle,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
