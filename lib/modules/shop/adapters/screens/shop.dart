import 'package:flutter/material.dart';
import 'package:flutter_learning/kernel/theme/colors_app.dart';
import 'package:flutter_learning/modules/shop/adapters/screens/widgets/container_shop.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        'title': 'Balón de fútbol',
        'description': 'Balón firmado por el gobernador Cuauhtemoc Blanco',
        'initialRating': 5.0,
        'imageUri': 'assets/images/balon.jpg',
        'price': 300.0
      },{
        'title': 'Bandera UTEZ',
        'description': 'Bandera de tela UTEZ tamaño 40x70 cm',
        'initialRating': 4.5,
        'imageUri': 'assets/images/bandera.jpg',
        'price': 50.0
      },{
        'title': 'Pantalón deportivo',
        'description': 'Pantalón deportivo de alto rendimiento UTEZ',
        'initialRating': 4.0,
        'imageUri': 'assets/images/pantalon.jpg',
        'price': 500.0
      },{
        'title': 'Robot UTEZ',
        'description': 'Robot elaborado por alumnos de mecatrónica',
        'initialRating': 5.0,
        'imageUri': 'assets/images/logo-utez.png',
        'price': 1200.0
      }
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Tienda del halcón'), backgroundColor: ColorsApp.primary, foregroundColor: Colors.white,
      actions: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/shop/shop-cart');
          },
          child: Container(width: 60, height: 60, margin: const EdgeInsets.all(16), decoration: const BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.shopping_cart, color: Colors.white,),),
        )
      ],),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 2,
        mainAxisSpacing: 16,
        crossAxisCount: 2,
        children: List.generate(4, (index) => ContainerShop(title: items[index]['title'], description: items[index]['description'], initialRating: items[index]['initialRating'], imageUri: items[index]['imageUri'], price: items[index]['price']))
      )
    );
  }
}