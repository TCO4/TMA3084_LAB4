
import 'package:flutter/foundation.dart';
import 'pizza.dart';

class Cart extends ChangeNotifier {
  final Map<String, OrderCartItem> _items = {};

  List<OrderCartItem> get items => _items.values.toList();

  int get itemCount => _items.values.fold(
        0,
        (total, item) => total + item.quantity,
      );

  double get total => _items.values.fold(
        0.0,
        (sum, item) => sum + item.subtotal,
      );

  void addItem(Pizza pizza) {
    if (_items.containsKey(pizza.name)) {
      _items[pizza.name]!.quantity++;
    } else {
      _items[pizza.name] = OrderCartItem(
        pizza: pizza,
        quantity: 1,
      );
    }

    notifyListeners();
  }

  void removeItem(String name) {
    _items.remove(name);
    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}

class OrderCartItem {
  final Pizza pizza;
  int quantity;

  OrderCartItem({
    required this.pizza,
    required this.quantity,
  });

  String get name => pizza.name;

  double get price => pizza.price;

  double get subtotal => pizza.price * quantity;
}