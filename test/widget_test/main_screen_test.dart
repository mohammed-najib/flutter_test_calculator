import 'package:flutter_test/flutter_test.dart';
import 'package:test_calculator/main.dart';
import 'package:test_calculator/views/widgets/buttons_panel.widget.dart';

import 'package:test_calculator/views/widgets/top.widget.dart';

void main() {
  testWidgets("renders a widget of type TopWidget", (widgetTester) async {
    // Setup
    await widgetTester.pumpWidget(const TestCalculatorApp());

    // Execution
    final foundWidget = find.byType(TopWidget);

    // Verification
    expect(foundWidget, findsOneWidget);
  });

  testWidgets("renders a widget of type ButtonsPanelWidget",
      (widgetTester) async {
    // Setup
    await widgetTester.pumpWidget(const TestCalculatorApp());

    // Execution
    final foundWidget = find.byType(ButtonsPanelWidget);

    // Verification
    expect(foundWidget, findsOneWidget);
  });
}
