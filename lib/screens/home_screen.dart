import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';
import 'package:hospital/screens/edit_profile_screen.dart';
import 'package:hospital/views/home_screen_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  String appBarTittle = "الصفحــة الرئيسية";
  final List<Widget> _pages = [
    const HomeScreenView(),
    const EditProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      index == 0 ? appBarTittle = "الصفحــة الرئيسية" : "تعديل بيانات الشخصية";
      index == 1 ? appBarTittle = "تعديل بيانات الشخصية" : "الصفحــة الرئيسية";
      _selectedIndex = index;
    });
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
                    Icons.emergency_share),
                title: Text(
                  'مستشفى الطـوارئ ',
                  style: labelStyle,
                ),
                onTap: () {
                  Navigator.pop(context);
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
                  Navigator.pop(context);
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
                  Navigator.pop(context);
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
                  Navigator.pop(context);
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
                  Navigator.pop(context);
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
                  Navigator.pop(context);
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
            icon: Icon(Icons.home),
            label: 'الرئيسية', // Home
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'الإعدادات', // Settings
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
