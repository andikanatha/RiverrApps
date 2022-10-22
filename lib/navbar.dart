import 'package:flutter/material.dart';
import 'package:me_doc/pages/counselor_page.dart';
import 'package:me_doc/pages/home.dart';
import 'package:me_doc/pages/menu.dart';
import 'package:me_doc/pages/profile_page.dart';
import 'package:me_doc/pages/statistic_page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentIndex = 0;

  void navigateTo(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget _body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const MenuPage();
      case 2:
        return const StatisticPage();
      case 3:
        return const CounselorPage();
      default:
        return const ProfilePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          elevation: 0,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Image.asset('assets/bottom_navbar_icon/home_icon.png'),
              ),
              label: '',
              activeIcon: Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Image.asset('assets/bottom_navbar_icon/home_icon_filled.png'),
              ),),
            BottomNavigationBarItem(
              label: '',
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Image.asset('assets/bottom_navbar_icon/menu_icon.png'),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Image.asset('assets/bottom_navbar_icon/menu_icon_filled.png'),
              ),),
            BottomNavigationBarItem(
              label: '',
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Image.asset('assets/bottom_navbar_icon/statistic_icon.png'),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Image.asset('assets/bottom_navbar_icon/statistic_icon_filled.png'),
              ),),
            BottomNavigationBarItem(
              label: '',
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Image.asset('assets/bottom_navbar_icon/counselor_icon.png'),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Image.asset('assets/bottom_navbar_icon/counselor_icon_filled.png'),
              ),),
            BottomNavigationBarItem(
              label: '',
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Image.asset('assets/bottom_navbar_icon/profile_icon.png'),
              ),
              activeIcon:  Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Image.asset('assets/bottom_navbar_icon/profile_icon.png'),
              ),),
          ],
        ),
      )
    );
  }
}
