import 'package:flutter/material.dart';
import 'package:flutter_learning/config/navigation/home_stack.dart';
import 'package:flutter_learning/config/navigation/news_stack.dart';
import 'package:flutter_learning/kernel/widgets/bottom_navigation_tab.dart';
import 'package:flutter_learning/modules/auth/adapters/screens/profile.dart';
import 'package:flutter_learning/modules/shop/adapters/screens/shop.dart';

class Menu extends StatefulWidget{
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [HomeStack(), Profile(), Shop(), NewsStack()],
      ),
      bottomNavigationBar: BottomNavigationTab(selectedIndex: _selectedIndex, onItemTap: _onItemTap),
      
    );
  }
}