import 'package:flutter/material.dart';
import 'package:flutter_learning/kernel/theme/colors_app.dart';

class BottomNavigationTab extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTap;
  const BottomNavigationTab({super.key, required this.selectedIndex, required this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Configuración'),
    ],
    currentIndex: selectedIndex,
    selectedItemColor: ColorsApp.primaryColor,
    onTap: onItemTap,
    );
  }
}
