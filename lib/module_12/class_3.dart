import 'package:flutter/material.dart';

import '../module_11/class_3.dart';
import '../module_11/gridViewClass1.dart';
import 'TravelHomeScreen.dart';
import 'class_1.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  List pages = [
    TravelHomeScreen(),
    Gridviewclass1(),
    Alert(),
  ];

  onTab(int index){
    setState(() {
      print('test index $index');
      _selectedIndex = index;
    });


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
          onTap: onTab,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]
      
      ),
    );
  }
}
