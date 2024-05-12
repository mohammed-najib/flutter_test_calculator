import 'package:flutter_test/flutter_test.dart';

import 'package:test_calculator/controller/calculator.controller.dart';

void main() {
  late CalculatorController calculator;

  // setUpAll(() => print("Running all tests"));

  setUp(() {
    print("Running test");

    calculator = CalculatorController();
  });

  // tearDown(() => print("Test complete"));

  // tearDownAll(() => print("All tests complete"));

  test("calculator creates a non null instance", () {
    // Setup & Execution

    // Verification
    expect(calculator, isNotNull, reason: "calculator should not be null");
  });

  group("calculator add method", () {
    test("returns 4 when adding 2 and 2", () {
      // Setup

      // Execution
      final result = calculator.add(2, 2);

      // Verification
      expect(result, 4, reason: "2 + 2 should be 4");
    });

    test("returns a double number when adding 2 and 2", () {
      // Setup

      // Execution
      final result = calculator.add(2, 2);

      // Verification
      expect(result, isA<double>(), reason: "2 + 2 should be a double number");
    });
  });

  group("calculator subtract method", () {
    test("returns 0 when subtracting 2 from 2", () {
      // Setup

      // Execution
      final result = calculator.subtract(2, 2);

      // Verification
      expect(result, 0, reason: "2 - 2 should be 0");
    });

    test("returns a double number when subtracting 2 from 2", () {
      // Setup

      // Execution
      final result = calculator.subtract(2, 2);

      // Verification
      expect(result, isA<double>(), reason: "2 - 2 should be a double number");
    });
  });

  group("calculator multiply method", () {
    test("returns 4 when multiplying 2 by 2", () {
      // Setup

      // Execution
      final result = calculator.multiply(2, 2);

      // Verification
      expect(result, 4, reason: "2 * 2 should be 4");
    });

    test("returns a double number when multiplying 2 by 2", () {
      // Setup

      // Execution
      final result = calculator.multiply(2, 2);

      // Verification
      expect(result, isA<double>(), reason: "2 * 2 should be a double number");
    });
  });

  group("calculator divide method", () {
    test("returns 1 when dividing 2 by 2", () {
      // Setup

      // Execution
      final result = calculator.divide(2, 2);

      // Verification
      expect(result, 1, reason: "2 / 2 should be 1");
    });

    test("returns a double number when dividing 2 by 2", () {
      // Setup

      // Execution
      final result = calculator.divide(2, 2);

      // Verification
      expect(result, isA<double>(), reason: "2 / 2 should be a double number");
    });

    test("throws ArgumentError when dividing by zero", () {
      // Setup

      // Execution
      result() => calculator.divide(2, 0);

      // Verification
      expect(result, throwsArgumentError,
          reason: "2 / 0 should throw ArgumentError");
    });
  });

  group("calculator powerOfTwoAsync method", () {
    test("returns 4 when calculating the power of 2", () async {
      // Setup

      // Execution
      final result = await calculator.powerOfTwoAsync(2);

      // Verification
      expect(result, 4, reason: "2 * 2 should be 4");
    });

    test("returns a double number when calculating the power of 2", () async {
      // Setup

      // Execution
      final result = await calculator.powerOfTwoAsync(2);

      // Verification
      expect(result, isA<double>(), reason: "2 * 2 should be a double number");
    });
  });

  group("calculator piStream method", () {
    test("returns a stream of pi numbers", () {
      // Setup

      // Execution
      final result = calculator.piStream();

      // Verification
      expect(result, emitsInOrder([3, 3.1, 3.14, 3.141, 3.1415]),
          reason:
              "piStream should emit pi numbers [3, 3.1, 3.14, 3.141, 3.1415]");
    });
  });
}
