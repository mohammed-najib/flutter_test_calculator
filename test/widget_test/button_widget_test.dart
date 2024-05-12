import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_calculator/views/widgets/button.widget.dart';

void main() {
  // late ButtonWidget buttonWidget;

  // setUp(() {
  //   buttonWidget = ButtonWidget(
  //     onPressed: onPressed,
  //     backgroundColor: backgroundColor,
  //     text: text,
  //   );
  // });

  testWidgets("", (widgetTester) async {
    // Setup
    await widgetTester.pumpWidget(ButtonWidget(
      onPressed: () {},
      backgroundColor: Colors.red,
      text: "text",
    ));

    // Execution

    // Verification
  });
}
