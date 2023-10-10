import 'package:flutter/material.dart';
import 'package:flutter_learning/modules/count/adapters/screens/count.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Count(),
      debugShowCheckedModeBanner: false,
    );
  }
}