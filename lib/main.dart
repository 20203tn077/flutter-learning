import 'package:flutter/material.dart';
import 'package:flutter_learning/kernel/widgets/splash.dart';
import 'package:flutter_learning/modules/shop/adapters/screens/details_shop.dart';
import 'package:flutter_learning/modules/shop/adapters/screens/shop_cart.dart';

import 'kernel/widgets/menu.dart';

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
        '/shop/detail-shop':(context) => const DetailShop(),
        '/shop/shop-cart':(context) => const ShopCart(),
      },
    );
  }
}