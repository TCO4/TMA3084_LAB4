import 'models/cart.dart';

// One shared cart for the entire application.
final Cart cart = Cart();

// These getters allow other files to access the cart data.
List<OrderCartItem> get orderItems => cart.items;

double get orderTotal => cart.total;