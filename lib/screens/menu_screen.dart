
import 'package:flutter/material.dart';

import '../models/pizza_data.dart';
import '../widgets/pizza_card.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  void navigateToDetail(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/vegetable');
        break;
      case 1:
        Navigator.pushNamed(context, '/cheese');
        break;
      case 2:
        Navigator.pushNamed(context, '/fries');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizza Store'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Choose Your Favourite Food!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: pizzaMenu.length,
              itemBuilder: (context, index) {
                final pizza = pizzaMenu[index];

                return PizzaCard(
                  pizza: pizza,
                  onTap: () {
                    navigateToDetail(context, index);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
