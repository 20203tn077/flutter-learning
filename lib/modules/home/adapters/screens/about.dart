import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Acerca de nosotros')),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: const Color.fromARGB(255, 140, 0, 255),
            child: const Text('Rebecca Alitzel'),
          ),
        ],
      )
    );
  }
}