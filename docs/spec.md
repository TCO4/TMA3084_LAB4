# Order Summary Screen Specification

## Inputs
- Receive ordered food items from the menu.
- Each item contains a name, quantity, and price.
- Receive the order total from order.dart.

## Output
- Display each item's name and quantity.
- Display the total order price in RM.
- Provide a Back button.

## Rules
- Calculate the total using orderTotal from lib/order.dart.
- Display prices using two decimal places.
- Use Flutter Material widgets.

## Out of Scope
- Payment gateway integration.
- User authentication.
- Online ordering or database storage.

## Check
- The total must display RM 25.00 for the assignment's test order.
- The Back button must return to the previous screen.