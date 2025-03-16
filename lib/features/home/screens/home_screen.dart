import 'package:flutter/material.dart';
import 'package:speak_ai/features/expect/screens/page_three_screen%20copy.dart';
import 'package:speak_ai/features/learn/screens/page_two_screen.dart';
import 'page_one_screen.dart';
import '../../profile/screens/page_four_screen.dart';

import '../../../widgets/bottom_navigation_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    PageOneScreen(),
    PageTwoScreen(),
    PageThreeScreen(),
    PageFourScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationWidget(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
