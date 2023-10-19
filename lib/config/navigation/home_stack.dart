import 'package:flutter/material.dart';
import 'package:flutter_learning/modules/home/adapters/screens/about.dart';
import 'package:flutter_learning/modules/home/adapters/screens/grid.dart';
import 'package:flutter_learning/modules/home/adapters/screens/home.dart';

class HomeStack extends StatelessWidget {
  const HomeStack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home':(context) => const Home(),
        '/home/grid':(context) => const Grid(),
        '/home/about':(context) => const About(),
      }
    );
  }
}