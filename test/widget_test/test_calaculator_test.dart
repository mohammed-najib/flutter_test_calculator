import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:test_calculator/controller/calculator.controller.dart';
import 'package:test_calculator/main.dart';
import 'package:test_calculator/views/widgets/button.widget.dart';

void main() {
  group("press number buttons", () {
    testWidgets("shows 1 when button 1 pressed", (widgetTester) async {
      // Setup
      await widgetTester.pumpWidget(const TestCalculatorApp());

      // Execution
      await widgetTester.tap(find.text("1"));
      await widgetTester.pumpAndSettle();

      // Verification
      expect(find.text("1"), findsNWidgets(2));
    });

    testWidgets("shows 2 when button 2 pressed", (widgetTester) async {
      // Setup
      await widgetTester.pumpWidget(const TestCalculatorApp());

      // Execution
      await widgetTester.tap(find.text("2"));
      await widgetTester.pumpAndSettle();

      // Verification
      expect(find.text("2"), findsNWidgets(2));
    });

    testWidgets("shows 3 when button 3 pressed", (widgetTester) async {
      // Setup
      await widgetTester.pumpWidget(const TestCalculatorApp());

      // Execution
      await widgetTester.tap(find.text("3"));
      await widgetTester.pumpAndSettle();

      // Verification
      expect(find.text("3"), findsNWidgets(2));
    });

    testWidgets("shows 4 when button 4 pressed", (widgetTester) async {
      // Setup
      await widgetTester.pumpWidget(const TestCalculatorApp());

      // Execution
      await widgetTester.tap(find.text("4"));
      await widgetTester.pumpAndSettle();

      // Verification
      expect(find.text("4"), findsNWidgets(2));
    });

    testWidgets("shows 5 when button 5 pressed", (widgetTester) async {
      // Setup
      await widgetTester.pumpWidget(const TestCalculatorApp());

      // Execution
      await widgetTester.tap(find.text("5"));
      await widgetTester.pumpAndSettle();

      // Verification
      expect(find.text("5"), findsNWidgets(2));
    });

    testWidgets("shows 6 when button 6 pressed", (widgetTester) async {
      // Setup
      await widgetTester.pumpWidget(const TestCalculatorApp());

      // Execution
      await widgetTester.tap(find.text("6"));
      await widgetTester.pumpAndSettle();

      // Verification
      expect(find.text("6"), findsNWidgets(2));
    });

    testWidgets("shows 7 when button 7 pressed", (widgetTester) async {
      // Setup
      await widgetTester.pumpWidget(const TestCalculatorApp());

      // Execution
      await widgetTester.tap(find.text("7"));
      await widgetTester.pumpAndSettle();

      // Verification
      expect(find.text("7"), findsNWidgets(2));
    });

    testWidgets("shows 8 when button 8 pressed", (widgetTester) async {
      // Setup
      await widgetTester.pumpWidget(const TestCalculatorApp());

      // Execution
      await widgetTester.tap(find.text("8"));
      await widgetTester.pumpAndSettle();

      // Verification
      expect(find.text("8"), findsNWidgets(2));
    });

    testWidgets("shows 9 when button 9 pressed", (widgetTester) async {
      // Setup
      await widgetTester.pumpWidget(const TestCalculatorApp());

      // Execution
      await widgetTester.tap(find.text("9"));
      await widgetTester.pumpAndSettle();

      // Verification
      expect(find.text("9"), findsNWidgets(2));
    });

    testWidgets("shows 0 when button 0 pressed", (widgetTester) async {
      // Setup
      await widgetTester.pumpWidget(const TestCalculatorApp());

      // Execution
      // find text 0 inside elevated button
      // await widgetTester.tap(find.text("0").first);
      final foundWidget = find.byType(ButtonWidget);
      await widgetTester.tap(find.descendant(
        of: foundWidget,
        matching: find.text("0"),
      ));
      await widgetTester.pumpAndSettle();

      // Verification
      expect(find.text("0"), findsNWidgets(2));
    });
  });

  group("press operator buttons", () {
    testWidgets("shows + when button + pressed", (widgetTester) async {
      // Setup
      await widgetTester.pumpWidget(const TestCalculatorApp());

      // Execution
      await widgetTester.tap(find.text("+"));
      await widgetTester.pumpAndSettle();

      // Verification
      expect(find.text("0 + "), findsNWidgets(1));
    });

    testWidgets("shows - when button - pressed", (widgetTester) async {
      // Setup
      await widgetTester.pumpWidget(const TestCalculatorApp());

      // Execution
      await widgetTester.tap(find.text("-"));
      await widgetTester.pumpAndSettle();

      // Verification
      expect(find.text("0 - "), findsNWidgets(1));
    });

    testWidgets("shows * when button * pressed", (widgetTester) async {
      // Setup
      await widgetTester.pumpWidget(const TestCalculatorApp());

      // Execution
      await widgetTester.tap(find.text("*"));
      await widgetTester.pumpAndSettle();

      // Verification
      expect(find.text("0 * "), findsNWidgets(1));
    });

    testWidgets("shows / when button / pressed", (widgetTester) async {
      // Setup
      await widgetTester.pumpWidget(const TestCalculatorApp());

      // Execution
      await widgetTester.tap(find.text("/"));
      await widgetTester.pumpAndSettle();

      // Verification
      expect(find.text("0 / "), findsNWidgets(1));
    });
  });

  group("press = button", () {
    testWidgets("shows 0.00 when button = pressed", (widgetTester) async {
      // Setup
      await widgetTester.pumpWidget(const TestCalculatorApp());

      // Execution
      await widgetTester.tap(find.text("="));
      await widgetTester.pumpAndSettle();

      // Verification
      expect(find.text("0.00"), findsNWidgets(1));
    });

    testWidgets("shows expression with result when button = pressed",
        (widgetTester) async {
      // Setup
      await widgetTester.pumpWidget(const TestCalculatorApp());

      // Execution
      await widgetTester.tap(find.text("="));
      await widgetTester.pump();

      final foundWidget = find.byType(ButtonWidget);
      final expectedWidget = find.descendant(
        of: foundWidget,
        matching: find.text("0 = 0.00"),
      );

      // Verification
      expect(expectedWidget, findsOneWidget);
    });
  });

  testWidgets("shows selected calculation from history in calculation area",
      (widgetTester) async {
    // Setup
    await widgetTester.pumpWidget(const TestCalculatorApp());

    // Execution
    await widgetTester.tap(find.text("="));
    await widgetTester.pump();
    await widgetTester.tap(find.text("0 = 0.00"));
    await widgetTester.pump(const Duration(seconds: 1));

    final foundWidget = find.byType(Consumer<CalculatorController>);
    final expectedWidget = find.descendant(
      of: foundWidget,
      matching: find.text("0"),
    );

    // Verification
    expect(expectedWidget, findsOneWidget);
  });
}
