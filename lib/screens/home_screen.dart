import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';
import 'package:hospital/screens/blood_bank_screen.dart';
import 'package:hospital/screens/edit_profile_screen.dart';
import 'package:hospital/screens/emergency_screen.dart';
import 'package:hospital/screens/laboratory_screen.dart';
import 'package:hospital/screens/sections_screen.dart';
import 'package:hospital/screens/technical_support_screen.dart';
import 'package:hospital/views/home_screen_view.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;
  String appBarTittle = "الصفحــة الرئيسية";
  final List<Widget> _pages = [
    const EditProfileScreen(),
    HomeScreenView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      index == 0 ? appBarTittle = "الصفحــة الرئيسية" : "تعديل بيانات الشخصية";
      index == 1 ? appBarTittle = "تعديل بيانات الشخصية" : "الصفحــة الرئيسية";
      _selectedIndex = index;
    });
  }

  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          appBarTittle,
          style: labelStyle,
        ),
      ),
      endDrawer: Directionality(
        textDirection: TextDirection.rtl,
        child: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 21, 91, 149),
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: mainColor),
                  accountName: Text(
                    userName,
                    style: labelStyle,
                  ),
                  accountEmail: Text(
                    phone,
                    style: labelStyle,
                  ),
                ), //UserAccountDrawerHeader
              ),
              ListTile(
                leading: const Icon(
                  size: 30,
                  color: Color.fromARGB(255, 165, 36, 27),
                  Icons.emergency_share,
                ),
                title: Text(
                  'مستشفى الطـوارئ ',
                  style: labelStyle,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const EmergencyScreen();
                  }));
                },
              ),
              ListTile(
                leading: const Icon(
                    size: 30,
                    color: Color.fromARGB(255, 165, 36, 27),
                    Icons.design_services),
                title: Text(
                  'الأقســام',
                  style: labelStyle,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SectionsScreen();
                  }));
                },
              ),
              ListTile(
                leading: const Icon(
                  size: 30,
                  color: Color.fromARGB(255, 165, 36, 27),
                  Icons.medical_information,
                ),
                title: Text(
                  'المعامل والوحـدات',
                  style: labelStyle,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LaboratoryScreen();
                  }));
                },
              ),
              ListTile(
                leading: const Icon(
                    size: 30,
                    color: Color.fromARGB(255, 165, 36, 27),
                    Icons.bloodtype),
                title: Text(
                  'بنــك الدم',
                  style: labelStyle,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const BloodBankScreen();
                  }));
                },
              ),
              ListTile(
                leading: const Icon(
                    size: 30,
                    color: Color.fromARGB(255, 165, 36, 27),
                    Icons.location_on),
                title: Text(
                  'الوصول للمستشفى',
                  style: labelStyle,
                ),
                onTap: () {
                  _launchUrl(
                      "https://www.google.com/maps/dir//University+Teaching+Hospital+%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D8%B7%D9%84%D8%A8%D9%87+Al+Doctor+Naghatti+Tanta+Qism+2,+First+Tanta,+Gharbia+Governorate+6624033%E2%80%AD%E2%80%AD/@30.8021178,30.9943836,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x14f7c978bb69b90f:0xddae0c8dd3497047!2m2!1d30.9943836!2d30.8021178?entry=ttu&g_ep=EgoyMDI0MTIwMy4wIKXMDSoASAFQAw%3D%3D");
                },
              ),
              ListTile(
                leading: const Icon(
                    size: 30,
                    color: Color.fromARGB(255, 165, 36, 27),
                    Icons.support_agent),
                title: Text(
                  'الدعــم الفني',
                  style: labelStyle,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const TechnicalSupportScreen();
                  }));
                },
              ),
              ListTile(
                leading: const Icon(
                    size: 30,
                    color: Color.fromARGB(255, 165, 36, 27),
                    Icons.logout),
                title: Text(
                  'تسجيــل الخروج',
                  style: labelStyle,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ), //Drawer
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: normalStyle,
        iconSize: 25,
        unselectedLabelStyle: normalStyle,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'الإعدادات', // Settings
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية', // Home
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color.fromARGB(255, 21, 91, 149),
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black, // Dark mode background
      ),
      body: _pages[_selectedIndex],
    );
  }
}
