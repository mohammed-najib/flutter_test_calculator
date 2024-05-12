import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/calculator.controller.dart';
import 'button.widget.dart';

class ButtonsPanelWidget extends StatelessWidget {
  const ButtonsPanelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ButtonWidget(
              onPressed: () => context.read<CalculatorController>().clear(),
              backgroundColor: Colors.red,
              text: "Clear",
            ),
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().deleteLast(),
              backgroundColor: Colors.red,
              text: "Back",
            ),
          ],
        ),
        Row(
          children: [
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().numberPressed("1"),
              backgroundColor: Colors.blue,
              text: "1",
            ),
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().numberPressed("2"),
              backgroundColor: Colors.blue,
              text: "2",
            ),
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().numberPressed("3"),
              backgroundColor: Colors.blue,
              text: "3",
            ),
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().addPressed(),
              backgroundColor: Colors.blue,
              text: "+",
            )
          ],
        ),
        Row(
          children: [
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().numberPressed("4"),
              backgroundColor: Colors.blue,
              text: "4",
            ),
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().numberPressed("5"),
              backgroundColor: Colors.blue,
              text: "5",
            ),
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().numberPressed("6"),
              backgroundColor: Colors.blue,
              text: "6",
            ),
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().subtractPressed(),
              backgroundColor: Colors.blue,
              text: "-",
            ),
          ],
        ),
        Row(
          children: [
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().numberPressed("7"),
              backgroundColor: Colors.blue,
              text: "7",
            ),
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().numberPressed("8"),
              backgroundColor: Colors.blue,
              text: "8",
            ),
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().numberPressed("9"),
              backgroundColor: Colors.blue,
              text: "9",
            ),
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().multiplyPressed(),
              backgroundColor: Colors.blue,
              text: "*",
            ),
          ],
        ),
        Row(
          children: [
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().numberPressed("0"),
              backgroundColor: Colors.blue,
              text: "0",
            ),
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().addDecimalPoint(),
              backgroundColor: Colors.blue,
              text: ".",
            ),
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().equalsPressed(),
              backgroundColor: Colors.blue,
              text: "=",
            ),
            ButtonWidget(
              onPressed: () =>
                  context.read<CalculatorController>().dividePressed(),
              backgroundColor: Colors.blue,
              text: "/",
            ),
          ],
        ),
      ],
    );
  }
}
