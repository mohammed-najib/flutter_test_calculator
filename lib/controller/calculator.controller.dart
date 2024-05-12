import 'package:flutter/foundation.dart';

class CalculatorController with ChangeNotifier {
  List<(String, String)> previousCalculationsWithResults = [];
  String displayedValue = "0";

  void numberPressed(String number) {
    if (displayedValue == "0") {
      displayedValue = number;
    } else {
      displayedValue += number;
    }

    notifyListeners();
  }

  void clear() {
    displayedValue = "0";

    notifyListeners();
  }

  void deleteLast() {
    if (displayedValue.length == 1) {
      displayedValue = "0";
    } else {
      // if the last character is a space, remove the last 3 characters
      if (displayedValue[displayedValue.length - 1] == " ") {
        displayedValue = displayedValue.substring(0, displayedValue.length - 3);
      } else {
        displayedValue = displayedValue.substring(0, displayedValue.length - 1);
      }
    }

    notifyListeners();
  }

  void addDecimalPoint() {
    final parts = displayedValue.split(" ");
    // get the last part of the expression
    final lastPart = parts[parts.length - 1];
    if (!lastPart.contains(".")) {
      displayedValue += ".";
    }

    notifyListeners();
  }

  void addPressed() {
    // check if displayedValue already contains any operator of +, -, * or /
    if (!displayedValue.contains(RegExp(r"(\+|-|\*|/)"))) {
      displayedValue += " + ";
    }

    notifyListeners();
  }

  void subtractPressed() {
    if (!displayedValue.contains(RegExp(r"(\+|-|\*|/)"))) {
      displayedValue += " - ";
    }

    notifyListeners();
  }

  void multiplyPressed() {
    if (!displayedValue.contains(RegExp(r"(\+|-|\*|/)"))) {
      displayedValue += " * ";
    }

    notifyListeners();
  }

  void dividePressed() {
    if (!displayedValue.contains(RegExp(r"(\+|-|\*|/)"))) {
      displayedValue += " / ";
    }

    notifyListeners();
  }

  void equalsPressed() {
    final result = _calculate(displayedValue);

    displayedValue = result.toStringAsFixed(2);

    notifyListeners();
  }

  double _calculate(String expression) {
    // split the expression into parts at +, -, * and /
    // final parts = expression.split(RegExp(r"(\+|-|\*|/)"));
    final parts = expression.split(" ");

    var result = double.parse(parts[0]);

    for (var i = 1; i < parts.length; i += 2) {
      final operator = parts[i];
      final operand = double.parse(parts[i + 1]);

      switch (operator) {
        case "+":
          result += operand;
          break;
        case "-":
          result -= operand;
          break;
        case "*":
          result *= operand;
          break;
        case "/":
          result /= operand;
          break;
      }
    }

    previousCalculationsWithResults
        .add((expression, result.toStringAsFixed(2)));

    return result;
  }

  Future<void> setNewDisplayedValue(String newDisplayedValue) async {
    await Future.delayed(const Duration(seconds: 1), () {
      displayedValue = newDisplayedValue;

      notifyListeners();
    });
  }

  double add(double a, double b) => a + b;

  double subtract(double a, double b) => a - b;

  double multiply(double a, double b) => a * b;

  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError("Cannot divide by zero");
    }

    return a / b;
  }

  Future<double> powerOfTwoAsync(double a) async {
    await Future.delayed(const Duration(seconds: 1));
    return a * a;
  }

  Stream<double> piStream() =>
      Stream.fromIterable([3, 3.1, 3.14, 3.141, 3.1415]);
}
