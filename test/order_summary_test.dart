
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lab_04/models/pizza.dart';
import 'package:lab_04/order.dart';
import 'package:lab_04/order_summary.dart';

void main() {
  setUp(() {
    cart.clear();

    cart.addItem(
      const Pizza(
        name: 'Test Pizza',
        description: 'Pizza for testing',
        image: 'assets/images/pizza1.jpg',
        price: 25.00,
      ),
    );
  });

  tearDown(() {
    cart.clear();
  });

  testWidgets('Order Summary displays correct item and RM25.00 total',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: OrderSummary(),
      ),
    );

    expect(find.text('Order Summary'), findsOneWidget);
    expect(find.text('Test Pizza'), findsOneWidget);
    expect(find.text('Qty: 1'), findsOneWidget);
    expect(find.text('RM25.00'), findsOneWidget);
    expect(find.byTooltip('Back'), findsOneWidget);
  });
}
