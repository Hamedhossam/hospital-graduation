import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController phoneController = TextEditingController();
  File? _image;
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  // void _viewImage() {
  //   if (_image != null) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => ImageViewPage(image: _image!),
  //       ),
  //     );
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(content: Text("No image uploaded")),
  //     );
  //   }
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController.text = userName;
    phoneController.text = phone;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  " تعديـل الإسم",
                  style: labelStyle,
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "قم بإدخال بيانات ";
                  } else {
                    return null;
                  }
                },
                style: labelStyle,
                textAlign: TextAlign.right,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.perm_identity_rounded),
                  hintText: 'ادخل الأسم هنا',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  " تعديـل الهاتـف",
                  style: labelStyle,
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: TextFormField(
                controller: phoneController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "قم بإدخال بيانات ";
                  } else {
                    return null;
                  }
                },
                style: labelStyle,
                textAlign: TextAlign.right,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.phone),
                  hintText: 'ادخل رقم الهاتـف',
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
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: _pickImage,
                child: Text(
                  'تحميل البطاقة الشخصية',
                  style: normalStyle,
                ),
              ),
            ),
            _image != null
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ImageViewPage(image: _image!),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height / 5,
                      width: MediaQuery.sizeOf(context).height / 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "لا يوجد صورة",
                          style: normalStyle,
                        ),
                      ),
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GestureDetector(
                onTap: () {
                  if (formKey.currentState!.validate()) {}
                },
                child: Container(
                  height: 55,
                  padding: const EdgeInsets.all(8),
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(255, 21, 91, 149),
                  ),
                  child: Center(
                    child: Text(
                      "تعديـل",
                      style: labelStyle,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageViewPage extends StatelessWidget {
  final File image;

  const ImageViewPage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height / 5,
          width: MediaQuery.sizeOf(context).height / 5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image:
                  DecorationImage(image: FileImage(image), fit: BoxFit.fill)),
        ),
        Text('..البطاقة قيد المراجعة',
            style: normalStyle?.copyWith(color: Colors.grey)),
      ],
    );
  }
}
