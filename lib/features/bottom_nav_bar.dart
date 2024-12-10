import 'package:clot_app/core/constants/color.dart';
import 'package:clot_app/features/notification/notification_page.dart';
import 'package:clot_app/features/order/order_page.dart';
import 'package:clot_app/features/profile/profile_page.dart';
import 'package:flutter/material.dart';

import 'home/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  List<Widget> pages = [
    const HomePage(),
    NotificationPage(),
    const OrderPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: CustomColor.buttonColor,
        currentIndex: _currentIndex,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItemWidget(
            "Home",
            "assets/images/home.png",
          ),
          BottomNavigationBarItemWidget(
            " Notification",
            "assets/images/notification.png",
          ),
          BottomNavigationBarItemWidget(
            " Orders",
            "assets/images/mark.png",
          ),
          BottomNavigationBarItemWidget(
            " Profile",
            "assets/images/person.png",
          ),
        ],
      ),
    );
  }
}

BottomNavigationBarItem BottomNavigationBarItemWidget(
    String label, String imageUrl) {
  return BottomNavigationBarItem(
    backgroundColor: CustomColor.mainColor,
    label: label,
    icon: ImageIcon(
      AssetImage(imageUrl),
      size: 45,
    ),
  );
}
