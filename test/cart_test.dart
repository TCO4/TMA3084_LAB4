
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/models/cart.dart';
import 'package:lab_04/models/pizza_data.dart';

void main() {
  late Cart cart;

  setUp(() {
    cart = Cart();
  });

  test('Adding an item increases cart quantity', () {
    cart.addItem(pizzaMenu[0]);

    expect(cart.itemCount, 1);
    expect(cart.items.length, 1);
  });

  test('Adding the same item increases its quantity', () {
    cart.addItem(pizzaMenu[0]);
    cart.addItem(pizzaMenu[0]);

    expect(cart.itemCount, 2);
    expect(cart.items.first.quantity, 2);
  });

  test('Cart calculates the correct total', () {
    cart.addItem(pizzaMenu[0]);
    cart.addItem(pizzaMenu[2]);

    expect(cart.total, 23.00);
  });

  test('Removing an item updates the cart', () {
    cart.addItem(pizzaMenu[0]);
    cart.removeItem(pizzaMenu[0].name);

    expect(cart.itemCount, 0);
    expect(cart.total, 0.0);
  });

  test('Clearing the cart removes all items', () {
    cart.addItem(pizzaMenu[0]);
    cart.addItem(pizzaMenu[1]);
    cart.clear();

    expect(cart.items, isEmpty);
    expect(cart.total, 0.0);
  });
}
