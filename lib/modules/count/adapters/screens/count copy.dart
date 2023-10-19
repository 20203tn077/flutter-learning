// import 'package:flutter/material.dart';

// class Count extends StatefulWidget {
//   const Count({super.key});

//   @override
//   State<Count> createState() => _CountState();
// }

// class _CountState extends State<Count> {
//   final fontTouch = const TextStyle(
//       fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFFF564A9));
//   int count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Contador'),
//       ),
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('Número de toques:', style: fontTouch),
//           Text('$count'),
//         ],
//       )),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           count++;
//           setState(() {});
//         },
//       ),
//     );
//   }
// }
