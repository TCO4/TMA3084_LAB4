import 'package:flutter/material.dart';
import '../models/pizza_data.dart';
import 'pizza_detail_screen.dart';

class FriesScreen extends StatelessWidget {
  const FriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PizzaDetailScreen(pizza: pizzaMenu[2]);
  }
}