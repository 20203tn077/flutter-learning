import 'package:flutter/material.dart';
import 'package:flutter_learning/config/navigation/home_stack.dart';
import 'package:flutter_learning/kernel/widgets/bottom_navigation_tab.dart';
import 'package:flutter_learning/kernel/widgets/splash.dart';
import 'package:flutter_learning/modules/auth/adapters/screens/profile.dart';
import 'package:flutter_learning/modules/home/adapters/screens/home.dart';
import 'package:flutter_learning/modules/settings/adapters/screens/settings.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(title: 'Cargando...',),
        '/menu': (context) => const Menu(),
      },
    );
  }
}

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
        children: const [HomeStack(), Profile(), Settings()],
      ),
      bottomNavigationBar: BottomNavigationTab(selectedIndex: _selectedIndex, onItemTap: _onItemTap),
      
    );
  }
}