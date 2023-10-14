// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:my_kost_app/views/screens/cart_page.dart';
import 'package:my_kost_app/views/screens/category_page.dart';
import 'package:my_kost_app/views/screens/home_page.dart';
import 'package:my_kost_app/views/screens/profile_page.dart';

class Navbar extends StatefulWidget {
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  static List<Widget> _widgetScreens = <Widget>[
    HomePage(),
    CategoryPage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetScreens[_currentIndex],
      bottomNavigationBar: GNav(
        activeColor: Color.fromARGB(255, 249, 228, 152),
        color: Color.fromARGB(255, 197, 137, 64),
        tabBackgroundColor: Colors.black26,
        tabBorderRadius: 15,
        padding: EdgeInsets.all(30),
        haptic: true,
        tabs: [
          GButton(
            icon: Icons.home,
          ),
          GButton(icon: Icons.category),
          GButton(icon: Icons.shopping_cart),
          GButton(icon: Icons.person),
        ],
        selectedIndex: _currentIndex,
        onTabChange: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
