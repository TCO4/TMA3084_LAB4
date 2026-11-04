
# LOGD – Debugging Record

## Project
TMA3084 – Lab 04: Pizza Store Application

## Bug Description
During the development of the Order Summary screen, Flutter
reported errors because the OrderCartItem class did not
contain the required name and price properties.

## Error Identified
The Order Summary screen attempted to access:
- item.name
- item.price

However, the OrderCartItem class initially only contained
the pizza object, quantity, and subtotal getter.

## Root Cause
The Order Summary screen expected direct access to item
properties, but the cart model stored the information
inside the Pizza object.

## Debugging Solution
Updated the OrderCartItem class in lib/models/cart.dart
by adding two getter methods:

- String get name => pizza.name;
- double get price => pizza.price;

These getters provide direct access to the pizza name
and unit price.

## Verification
1. Saved the modified cart.dart file.
2. Executed flutter analyze.
3. Confirmed that no issues were found.
4. Ran the Flutter test suite successfully.

## Final Result
The Order Summary screen successfully accessed the
required item properties and displayed the correct
information.

## Conclusion
The issue was resolved by improving the model's data
accessibility without changing the underlying cart logic.
