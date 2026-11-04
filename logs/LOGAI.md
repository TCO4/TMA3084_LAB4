
# LOGAI – AI-Assisted Development Record

## Project
TMA3084 – Lab 04: Pizza Store Application

## AI Tool Used
ChatGPT – AI Pair Programming Assistant

## Entry AI-001: Order Summary Screen

### Objective
Generate an Order Summary screen using AI assistance
based on the requirements defined in docs/spec.md.

### Prompt Given
Create a Flutter Order Summary screen in
lib/order_summary.dart.

The screen should:
- Display ordered food item names and quantities.
- Display the total order price in RM.
- Retrieve order information from lib/order.dart.
- Format the total to two decimal places.
- Include a Back button using Navigator.pop(context).
- Use Flutter Material widgets and the existing orange theme.

Do not modify other project files.

### AI-Generated Output
The AI generated the OrderSummary StatelessWidget
using Scaffold, AppBar, Column, ListView and Text widgets.

### Human Review and Modifications
The generated code was reviewed and integrated into
the Flutter project.

Further modifications included:
- Creating a reusable Cart model.
- Connecting the Cart to the Order Summary screen.
- Using AnimatedBuilder to refresh the screen when
  cart contents change.
- Adding an Add to Order button to the food detail screen.
- Displaying item quantities and calculated totals.

### Debugging
An issue occurred because OrderCartItem did not
initially expose name and price getters.

The model was updated to provide these getters,
allowing the Order Summary screen to access the
required information.

### Testing and Validation
- Flutter widget tests passed.
- Cart functionality tests passed.
- Order Summary test verified RM25.00.
- Flutter analyze reported no issues.

### Final Outcome
AI assistance accelerated the development of the
Order Summary screen. The generated implementation
was reviewed, modified and tested before integration.

## Conclusion
AI was used as a pair programming assistant.
Human review, debugging and testing were performed
to ensure the application met the requirements.
