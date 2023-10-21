import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio')),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/home/grid');
            },
            child: const Text('Grid View')
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/home/about');
            },
            child: const Text('Acerca de nosotros')
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/home/register');
            },
            child: const Text('Registro')
          ),
        ],
        )),
    );
  }
}
