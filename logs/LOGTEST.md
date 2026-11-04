
# LOGTEST – Software Testing Record

## Project
TMA3084 – Lab 04: Pizza Store Application

## Testing Environment
- Framework: Flutter
- Programming Language: Dart
- IDE: Visual Studio Code
- Platform: Google Chrome
- Testing Tool: Flutter Test

## Test Execution

### 1. Menu and Navigation Tests
File: test/pizza_store_test.dart

- Verify all three food items appear on the menu.
- Verify navigation to the Vegetable Pizza detail screen.
- Verify the Back button returns to the menu.

Result: PASS

### 2. Cart Functionality Tests
File: test/cart_test.dart

- Verify adding an item increases cart quantity.
- Verify adding the same item increases its quantity.
- Verify correct total price calculation.
- Verify removing an item updates the cart.
- Verify clearing the cart removes all items.

Result: PASS

### 3. Order Summary Test
File: test/order_summary_test.dart

- Verify Order Summary title is displayed.
- Verify food item name and quantity are displayed.
- Verify the total amount displays RM25.00.
- Verify the Back button is available.

Result: PASS

## Test Commands

Command 1:
flutter test test/order_summary_test.dart

Command 2:
flutter test

Command 3:
flutter analyze

## Overall Result

All implemented widget and cart tests passed.
Flutter static analysis reported no issues.

## Conclusion

The Pizza Store application successfully passed the recorded
functional tests and static analysis checks.
