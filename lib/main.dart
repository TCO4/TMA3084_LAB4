
import 'package:flutter/material.dart';

import 'screens/menu_screen.dart';
import 'screens/vegetable_screen.dart';
import 'screens/cheese_screen.dart';
import 'screens/fries_screen.dart';
import 'order_summary.dart';

void main() {
  runApp(const PizzaStoreApp());
}

class PizzaStoreApp extends StatelessWidget {
  const PizzaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizza Store',

      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.white,
      ),

      initialRoute: '/',

      routes: {
        '/order-summary': (context) => const OrderSummary(),
        '/': (context) => const MenuScreen(),
        '/vegetable': (context) => const VegetableScreen(),
        '/cheese': (context) => const CheeseScreen(),
        '/fries': (context) => const FriesScreen(),
      },
    );
  }
}
