
import 'package:flutter/material.dart';
import '../models/pizza.dart';
import '../order.dart';

class PizzaDetailScreen extends StatelessWidget {
  final Pizza pizza;

  const PizzaDetailScreen({
    super.key,
    required this.pizza,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pizza.name),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                pizza.image,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.orange.shade100,
                    child: const Icon(
                      Icons.fastfood,
                      size: 100,
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 24),

            Text(
              pizza.name,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              pizza.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'RM ${pizza.price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  cart.addItem(pizza);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${pizza.name} added to your order!'),
                    ),
                  );
                },
                icon: const Icon(Icons.add_shopping_cart),
                label: const Text('Add to Order'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16),
                ),
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/order-summary');
                },
                icon: const Icon(Icons.receipt_long),
                label: const Text('View Order Summary'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.deepOrange,
                  padding: const EdgeInsets.all(16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
