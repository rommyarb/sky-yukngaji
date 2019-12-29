import 'package:flutter/material.dart';
import 'package:sky/tabs/main_menu.dart';
import 'package:sky/tabs/menu.dart';
import 'package:sky/tabs/notifikasi.dart';
import 'package:sky/tabs/pengaturan.dart';
import 'package:sky/tabs/profile.dart';

import 'warna.dart';

class MainTabs extends StatefulWidget {
  MainTabs({Key key}) : super(key: key);

  @override
  _MainTabsState createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs> {
  int _currentIndex = 0;
  List<Widget> _children = [
    MainMenu(),
    Notifikasi(),
    Profile(),
    Pengaturan(),
    Menu(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: _children[_currentIndex],
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: _onTabTapped,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home), title: Text("school")),
        BottomNavigationBarItem(
            icon: Icon(Icons.person), title: Text("person")),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), title: Text("settings")),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), title: Text("notifications")),
        BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("menu")),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: warnaUtama,
      unselectedItemColor: Colors.grey[400],
      iconSize: 32,
      elevation: 3,
    );
  }

  _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
