import 'package:flutter/material.dart';
import 'package:flutter_learn/features/discover/discover.dart';
import 'package:flutter_learn/features/home/home.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    const HomePage(),
    const Discover(),
    const Center(
      child: Text(
        'Reels',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    ),
    const Center(
      child: Text(
        'Shop',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          currentIndex: _selectedIndex,
          backgroundColor: Colors.white,
          iconSize: 35,
          onTap: _onTap,
          items: const [
            BottomNavigationBarItem(
              label: "Wallet",
              icon: Icon(
                Icons.shield_sharp,
              ),
            ),
            BottomNavigationBarItem(
              label: "Discover",
              icon: Icon(
                Icons.search,
              ),
            ),
            BottomNavigationBarItem(
              label: "Browser",
              icon: Icon(
                Icons.window_rounded,
              ),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(
                Icons.settings,
              ),
            ),
          ]),
    );
  }
}
