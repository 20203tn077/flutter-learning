import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  const Count({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: const Center(
        child: Column(
          children: [
            Text('Número de toques:'),
            Text('0'),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )
      ),
    );
  }
}