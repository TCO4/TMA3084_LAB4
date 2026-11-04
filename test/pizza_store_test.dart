
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/main.dart';

void main() {
  testWidgets('Menu displays all three food items', (WidgetTester tester) async {

    // Launch the Pizza Store application
    await tester.pumpWidget(const PizzaStoreApp());

    // Wait for the widgets to render
    await tester.pumpAndSettle();

    // Verify all three food items are displayed
    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
    expect(find.text('Box of Fries'), findsOneWidget);
  });
  
testWidgets('Tapping a menu card opens its detail screen',
    (WidgetTester tester) async {

  await tester.pumpWidget(const PizzaStoreApp());
  await tester.pumpAndSettle();

  // Tap Vegetable Pizza
  await tester.tap(find.text('Vegetable Pizza'));
  await tester.pumpAndSettle();

  // Verify the detail screen appears
  expect(find.text('Vegetable Pizza'), findsNWidgets(2));
  expect(
    find.text('Fresh vegetables topped with mozzarella cheese.'),
    findsOneWidget,
  );
});

testWidgets('Back button returns to the menu',
    (WidgetTester tester) async {

  await tester.pumpWidget(const PizzaStoreApp());
  await tester.pumpAndSettle();

  // Open Vegetable Pizza detail screen
  await tester.tap(find.text('Vegetable Pizza'));
  await tester.pumpAndSettle();

  // Tap the back button in the AppBar
  await tester.tap(find.byTooltip('Back'));
  await tester.pumpAndSettle();

  // Verify we returned to the menu
  expect(find.text('Choose Your Favourite Food!'), findsOneWidget);
  expect(find.text('Cheese Pizza'), findsOneWidget);
  expect(find.text('Box of Fries'), findsOneWidget);
});

}

