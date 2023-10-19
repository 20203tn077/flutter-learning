import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  final colors = [
    const Color(0xFF333333),
    const Color(0xFF666A86),
    const Color(0xFF95B8D1),
    const Color(0xFFE8DDB5),
    const Color(0xFFEDAFB8),
  ];
  int currIndex = 0;
  Color currColor = const Color(0xFF333333);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
        backgroundColor: currColor,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Texto de color:', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: currColor)),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          currIndex = (currIndex + 1) % colors.length;
          currColor = colors[currIndex];
          setState(() {});
        },
        backgroundColor: currColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
